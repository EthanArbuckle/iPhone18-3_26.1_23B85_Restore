uint64_t PixelBufferUtilsSession::updateCrop(PixelBufferUtilsSession *this, CGRect a2)
{
  if (!*(this + 1))
  {
    NSLog(&cfstr_SDErrorCannotU.isa, a2.origin.x, a2.origin.y, a2.size.width, a2.size.height, "updateCrop", 4351);
    return 0;
  }

  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (CGRectEqualToRect(a2, *(this + 72)))
  {
    return 1;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (CGRectIsEmpty(v14))
  {
    DictionaryRepresentation = 0;
  }

  else
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v15);
  }

  v9 = VTSessionSetProperty(*(this + 1), *MEMORY[0x277CE28B8], DictionaryRepresentation);
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v9)
  {
    NSLog(&cfstr_SDErrorPixelbu.isa, v10, v11, v12, v13, "updateCrop", 4373);
    return 0;
  }

  *(this + 9) = x;
  *(this + 10) = y;
  result = 1;
  *(this + 11) = width;
  *(this + 12) = height;
  return result;
}

uint64_t PixelBufferUtilsSession::copySession(PixelBufferUtilsSession *this, PixelBufferUtilsSession *a2)
{
  if (this)
  {
    operator new();
  }

  NSLog(&cfstr_SDErrorCannotC.isa, a2, "copySession", 4420);
  return 0;
}

uint64_t PixelBufferUtilsTiledView::TileConfig::TileConfig(uint64_t this)
{
  *(this + 8) = 0;
  *this = 0;
  return this;
}

{
  *(this + 8) = 0;
  *this = 0;
  return this;
}

uint64_t PixelBufferUtilsTiledView::TileConfig::TileConfig(uint64_t this, char a2, float a3, float a4)
{
  *this = a4;
  *(this + 4) = a3;
  *(this + 8) = a2;
  return this;
}

{
  *this = a4;
  *(this + 4) = a3;
  *(this + 8) = a2;
  return this;
}

int32x2_t PixelBufferUtilsTiledView::TileConfig::TileConfig(PixelBufferUtilsTiledView::TileConfig *this, int32x2_t *a2)
{
  v2 = a2[1].i8[0];
  result = vrev64_s32(*a2);
  *this = result;
  *(this + 8) = v2;
  return result;
}

{
  v2 = a2[1].i8[0];
  result = vrev64_s32(*a2);
  *this = result;
  *(this + 8) = v2;
  return result;
}

PixelBufferUtils *PixelBufferUtilsTiledView::render(PixelBufferUtilsTiledView *this, __CVBuffer **a2, uint64_t a3, __CVBuffer *a4, __CVBuffer *a5, char *a6)
{
  v6 = *(this + 2);
  v7 = *(this + 4);
  if (v7 * v6 != a3)
  {
    NSLog(&cfstr_SDErrorUnableT.isa, "render", 4480);
    return 0;
  }

  v9 = *(this + 5);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = (a5 | a6) == 0;
  }

  if (!v10)
  {
    NSLog(&cfstr_SDErrorUnableT_0.isa, "render", 4486);
    return 0;
  }

  v11 = MEMORY[0x277CBECE8];
  v12 = MEMORY[0x277CBF3A0];
  if (a4)
  {
    data = *(this + 6);
    if (!data)
    {
      v14 = *(this + 1);
      v15 = *(this + 3);
      pixelBufferOut.data = 0;
      v16 = *MEMORY[0x277CBECE8];
      v17 = a4;
      BufferAttributes = getBufferAttributes();
      v19 = CVPixelBufferCreate(v16, v14, v15, 0x42475241u, BufferAttributes, &pixelBufferOut);
      a4 = v17;
      if (v19)
      {
        data = 0;
      }

      else
      {
        data = pixelBufferOut.data;
      }

      *(this + 6) = data;
    }

    PixelBufferUtils::scaleConvertRotatePixelBuffer(a4, 0, data, *v12, 0, 0, 1);
    v6 = *(this + 2);
    v7 = *(this + 4);
    v9 = *(this + 5);
  }

  v20 = v6 * *(this + 1);
  v21 = v9 + v7 * *(this + 3);
  pixelBufferOut.data = 0;
  v22 = *v11;
  v23 = getBufferAttributes();
  allocator = v22;
  v60 = v20;
  if (CVPixelBufferCreate(v22, v20, v21, 0x42475241u, v23, &pixelBufferOut))
  {
    v24 = 0;
  }

  else
  {
    v24 = pixelBufferOut.data;
  }

  CVPixelBufferLockBaseAddress(v24, 0);
  memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
  v62 = v24;
  PixelBufferUtils::asVImageBuffer(v24, *v12, &pixelBufferOut);
  v25 = *(this + 5);
  if (v25 && pixelBufferOut.rowBytes * v25 >= 4)
  {
    memset_pattern16(pixelBufferOut.data, &unk_2247A54A0, (pixelBufferOut.rowBytes * v25) & 0xFFFFFFFFFFFFFFFCLL);
  }

  v26 = v25 * 0.15;
  v61 = (v25 * 0.8);
  v27 = *(this + 2);
  v28 = *(this + 4);
  if (v28 * v27)
  {
    v29 = 0;
    v30 = 1;
    v31 = pixelBufferOut.data;
    rowBytes = pixelBufferOut.rowBytes;
    do
    {
      v33 = a2[v29];
      if (v33)
      {
        Width = CVPixelBufferGetWidth(a2[v29]);
        Height = CVPixelBufferGetHeight(v33);
        v36 = *(this + 2);
        v37 = *(this + 3);
        v38 = *(this + 1);
        v39 = v29 / v36;
        v40 = v29 % v36 * v38;
        v41 = *(this + 5) + v39 * v37;
        v42 = v37;
        v43 = Height;
        v44 = v37 / Height;
        v45 = v38;
        v46 = Width;
        v47 = v38 / Width;
        if (v44 != v47)
        {
          if (v44 < v47)
          {
            v40 += (v38 - ((v45 * v46) / v43)) >> 1;
            v38 = ((v45 * v46) / v43);
          }

          else
          {
            v41 += (v37 - ((v42 * v43) / v46)) >> 1;
            v37 = ((v42 * v43) / v46);
          }
        }

        texture = 0;
        CVPixelBufferCreateWithBytes(allocator, v38, v37, 0x42475241u, &v31[4 * v40 + rowBytes * v41], rowBytes, 0, 0, 0, &texture);
        v48 = *this + 12 * v29;
        v49 = *(v48 + 8);
        v50 = *v48;
        v51 = *(v48 + 4);
        PixelFormatType = CVPixelBufferGetPixelFormatType(v33);
        v71.width = v38;
        v71.height = v37;
        CroppedAndScaledPixelBuffer = PixelBufferUtils::createCroppedAndScaledPixelBuffer(v33, 0, *v12, v71);
        v55 = CroppedAndScaledPixelBuffer;
        if (PixelFormatType == 1717855600 || PixelFormatType == 1751411059 || PixelFormatType == 1751410032)
        {
          if (!PixelBufferUtils::colorizedDepthPixelBuffer(CroppedAndScaledPixelBuffer, 0, v49, v51, v50, 0, texture, v54))
          {
            if (v49)
            {
              LODWORD(v56) = 0.5;
              if ((PixelBufferUtils::alphaBlend(*(this + 6), texture, &texture, v56, 1) & 1) == 0)
              {
                NSLog(&cfstr_SDErrorFailedC.isa, "render", 4582);
              }
            }
          }
        }

        else
        {
          PixelBufferUtils::convertPixelBufferFormat(CroppedAndScaledPixelBuffer, texture, 0);
        }

        CVPixelBufferRelease(v55);
        CVPixelBufferRelease(texture);
        v27 = *(this + 2);
        v28 = *(this + 4);
      }

      v29 = v30++;
    }

    while (v28 * v27 > v29);
  }

  v58 = v26;
  v57 = v62;
  if (a5)
  {
    v69.x = v58;
    v69.y = (*(this + 5) - v58);
    PixelBufferUtils::addTextToPixelBuffer(v62, a5, v61, v69);
  }

  if (a6)
  {
    v70.x = v60 - v58 + (strlen(a6) * v61) * -0.6;
    v70.y = (*(this + 5) - v58);
    PixelBufferUtils::addTextToPixelBuffer(v62, a6, v61, v70);
  }

  CVPixelBufferUnlockBaseAddress(v62, 0);
  return v57;
}

void PixelBufferUtilsTiledView::~PixelBufferUtilsTiledView(CVPixelBufferRef *this)
{
  CVPixelBufferRelease(this[6]);
  if (*this)
  {
    MEMORY[0x22AA53170](*this, 0x1000C8005A209FELL);
  }
}

{
  CVPixelBufferRelease(this[6]);
  if (*this)
  {
    MEMORY[0x22AA53170](*this, 0x1000C8005A209FELL);
  }
}

CVPixelBufferPoolRef PixelBufferUtils::createPixelBufferPool(PixelBufferUtils *this, CGSize a2, uint64_t a3)
{
  height = a2.height;
  width = a2.width;
  v16[6] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CC4D60];
  v15[0] = *MEMORY[0x277CC4DE8];
  v15[1] = v6;
  v16[0] = MEMORY[0x277CBEC10];
  v16[1] = &unk_2838110C8;
  v15[2] = *MEMORY[0x277CC4E30];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:this];
  v16[2] = v7;
  v15[3] = *MEMORY[0x277CC4EC8];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:width];
  v16[3] = v8;
  v15[4] = *MEMORY[0x277CC4DD8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:height];
  v16[4] = v9;
  v15[5] = *MEMORY[0x277CC4E50];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v16[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:6];

  poolOut = 0;
  v12 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v11, &poolOut);
  CFRelease(v11);
  if (!v12)
  {
    return poolOut;
  }

  NSLog(&cfstr_SDErrorFailedC_0.isa, "createPixelBufferPool", 4632, v12);
  return 0;
}

void peridot::PeridotDXP::PeridotDXP(peridot::PeridotDXP *this)
{
  v2 = this + 168432;
  v3 = this + 136984;
  v4 = this + 105360;
  v5 = this + 80224;
  v6 = this + 42464;
  *this = 257;
  *(this + 2) = 0;
  peridot::PeridotDXPCalib::PeridotDXPCalib((this + 16));
  *v6 = 257;
  v6[2] = 0;
  *(this + 5405) = 0;
  *(this + 2703) = 0u;
  *(v6 + 402) = 257;
  v6[806] = 0;
  *(this + 43272) = 0u;
  *(this + 43288) = 0u;
  *(this + 43304) = 0u;
  *(this + 2708) = 0u;
  *(this + 2709) = 0u;
  *(this + 2710) = 0u;
  *(this + 2711) = 0u;
  *(this + 2712) = 0u;
  *(this + 2713) = 0u;
  *(this + 2714) = 0u;
  *(this + 2715) = 0u;
  *(this + 2716) = 0u;
  *(this + 43528) = 0u;
  *(this + 43544) = 0u;
  *(this + 43512) = 0u;
  *(this + 4933) = 0u;
  *(this + 4934) = 0u;
  *(this + 4935) = 0u;
  *(this + 4987) = 0u;
  *(this + 4988) = 0u;
  *(this + 4989) = 0u;
  *(this + 4990) = 0u;
  *(this + 4991) = 0u;
  *(this + 4992) = 0u;
  *(this + 4993) = 0u;
  *(this + 4994) = 0u;
  *(this + 4995) = 0u;
  *(this + 4996) = 0u;
  *(this + 4997) = 0u;
  *(this + 4998) = 0u;
  *(this + 4999) = 0u;
  *(this + 5000) = 0u;
  *(this + 5001) = 0u;
  *(this + 5002) = 0u;
  *(this + 5003) = 0u;
  *(this + 5004) = 0u;
  *(this + 5005) = 0u;
  *(this + 5006) = 0u;
  *(this + 5007) = 0u;
  *(this + 5008) = 0u;
  *(this + 5009) = 0u;
  *(this + 5010) = 0u;
  *(this + 5011) = 0u;
  *(this + 5012) = 0u;
  *(this + 5013) = 0u;
  *v5 = 257;
  v5[2] = 0;
  *(v5 + 1) = &unk_283809EC8;
  *(v5 + 5) = 0;
  *(this + 5015) = 0u;
  *(this + 80256) = 0;
  *(v5 + 12) = &unk_283809E68;
  *(this + 80328) = 0u;
  *(this + 80344) = 0;
  *(v5 + 16) = 0;
  *(v5 + 17) = &unk_283809E68;
  *(this + 5023) = 0u;
  *(this + 80384) = 0;
  *(v5 + 21) = 0;
  *(v5 + 22) = &unk_283809E68;
  *(v5 + 26) = 0;
  *(this + 80408) = 0u;
  *(this + 80424) = 0;
  *(v5 + 28) = &unk_283809E68;
  *(this + 80456) = 0u;
  *(this + 80472) = 0;
  *(v5 + 32) = 0;
  *(v5 + 33) = &unk_283809E68;
  *(v5 + 37) = 0;
  *(this + 5031) = 0u;
  *(this + 80512) = 0;
  *(this + 10069) = 0;
  *(this + 80536) = 0u;
  *(v5 + 44) = 1;
  v5[360] = 0;
  *(v5 + 46) = 0;
  *(v5 + 42) = &unk_28380A0A8;
  *(v5 + 43) = 0;
  *(this + 5047) = 0u;
  *(this + 5048) = 0u;
  *(this + 5049) = 0u;
  *(this + 5050) = 0u;
  *(this + 5051) = 0u;
  *(this + 5052) = 0u;
  peridot::PeridotPreProcessOutput::PeridotPreProcessOutput((this + 91000));
  *v4 = 257;
  *(v4 + 16) = 0;
  v4[2] = 0;
  *(v4 + 11) = xmmword_2247A4B50;
  *(v4 + 136) = 0u;
  *(v4 + 24) = 0x3F00000041100000;
  *(this + 13227) = 0;
  *(this + 6614) = 0u;
  *(this + 105560) = 0u;
  *(this + 105576) = 0u;
  *(this + 105592) = 0u;
  *(this + 105608) = 0u;
  *(this + 105624) = 0u;
  *(this + 105640) = 0u;
  *(this + 105656) = 0u;
  *(this + 105672) = 0u;
  *(this + 105688) = 0u;
  *(this + 6607) = 0u;
  *(this + 6608) = 0u;
  *(this + 6609) = 0u;
  *(this + 6610) = 0u;
  *(this + 6611) = 0u;
  *(this + 6612) = 0u;
  *(this + 13790) = 0;
  *(this + 6893) = 0u;
  *(this + 6894) = 0u;
  *(this + 6891) = 0u;
  *(this + 6892) = 0u;
  *(this + 136824) = 0u;
  *(this + 136840) = 0u;
  *(this + 136856) = 0u;
  *(this + 136872) = 0u;
  *(this + 136888) = 0u;
  *(this + 136904) = 0u;
  *(this + 136920) = 0u;
  *(this + 136936) = 0u;
  *(this + 136952) = 0u;
  *v3 = xmmword_2247A4B50;
  *(v3 + 2) = 0x3F00000041100000;
  *(this + 17160) = 0;
  *(this + 8579) = 0u;
  *(this + 8570) = 0u;
  *(this + 8571) = 0u;
  *(this + 8568) = 0u;
  *(this + 8569) = 0u;
  *(this + 8566) = 0u;
  *(this + 8567) = 0u;
  *(this + 8564) = 0u;
  *(this + 8565) = 0u;
  *(this + 8563) = 0u;
  *(this + 137224) = 0u;
  *(this + 137240) = 0u;
  *(this + 137192) = 0u;
  *(this + 137208) = 0u;
  *(this + 137160) = 0u;
  *(this + 137176) = 0u;
  *(this + 17721) = 0;
  *(this + 141736) = 0u;
  *(this + 141752) = 0u;
  *(this + 141704) = 0u;
  *(this + 141720) = 0u;
  *(this + 10524) = 0u;
  *(this + 10525) = 0u;
  *(this + 10522) = 0u;
  *(this + 10523) = 0u;
  *(this + 10520) = 0u;
  *(this + 10521) = 0u;
  *(this + 10518) = 0u;
  *(this + 10519) = 0u;
  *(this + 10517) = 0u;
  *v2 = xmmword_2247A4B60;
  *(v2 + 4) = 1092616192;
  *(v2 + 6) = 0;
  v2[56] = 1;
  *(v2 + 9) = off_283809F88;
  *(v2 + 11) = 64;
  operator new[]();
}

void sub_22473FAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, peridot::PeridotDxpMacro *a11, peridot::PeridotDXPPreProcessor *a12, peridot::PeridotDxpMacro *a13, void **a14)
{
  v31 = v17;
  *v16 = off_283809F88;
  v23 = v16[1];
  if (v23)
  {
    MEMORY[0x22AA53170](v23, 0x1000C8052888210);
  }

  v16[2] = 0;
  if (v21 != v20)
  {
    v25 = v22;
    v26 = v22;
    do
    {
      v27 = v26 + v21;
      *(v26 + v21 - 24) = off_283809F88;
      v28 = *(v26 + v21 - 16);
      if (v28)
      {
        MEMORY[0x22AA53170](v28, 0x1000C8052888210);
      }

      *(v27 - 8) = 0;
      *(v27 - 48) = off_283809F88;
      v29 = *(v27 - 40);
      if (v29)
      {
        MEMORY[0x22AA53170](v29, 0x1000C8052888210);
      }

      *(v26 + v21 - 32) = 0;
      v20 += 48;
      v26 -= 48;
      v25 -= 48;
    }

    while (v21 != v20);
  }

  peridot::PeridotDxpMacro::~PeridotDxpMacro(v31);
  peridot::PeridotDxpMacro::~PeridotDxpMacro(a13);
  v24 = *a14;
  if (*a14)
  {
    *(v19 + 136) = v24;
    operator delete(v24);
  }

  peridot::PeridotPreProcessOutput::~PeridotPreProcessOutput((v22 + 91000));
  peridot::PeridotDxpDetector::~PeridotDxpDetector(v15);
  peridot::PeridotDXPPreProcessor::~PeridotDXPPreProcessor(v14);
  peridot::PeridotDXPCalib::~PeridotDXPCalib((v22 + 16));
  _Unwind_Resume(a1);
}

void peridot::PeridotPreProcessOutput::~PeridotPreProcessOutput(peridot::PeridotPreProcessOutput *this)
{
  v2 = this + 13288;
  v3 = this + 9192;
  v4 = this + 5096;
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1664);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1689);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1714);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1739);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1764);
  v2[1024] = 0;
  *(this + 895) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 14112));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 13912));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 13712));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 13512));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 13312));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1536);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1561);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1586);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1611);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1636);
  *v2 = 0;
  *(this + 831) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 13088));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 12888));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 12688));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 12488));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 12288));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1408);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1433);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1458);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1483);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1508);
  v3[3072] = 0;
  *(this + 767) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 12064));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 11864));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 11664));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 11464));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 11264));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1280);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1305);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1330);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1355);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1380);
  v3[2048] = 0;
  *(this + 703) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 11040));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 10840));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 10640));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 10440));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 10240));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1152);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1177);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1202);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1227);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1252);
  v3[1024] = 0;
  *(this + 639) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 10016));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 9816));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 9616));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 9416));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 9216));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1024);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1049);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1074);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1099);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 1124);
  *v3 = 0;
  *(this + 575) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 8992));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 8792));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 8592));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 8392));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 0x2000));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 896);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 921);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 946);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 971);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 996);
  v4[3072] = 0;
  *(this + 511) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 7968));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 7768));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 7568));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 7368));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 7168));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 768);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 793);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 818);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 843);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 868);
  v4[2048] = 0;
  *(this + 447) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 6944));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 6744));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 6544));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 6344));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 6144));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 640);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 665);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 690);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 715);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 740);
  v4[1024] = 0;
  *(this + 383) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 5920));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 5720));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 5520));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 5320));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 5120));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 512);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 537);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 562);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 587);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 612);
  *v4 = 0;
  *(this + 319) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 4896));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 4696));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 4496));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 4296));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 4096));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 384);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 409);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 434);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 459);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 484);
  *(this + 4072) = 0;
  *(this + 255) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 3872));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 3672));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 3472));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 3272));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 3072));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 256);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 281);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 306);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 331);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 356);
  *(this + 3048) = 0;
  *(this + 191) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 2848));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 2648));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 2448));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 2248));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 2048));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 128);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 153);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 178);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 203);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 228);
  *(this + 2024) = 0;
  *(this + 127) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 1824));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 1624));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 1424));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 1224));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 1024));
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 25);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 50);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 75);
  peridot::PeridotPreProcessOutput::PreProcessorOut::destroy(this + 100);
  *(this + 1000) = 0;
  *(this + 63) = 0u;
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 800));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 600));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 400));
  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut((this + 200));

  peridot::PeridotPreProcessOutput::PreProcessorOut::~PreProcessorOut(this);
}

void peridot::PeridotDXP::~PeridotDXP(peridot::PeridotDXP *this)
{
  v2 = this + 168480;
  v3 = *(this + 21102);
  if (v3)
  {
    *(v2 + 43) = v3;
    operator delete(v3);
  }

  v4 = *(v2 + 39);
  if (v4)
  {
    *(v2 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(v2 + 36);
  if (v5)
  {
    *(v2 + 37) = v5;
    operator delete(v5);
  }

  v6 = *(v2 + 33);
  if (v6)
  {
    *(v2 + 34) = v6;
    operator delete(v6);
  }

  v7 = *(v2 + 30);
  if (v7)
  {
    v8 = *(v2 + 31);
    v9 = *(v2 + 30);
    if (v8 != v7)
    {
      v10 = *(v2 + 31);
      do
      {
        v12 = *(v10 - 3);
        v10 -= 3;
        v11 = v12;
        if (v12)
        {
          v13 = *(v8 - 2);
          v14 = v11;
          if (v13 != v11)
          {
            v15 = v13 - 24;
            v16 = v13 - 24;
            v17 = v13 - 24;
            do
            {
              v18 = *v17;
              v17 -= 24;
              (*v18)(v16);
              v15 -= 24;
              v19 = v16 == v11;
              v16 = v17;
            }

            while (!v19);
            v14 = *v10;
          }

          *(v8 - 2) = v11;
          operator delete(v14);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(v2 + 30);
    }

    *(v2 + 31) = v7;
    operator delete(v9);
  }

  v20 = *(v2 + 27);
  if (v20)
  {
    v21 = *(v2 + 28);
    v22 = *(v2 + 27);
    if (v21 != v20)
    {
      v23 = v21 - 3;
      v24 = v21 - 3;
      v25 = v21 - 3;
      do
      {
        v26 = *v25;
        v25 -= 3;
        (*v26)(v24);
        v23 -= 3;
        v19 = v24 == v20;
        v24 = v25;
      }

      while (!v19);
      v22 = *(v2 + 27);
    }

    *(v2 + 28) = v20;
    operator delete(v22);
  }

  v27 = *(v2 + 24);
  if (v27)
  {
    v28 = *(v2 + 25);
    v29 = *(v2 + 24);
    if (v28 != v27)
    {
      v30 = v28 - 3;
      v31 = v28 - 3;
      v32 = v28 - 3;
      do
      {
        v33 = *v32;
        v32 -= 3;
        (*v33)(v31);
        v30 -= 3;
        v19 = v31 == v27;
        v31 = v32;
      }

      while (!v19);
      v29 = *(v2 + 24);
    }

    *(v2 + 25) = v27;
    operator delete(v29);
  }

  v34 = *(v2 + 21);
  if (v34)
  {
    v35 = *(v2 + 22);
    v36 = *(v2 + 21);
    if (v35 != v34)
    {
      v37 = *(v2 + 22);
      do
      {
        v39 = *(v37 - 3);
        v37 -= 3;
        v38 = v39;
        if (v39)
        {
          v40 = *(v35 - 2);
          v41 = v38;
          if (v40 != v38)
          {
            v42 = v40 - 24;
            v43 = v40 - 24;
            v44 = v40 - 24;
            do
            {
              v45 = *v44;
              v44 -= 24;
              (*v45)(v43);
              v42 -= 24;
              v19 = v43 == v38;
              v43 = v44;
            }

            while (!v19);
            v41 = *v37;
          }

          *(v35 - 2) = v38;
          operator delete(v41);
        }

        v35 = v37;
      }

      while (v37 != v34);
      v36 = *(v2 + 21);
    }

    *(v2 + 22) = v34;
    operator delete(v36);
  }

  *(v2 + 18) = off_283809F88;
  v46 = *(v2 + 19);
  if (v46)
  {
    MEMORY[0x22AA53170](v46, 0x1000C8052888210);
  }

  *(v2 + 20) = 0;
  *(v2 + 15) = off_283809F88;
  v47 = *(v2 + 16);
  if (v47)
  {
    MEMORY[0x22AA53170](v47, 0x1000C8052888210);
  }

  *(v2 + 17) = 0;
  *(v2 + 12) = off_283809F88;
  v48 = *(v2 + 13);
  if (v48)
  {
    MEMORY[0x22AA53170](v48, 0x1000C8052888210);
  }

  *(v2 + 14) = 0;
  *(v2 + 9) = off_283809F88;
  v49 = *(v2 + 10);
  if (v49)
  {
    MEMORY[0x22AA53170](v49, 0x1000C8052888210);
  }

  v50 = (this + 105488);
  *(v2 + 11) = 0;
  *(v2 + 6) = off_283809F88;
  v51 = *(v2 + 7);
  if (v51)
  {
    MEMORY[0x22AA53170](v51, 0x1000C8052888210);
  }

  v52 = (this + 80752);
  *(v2 + 8) = 0;
  *(v2 + 3) = off_283809F88;
  v53 = *(v2 + 4);
  if (v53)
  {
    MEMORY[0x22AA53170](v53, 0x1000C8052888210);
  }

  *(v2 + 5) = 0;

  peridot::PeridotDxpMacro::~PeridotDxpMacro((this + 136984));
  peridot::PeridotDxpMacro::~PeridotDxpMacro((this + 105536));
  v54 = *v50;
  if (*v50)
  {
    *(this + 13187) = v54;
    operator delete(v54);
  }

  peridot::PeridotPreProcessOutput::~PeridotPreProcessOutput((this + 91000));
  v55 = *(this + 10103);
  if (v55)
  {
    *(this + 10104) = v55;
    operator delete(v55);
  }

  v56 = *(this + 10100);
  if (v56)
  {
    *(this + 10101) = v56;
    operator delete(v56);
  }

  v57 = *(this + 10097);
  if (v57)
  {
    *(this + 10098) = v57;
    operator delete(v57);
  }

  v58 = *v52;
  if (*v52)
  {
    *(this + 10095) = v58;
    operator delete(v58);
  }

  peridot::HDUnfoldClass::~HDUnfoldClass((this + 80232));
  peridot::PeridotDXPPreProcessor::~PeridotDXPPreProcessor((this + 42464));
  peridot::PeridotDXPCalib::~PeridotDXPCalib((this + 16));
}

uint64_t peridot::PeridotDXP::findStrayQSPri(float *a1, void *a2, void **a3, unsigned __int8 *a4, float *a5)
{
  v9 = a4[237];
  v10 = a4[238];
  v11 = a4[239];
  v12 = v11 | a4[238] | v9;
  *a5 = 0.0;
  v13 = a4 + 48;
  v14 = a4 + 88;
  v15 = *&a4[4 * v9 + 48];
  v16 = *a3;
  v17 = a1[853];
  v18 = v15 > v17 && *&a4[8 * v9 + 88] == 0;
  if (v18 || (*&v13[4 * v10] > v17 ? (v19 = *&v14[8 * v10] == 0) : (v19 = 0), v19))
  {
    v21 = 1;
  }

  else
  {
    if (*&v14[8 * v11])
    {
      v20 = 1;
    }

    else
    {
      v20 = *&v13[4 * v11] <= v17;
    }

    v21 = !v20;
  }

  v109 = v5;
  if (v12 & v21)
  {
    v22 = 0;
    v23 = 0.0;
    goto LABEL_43;
  }

  v24 = a2[5];
  if (v24 > 0x5C)
  {
    goto LABEL_96;
  }

  v25 = *(*v16 + 8);
  v26 = v24 + 1;
  if (v24)
  {
    v27 = -1;
  }

  else
  {
    v27 = 0;
  }

  v28 = v26 - (v24 != 0);
  if (v28 < 8)
  {
    v29 = 0;
    v30 = 0;
LABEL_27:
    v36 = v24 + v27 - v29 + 1;
    v37 = &v25->f32[v29];
    do
    {
      v38 = *v37++;
      v30.f32[0] = v38 + v30.f32[0];
      --v36;
    }

    while (v36);
    goto LABEL_29;
  }

  v29 = v28 & 0xFFFFFFFFFFFFFFF8;
  v31 = v25 + 1;
  v32 = 0uLL;
  v33 = v28 & 0xFFFFFFFFFFFFFFF8;
  v34 = 0uLL;
  do
  {
    v32 = vaddq_f32(v31[-1], v32);
    v34 = vaddq_f32(*v31, v34);
    v31 += 2;
    v33 -= 8;
  }

  while (v33);
  v35 = vaddq_f32(v34, v32);
  v30 = vpaddq_f32(v35, v35).u64[0];
  v30.f32[0] = vaddv_f32(v30);
  if (v28 != v29)
  {
    goto LABEL_27;
  }

LABEL_29:
  v39 = *(*v16 + 16) - 1;
  if (v39 >= a2[8])
  {
    v39 = a2[8];
  }

  v40 = 0.0;
  if (v24 > v39)
  {
    goto LABEL_42;
  }

  v30.f32[0] = v30.f32[0] / v28;
  if (v26 <= v39 + 1)
  {
    v26 = v39 + 1;
  }

  v41 = v26 - v24;
  if (v41 > 7)
  {
    v43 = vdupq_lane_s32(v30, 0);
    v44 = v41 & 0xFFFFFFFFFFFFFFF8;
    v45 = (v25 + 4 * v24 + 16);
    v46 = 0uLL;
    v47 = v41 & 0xFFFFFFFFFFFFFFF8;
    v48 = 0uLL;
    do
    {
      v46 = vaddq_f32(vsubq_f32(v46, v43), v45[-1]);
      v48 = vaddq_f32(vsubq_f32(v48, v43), *v45);
      v45 += 2;
      v47 -= 8;
    }

    while (v47);
    v49 = vaddq_f32(v48, v46);
    v42 = vaddv_f32(*&vpaddq_f32(v49, v49));
    if (v41 == v44)
    {
      goto LABEL_41;
    }

    v24 += v44;
  }

  else
  {
    v42 = 0.0;
  }

  do
  {
    v42 = (v42 - v30.f32[0]) + v25->f32[v24++];
  }

  while (v24 <= v39);
LABEL_41:
  v40 = v42 * 0.25;
LABEL_42:
  v22 = 1;
  v23 = v40 / a1[866];
LABEL_43:
  v50 = &v14[8 * v9];
  if (v15 > v17 && !*(v50 + 3) || *&v13[4 * v10] > v17 && !*&v14[8 * v10 + 24])
  {
    if (v12)
    {
      goto LABEL_48;
    }

LABEL_57:
    v53 = a2[6];
    if (v53 <= 0x5C)
    {
      v54 = *(v16[1] + 8);
      v55 = v53 + 1;
      if (v53)
      {
        v56 = -1;
      }

      else
      {
        v56 = 0;
      }

      v57 = v55 - (v53 != 0);
      if (v57 >= 8)
      {
        v58 = v57 & 0xFFFFFFFFFFFFFFF8;
        v60 = v54 + 1;
        v61 = 0uLL;
        v62 = v57 & 0xFFFFFFFFFFFFFFF8;
        v63 = 0uLL;
        do
        {
          v61 = vaddq_f32(v60[-1], v61);
          v63 = vaddq_f32(*v60, v63);
          v60 += 2;
          v62 -= 8;
        }

        while (v62);
        v64 = vaddq_f32(v63, v61);
        v59 = vpaddq_f32(v64, v64).u64[0];
        v59.f32[0] = vaddv_f32(v59);
        if (v57 == v58)
        {
LABEL_68:
          v68 = *(*v16 + 16) - 1;
          if (v68 >= a2[9])
          {
            v68 = a2[9];
          }

          v69 = 0.0;
          if (v53 > v68)
          {
LABEL_81:
            ++v22;
            v23 = (v69 / a1[867]) + v23;
            if (v15 <= v17)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

          v59.f32[0] = v59.f32[0] / v57;
          if (v55 <= v68 + 1)
          {
            v55 = v68 + 1;
          }

          v70 = v55 - v53;
          if (v70 >= 8)
          {
            v72 = vdupq_lane_s32(v59, 0);
            v73 = v70 & 0xFFFFFFFFFFFFFFF8;
            v74 = (v54 + 4 * v53 + 16);
            v75 = 0uLL;
            v76 = v70 & 0xFFFFFFFFFFFFFFF8;
            v77 = 0uLL;
            do
            {
              v75 = vaddq_f32(vsubq_f32(v75, v72), v74[-1]);
              v77 = vaddq_f32(vsubq_f32(v77, v72), *v74);
              v74 += 2;
              v76 -= 8;
            }

            while (v76);
            v78 = vaddq_f32(v77, v75);
            v71 = vaddv_f32(*&vpaddq_f32(v78, v78));
            if (v70 == v73)
            {
              goto LABEL_80;
            }

            v53 += v73;
          }

          else
          {
            v71 = 0.0;
          }

          do
          {
            v71 = (v71 - v59.f32[0]) + v54->f32[v53++];
          }

          while (v53 <= v68);
LABEL_80:
          v69 = v71 * 0.25;
          goto LABEL_81;
        }
      }

      else
      {
        v58 = 0;
        v59 = 0;
      }

      v65 = v53 + v56 - v58 + 1;
      v66 = &v54->f32[v58];
      do
      {
        v67 = *v66++;
        v59.f32[0] = v67 + v59.f32[0];
        --v65;
      }

      while (v65);
      goto LABEL_68;
    }

LABEL_96:
    peridot_depth_log("Wrong Configuration: strayRisingEdge", v6, v109, v7, v8);
    return 4;
  }

  if (*&v14[8 * v11 + 24])
  {
    v51 = 1;
  }

  else
  {
    v51 = *&v13[4 * v11] <= v17;
  }

  v52 = !v51;
  if ((v12 & v52 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_48:
  if (v15 <= v17)
  {
    goto LABEL_83;
  }

LABEL_82:
  if (!*(v50 + 6))
  {
    goto LABEL_85;
  }

LABEL_83:
  if (*&v13[4 * v10] > v17 && !*&v14[8 * v10 + 48])
  {
LABEL_85:
    if (v12)
    {
      goto LABEL_86;
    }

    goto LABEL_95;
  }

  if (*&v14[8 * v11 + 48])
  {
    v80 = 1;
  }

  else
  {
    v80 = *&v13[4 * v11] <= v17;
  }

  v81 = !v80;
  if (v12 & v81)
  {
LABEL_86:
    if (!v22)
    {
      return 0;
    }

    goto LABEL_121;
  }

LABEL_95:
  v82 = a2[7];
  if (v82 > 0x5C)
  {
    goto LABEL_96;
  }

  v83 = *(v16[2] + 8);
  v84 = v82 + 1;
  if (v82)
  {
    v85 = -1;
  }

  else
  {
    v85 = 0;
  }

  v86 = v84 - (v82 != 0);
  if (v86 < 8)
  {
    v87 = 0;
    v88 = 0;
LABEL_105:
    v94 = v82 + v85 - v87 + 1;
    v95 = &v83->f32[v87];
    do
    {
      v96 = *v95++;
      v88.f32[0] = v96 + v88.f32[0];
      --v94;
    }

    while (v94);
    goto LABEL_107;
  }

  v87 = v86 & 0xFFFFFFFFFFFFFFF8;
  v89 = v83 + 1;
  v90 = 0uLL;
  v91 = v86 & 0xFFFFFFFFFFFFFFF8;
  v92 = 0uLL;
  do
  {
    v90 = vaddq_f32(v89[-1], v90);
    v92 = vaddq_f32(*v89, v92);
    v89 += 2;
    v91 -= 8;
  }

  while (v91);
  v93 = vaddq_f32(v92, v90);
  v88 = vpaddq_f32(v93, v93).u64[0];
  v88.f32[0] = vaddv_f32(v88);
  if (v86 != v87)
  {
    goto LABEL_105;
  }

LABEL_107:
  v97 = *(*v16 + 16) - 1;
  if (v97 >= a2[10])
  {
    v97 = a2[10];
  }

  v98 = 0.0;
  if (v82 > v97)
  {
    goto LABEL_120;
  }

  v88.f32[0] = v88.f32[0] / v86;
  if (v84 <= v97 + 1)
  {
    v84 = v97 + 1;
  }

  v99 = v84 - v82;
  if (v99 >= 8)
  {
    v101 = vdupq_lane_s32(v88, 0);
    v102 = v99 & 0xFFFFFFFFFFFFFFF8;
    v103 = (v83 + 4 * v82 + 16);
    v104 = 0uLL;
    v105 = v99 & 0xFFFFFFFFFFFFFFF8;
    v106 = 0uLL;
    do
    {
      v104 = vaddq_f32(vsubq_f32(v104, v101), v103[-1]);
      v106 = vaddq_f32(vsubq_f32(v106, v101), *v103);
      v103 += 2;
      v105 -= 8;
    }

    while (v105);
    v107 = vaddq_f32(v106, v104);
    v100 = vaddv_f32(*&vpaddq_f32(v107, v107));
    if (v99 == v102)
    {
      goto LABEL_119;
    }

    v82 += v102;
  }

  else
  {
    v100 = 0.0;
  }

  do
  {
    v100 = (v100 - v88.f32[0]) + v83->f32[v82++];
  }

  while (v82 <= v97);
LABEL_119:
  v98 = v100 * 0.25;
LABEL_120:
  ++v22;
  v23 = (v98 / a1[868]) + v23;
LABEL_121:
  result = 0;
  v108 = fmax((v23 / v22), 0.0);
  *a5 = v108;
  return result;
}

uint64_t peridot::PeridotDXP::macroProcess(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, float *a6, float *a7, float *a8, float a9, float a10, double a11, _BYTE *a12, uint64_t a13)
{
  v17 = *&a11;
  v18 = a10;
  v20 = *(a1 + 3512);
  LOBYTE(a10) = *(a1 + 22);
  v21 = LODWORD(a10);
  v22 = *(a1 + 21);
  if (!*(a1 + 21))
  {
    v24 = 0.0;
    goto LABEL_18;
  }

  *&a11 = *(a1 + 20);
  if (v22 <= 7)
  {
    v23 = 0;
    v24 = 0.0;
LABEL_8:
    v33 = v22 - v23;
    v34 = (a1 + 4 * v23 + 3464);
    do
    {
      v35 = *v34++;
      v24 = v24 + (v35 * *&a11);
      --v33;
    }

    while (v33);
    goto LABEL_10;
  }

  v25 = (a1 + 3464);
  v23 = v22 & 0xF8;
  v26 = vdupq_lane_s32(*&a11, 0);
  v27 = 0uLL;
  v28 = v23;
  v29 = 0uLL;
  do
  {
    v30 = *v25;
    v31 = v25[1];
    v25 += 2;
    v27 = vmlaq_f32(v27, v26, v30);
    v29 = vmlaq_f32(v29, v26, v31);
    v28 -= 8;
  }

  while (v28);
  v32 = vaddq_f32(v29, v27);
  v24 = vaddv_f32(*&vpaddq_f32(v32, v32));
  if (v23 != v22)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (*(a1 + 20))
  {
    v36 = 0;
    *&a11 = 1.0 / v24;
    v37 = *(a1 + 168672);
    v38 = vdupq_lane_s32(*&a11, 0);
    v39 = *a3 + 640 * a4;
    v40 = 9280 * *(a1 + 20);
    do
    {
      v41 = 0;
      v42 = *(v37 + 24 * v36 + 8);
      v43 = v42[22];
      do
      {
        _X17 = (v39 + v41);
        __asm
        {
          PRFM            #0, [X17,#0x2580]
          PRFM            #0, [X17,#0x25C0]
          PRFM            #0, [X17,#0x2600]
        }

        if (v41)
        {
          v63 = vmlaq_f32(v42[1], vcvtq_f32_u32(vmovl_u16(_X17[41])), v38);
          *v42 = vmlaq_f32(*v42, vcvtq_f32_u32(vmovl_u16(_X17[40])), v38);
          v42[1] = v63;
          v64 = vmlaq_f32(v42[3], vcvtq_f32_u32(vmovl_u16(_X17[43])), v38);
          v42[2] = vmlaq_f32(v42[2], vcvtq_f32_u32(vmovl_u16(_X17[42])), v38);
          v42[3] = v64;
          v65 = vmlaq_f32(v42[5], vcvtq_f32_u32(vmovl_u16(_X17[45])), v38);
          v42[4] = vmlaq_f32(v42[4], vcvtq_f32_u32(vmovl_u16(_X17[44])), v38);
          v42[5] = v65;
          v66 = vmlaq_f32(v42[7], vcvtq_f32_u32(vmovl_u16(_X17[47])), v38);
          v42[6] = vmlaq_f32(v42[6], vcvtq_f32_u32(vmovl_u16(_X17[46])), v38);
          v42[7] = v66;
          v67 = vmlaq_f32(v42[9], vcvtq_f32_u32(vmovl_u16(_X17[49])), v38);
          v42[8] = vmlaq_f32(v42[8], vcvtq_f32_u32(vmovl_u16(_X17[48])), v38);
          v42[9] = v67;
          v68 = vmlaq_f32(v42[11], vcvtq_f32_u32(vmovl_u16(_X17[51])), v38);
          v42[10] = vmlaq_f32(v42[10], vcvtq_f32_u32(vmovl_u16(_X17[50])), v38);
          v42[11] = v68;
          v69 = vmlaq_f32(v42[13], vcvtq_f32_u32(vmovl_u16(_X17[53])), v38);
          v42[12] = vmlaq_f32(v42[12], vcvtq_f32_u32(vmovl_u16(_X17[52])), v38);
          v42[13] = v69;
          v70 = vmlaq_f32(v42[15], vcvtq_f32_u32(vmovl_u16(_X17[55])), v38);
          v42[14] = vmlaq_f32(v42[14], vcvtq_f32_u32(vmovl_u16(_X17[54])), v38);
          v42[15] = v70;
          v71 = vmlaq_f32(v42[17], vcvtq_f32_u32(vmovl_u16(_X17[57])), v38);
          v42[16] = vmlaq_f32(v42[16], vcvtq_f32_u32(vmovl_u16(_X17[56])), v38);
          v42[17] = v71;
          v72 = vmlaq_f32(v42[19], vcvtq_f32_u32(vmovl_u16(_X17[59])), v38);
          v73 = _X17[61];
          v74 = vmovl_u16(_X17[60]);
          v42[18] = vmlaq_f32(v42[18], vcvtq_f32_u32(vmovl_u16(_X17[58])), v38);
          v42[19] = v72;
          v75 = vmlaq_f32(v42[21], vcvtq_f32_u32(vmovl_u16(v73)), v38);
          v43 = vmlaq_f32(v43, vcvtq_f32_u32(vmovl_u16(_X17[62])), v38);
          v42[20] = vmlaq_f32(v42[20], vcvtq_f32_u32(v74), v38);
          v42[21] = v75;
        }

        else
        {
          v44 = *_X17[40].i8;
          v45 = *_X17[42].i8;
          *v42 = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v44.i8)), *&a11);
          v42[1] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v44)), *&a11);
          v42[2] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v45.i8)), *&a11);
          v42[3] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v45)), *&a11);
          v46 = *_X17[44].i8;
          v47 = *_X17[46].i8;
          v42[4] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v46.i8)), *&a11);
          v42[5] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v46)), *&a11);
          v42[6] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v47.i8)), *&a11);
          v42[7] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v47)), *&a11);
          v48 = *_X17[48].i8;
          v49 = *_X17[50].i8;
          v42[8] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v48.i8)), *&a11);
          v42[9] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v48)), *&a11);
          v42[10] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v49.i8)), *&a11);
          v42[11] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v49)), *&a11);
          v50 = *_X17[52].i8;
          v51 = *_X17[54].i8;
          v42[12] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v50.i8)), *&a11);
          v42[13] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v50)), *&a11);
          v42[14] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v51.i8)), *&a11);
          v42[15] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v51)), *&a11);
          v52 = *_X17[56].i8;
          v53 = *_X17[58].i8;
          v42[16] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v52.i8)), *&a11);
          v42[17] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v52)), *&a11);
          v42[18] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v53.i8)), *&a11);
          v42[19] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v53)), *&a11);
          v54 = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(_X17[61])), *&a11);
          v42[20] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(_X17[60])), *&a11);
          v42[21] = v54;
          v43 = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(_X17[62])), *&a11);
        }

        v41 += 9280;
      }

      while (v40 != v41);
      v42[22] = v43;
      ++v36;
      v39 += v40;
    }

    while (v36 != v22);
  }

LABEL_18:
  v76 = v20 * v21;
  v77 = a3[1];
  v90 = 92;
  v88 = 92;
  if (*(a1 + 16) != 2)
  {
    if ((*(a1 + 1) & 1) == 0)
    {
      return peridot::PeridotDXP::macroProcessInner(a1, a2, a1 + 168672, v89, v87, v86, a4, v24, v76, a9, v18, v17, 0, a6, a7, a8, a12, a13 + 192 * a4);
    }

    goto LABEL_27;
  }

  if (*(a1 + 1))
  {
    v78 = 1.0 / v76;
    v79 = 0;
    v80 = (v77 + 640 * a4);
    if (a5)
    {
      v81 = v80 + 40;
      do
      {
        *&v89[v79] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(v81[24])), v78);
        v82 = *v81++;
        *&v87[v79] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(v82)), v78);
        v79 += 16;
      }

      while (v79 != 368);
    }

    else
    {
      do
      {
        *&v89[v79] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(v80[88])), v78);
        *&v87[v79] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(v80[40])), v78);
        v79 += 16;
        ++v80;
      }

      while (v79 != 368);
    }

LABEL_27:
    v83 = a1;
    v84 = a2;
    peridot::PeridotDXP::initMacroSpecs(a1, *a3, v77, a3[2], a4, v86, a9);
    a1 = v83;
    a2 = v84;
  }

  return peridot::PeridotDXP::macroProcessInner(a1, a2, a1 + 168672, v89, v87, v86, a4, v24, v76, a9, v18, v17, 0, a6, a7, a8, a12, a13 + 192 * a4);
}

uint64_t peridot::PeridotDXP::initMacroSpecs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v114[68] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 21);
  v8 = *(a1 + 20);
  if (*(a1 + 21) && *(a1 + 20))
  {
    v9 = 0;
    v10 = a2 + 640 * a5 + 920;
    v11 = v114;
    do
    {
      v12 = v11;
      v13 = v10;
      v14 = v8;
      do
      {
        v15 = vdupq_n_s32(*v13);
        v16.i32[0] = *v13;
        v16.i32[1] = *v13 >> 2;
        v16.u64[1] = vshl_u32(*v15.i8, 0xFFFFFFFAFFFFFFFCLL);
        v17 = vcvtq_f32_u32(vsliq_n_s32(v16, vmovl_u16(*(v13 - 6)), 2uLL));
        v18 = vcvtq_f32_u32(vsliq_n_s32(vshlq_u32(v15, xmmword_2247A49C0), vmovl_u16(*(v13 - 4)), 2uLL));
        v12[-2] = v17;
        v12[-1] = v18;
        *v12 = vcvtq_f32_u32(vsliq_n_s32(vshlq_u32(v15, xmmword_2247A49D0), vmovl_u16(*(v13 - 2)), 2uLL));
        v12 += 9;
        v13 += 2320;
        --v14;
      }

      while (v14);
      ++v9;
      v10 += 9280 * v8;
      v11 += 3;
    }

    while (v9 != v7);
  }

  v19 = 0;
  v20 = (a3 + 640 * a5);
  v21 = v20[115].u32[0];
  v22 = (a4 + 640 * a5);
  v23 = v22[115].u32[0];
  v24 = vdupq_n_s32(v21);
  v25.i32[0] = v21;
  v25.i32[1] = v21 >> 2;
  v25.u64[1] = vshl_u32(*v24.i8, 0xFFFFFFFAFFFFFFFCLL);
  v26 = vdupq_n_s32(v23);
  v27.i32[0] = v23;
  v27.i32[1] = v23 >> 2;
  v27.u64[1] = vshl_u32(*v26.i8, 0xFFFFFFFAFFFFFFFCLL);
  v28 = vcvtq_f32_u32(vsliq_n_s32(v25, vmovl_u16(v20[112]), 2uLL));
  v29 = vcvtq_f32_u32(vsliq_n_s32(v27, vmovl_u16(v22[112]), 2uLL));
  v30 = vcvtq_f32_u32(vsliq_n_s32(vshlq_u32(v24, xmmword_2247A49C0), vmovl_u16(v20[113]), 2uLL));
  v113[0] = v28;
  v113[1] = v30;
  v31 = vcvtq_f32_u32(vsliq_n_s32(vshlq_u32(v26, xmmword_2247A49C0), vmovl_u16(v22[113]), 2uLL));
  v112[0] = v29;
  v112[1] = v31;
  v32 = -16;
  v113[2] = vcvtq_f32_u32(vsliq_n_s32(vshlq_u32(v24, xmmword_2247A49D0), vmovl_u16(v20[114]), 2uLL));
  v112[2] = vcvtq_f32_u32(vsliq_n_s32(vshlq_u32(v26, xmmword_2247A49D0), vmovl_u16(v22[114]), 2uLL));
  LOBYTE(v32) = *(a1 + 22);
  *v26.i32 = *(a1 + 3512) * v32;
  v33 = 1.0 / *v26.i32;
  v31.f32[0] = *(a1 + 3464) * v8;
  v34 = v8;
  v35 = *v26.i32 + -1.0;
  v36 = v31.f32[0] + -1.0;
  v37 = v8 & 0xFE;
  v38 = 1.0 / a7;
  v39 = &v113[3 * (~(2 * *(a1 + 168496)) & 2) + 3];
  v40 = 1.0 / v31.f32[0];
  do
  {
    if (!v34)
    {
      v41 = 0.0;
      goto LABEL_9;
    }

    if (v34 == 1)
    {
      v44 = 0;
      v41 = 0.0;
LABEL_22:
      v49 = v34 - v44;
      v50 = 9 * v44;
      do
      {
        v41 = *&v39[v50] + v41;
        v50 += 9;
        --v49;
      }

      while (v49);
      goto LABEL_9;
    }

    v45 = 0.0;
    v46 = v39;
    v47 = v37;
    v48 = 0.0;
    do
    {
      v45 = *v46 + v45;
      v48 = v46[36] + v48;
      v46 += 72;
      v47 -= 2;
    }

    while (v47);
    v41 = v48 + v45;
    v44 = v37;
    if (v34 != v37)
    {
      goto LABEL_22;
    }

LABEL_9:
    if (v36 < v41)
    {
      v41 = v36;
    }

    *&v111[4 * v19 + 128] = -logf(1.0 - (v41 * v40));
    v42 = *(v113 + v19);
    if (v35 < v42)
    {
      v42 = v35;
    }

    *&v111[4 * v19 + 80] = -(logf(1.0 - (v42 * v33)) * v38);
    v43 = *(v112 + v19);
    if (v35 < v43)
    {
      v43 = v35;
    }

    *&v111[4 * v19++ + 32] = -(logf(1.0 - (v43 * v33)) * v38);
    v39 = (v39 + 4);
  }

  while (v19 != 12);
  result = a6;
  if (v34 && v7)
  {
    v52 = 0;
    v106 = v7;
    v53 = 4 * v7;
    v54 = __dst;
    v55 = v109;
    v56 = v108;
    v57 = v34;
    do
    {
      memcpy(v54, &v111[v52 + 128], v53);
      memcpy(v55, &v111[v52 + 80], v53);
      memcpy(v56, &v111[v52 + 32], v53);
      v52 += v53;
      v54 += 12;
      v55 += 12;
      v56 += 12;
      --v57;
    }

    while (v57);
    v58 = v34 >> 1;
    if (v34 >= 2)
    {
      v61 = 0;
      v62 = __dst;
      v59 = v106;
      result = a6;
      v63 = a6;
      do
      {
        v64 = v62;
        v65 = v63;
        v66 = v37;
        do
        {
          v67 = v64[3];
          *v65 = *v64;
          v65[3] = v67;
          v65 += 6;
          v64 += 6;
          v66 -= 2;
        }

        while (v66);
        if (v34 != v37)
        {
          v68 = 6 * v58;
          v69 = v34 - v37;
          do
          {
            v63[v68] = *&v62[v68 * 4];
            v68 += 3;
            --v69;
          }

          while (v69);
        }

        ++v61;
        ++v63;
        v62 += 4;
      }

      while (v61 != v106);
    }

    else
    {
      v59 = v106;
      result = a6;
      if (v106 < 8)
      {
        v60 = 0;
        goto LABEL_43;
      }

      v60 = v106 & 0xF8;
      v70 = v111;
      v71 = (a6 + 16);
      v72 = v60;
      do
      {
        v73 = *v70;
        *(v71 - 1) = *(v70 - 1);
        *v71 = v73;
        v70 += 2;
        v71 += 2;
        v72 -= 8;
      }

      while (v72);
      if (v60 != v106)
      {
LABEL_43:
        v74 = v106 - v60;
        v75 = 4 * v60;
        v76 = (a6 + 4 * v60);
        v77 = &__dst[v75];
        do
        {
          v78 = *v77++;
          *v76++ = v78;
          --v74;
        }

        while (v74);
      }
    }

    if (v34 >= 2)
    {
      v96 = 0;
      v97 = (result + 24);
      v98 = 24 * v58;
      v99 = v109;
      do
      {
        v100 = v97;
        v101 = v37;
        v102 = v99;
        do
        {
          v103 = v102[3];
          *v100 = *v102;
          v100[3] = v103;
          v102 += 6;
          v100 += 6;
          v101 -= 2;
        }

        while (v101);
        if (v34 != v37)
        {
          v104 = v98;
          v105 = v34 - v37;
          do
          {
            *(v97 + v104) = *&v99[v104];
            v104 += 12;
            --v105;
          }

          while (v105);
        }

        ++v96;
        v99 += 4;
        ++v97;
      }

      while (v96 != v59);
    }

    else
    {
      v79 = 0;
      v80 = (result + 24);
      v81 = v109;
      do
      {
        v82 = v81;
        v83 = v80;
        v84 = v34;
        do
        {
          v85 = *v82;
          v82 += 3;
          *v83 = v85;
          v83 += 3;
          --v84;
        }

        while (v84);
        ++v79;
        ++v80;
        ++v81;
      }

      while (v79 != v59);
    }

    v86 = 0;
    v87 = (result + 60);
    v88 = v108;
    while (2)
    {
      if (v34 < 2)
      {
        v89 = 0;
        goto LABEL_57;
      }

      v90 = v87;
      v91 = v88;
      v92 = v37;
      do
      {
        v93 = v91[3];
        *v90 = *v91;
        v90[3] = v93;
        v91 += 6;
        v90 += 6;
        v92 -= 2;
      }

      while (v92);
      v89 = v37;
      if (v34 != v37)
      {
LABEL_57:
        v94 = v34 - v89;
        v95 = 3 * v89;
        do
        {
          v87[v95] = *&v88[v95 * 4];
          v95 += 3;
          --v94;
        }

        while (v94);
      }

      ++v86;
      v88 += 4;
      ++v87;
      if (v86 == v59)
      {
        break;
      }

      continue;
    }
  }

  *(result + 108) = 1;
  return result;
}

uint64_t peridot::PeridotDXP::macroProcessInner(uint64_t a1, uint64_t *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, float a8, float a9, float a10, float a11, float a12, uint64_t a13, float *a14, float *a15, float *a16, _BYTE *a17, uint64_t a18)
{
  v26 = *(a1 + 21);
  v27 = 0.0;
  v28 = 0.0;
  if (*(a1 + 21))
  {
    v29 = a2[12];
    v30 = *(a1 + 21);
    do
    {
      v31 = *v29++;
      v32 = v31;
      if (v31 > v28)
      {
        v28 = v32;
      }

      --v30;
    }

    while (v30);
  }

  v33 = *(a1 + 23);
  v34 = 0.0;
  if (*(a1 + 23))
  {
    v35 = a2[112];
    v36 = a2[87];
    v27 = 0.0;
    do
    {
      v37 = *v35++;
      v38 = v37;
      if (v37 > v34)
      {
        v34 = v38;
      }

      v39 = *v36++;
      v40 = v39;
      if (v39 > v27)
      {
        v27 = v40;
      }

      --v33;
    }

    while (v33);
  }

  if (*(a1 + 21))
  {
    v41 = 0;
    v42 = *a2;
    v43 = *(a1 + 168696);
    v44 = 1.0 / a8;
    do
    {
      v45 = *(*(v42 + 8 * v41) + 8);
      v46 = *(v43 + 24 * v41 + 8);
      if ((v46 - v45) > 0x1F)
      {
        v48 = vmulq_n_f32(v45[1], v44);
        *v46 = vmulq_n_f32(*v45, v44);
        v46[1] = v48;
        v49 = vmulq_n_f32(v45[3], v44);
        v46[2] = vmulq_n_f32(v45[2], v44);
        v46[3] = v49;
        v50 = vmulq_n_f32(v45[5], v44);
        v46[4] = vmulq_n_f32(v45[4], v44);
        v46[5] = v50;
        v51 = vmulq_n_f32(v45[7], v44);
        v46[6] = vmulq_n_f32(v45[6], v44);
        v46[7] = v51;
        v52 = vmulq_n_f32(v45[9], v44);
        v46[8] = vmulq_n_f32(v45[8], v44);
        v46[9] = v52;
        v53 = vmulq_n_f32(v45[11], v44);
        v46[10] = vmulq_n_f32(v45[10], v44);
        v46[11] = v53;
        v54 = vmulq_n_f32(v45[13], v44);
        v46[12] = vmulq_n_f32(v45[12], v44);
        v46[13] = v54;
        v55 = vmulq_n_f32(v45[15], v44);
        v46[14] = vmulq_n_f32(v45[14], v44);
        v46[15] = v55;
        v56 = vmulq_n_f32(v45[17], v44);
        v46[16] = vmulq_n_f32(v45[16], v44);
        v46[17] = v56;
        v57 = vmulq_n_f32(v45[19], v44);
        v46[18] = vmulq_n_f32(v45[18], v44);
        v46[19] = v57;
        v58 = vmulq_n_f32(v45[21], v44);
        v46[20] = vmulq_n_f32(v45[20], v44);
        v46[21] = v58;
        v47 = 88;
      }

      else
      {
        v47 = 0;
      }

      v59 = v47;
      do
      {
        v46->f32[v59] = v45->f32[v59] * v44;
        ++v59;
      }

      while (v59 != 92);
      ++v41;
    }

    while (v41 != v26);
  }

  v60 = 0.0;
  if (*(a1 + 16) == 2 && *(a1 + 1) == 1)
  {
    v152 = 92;
    v148 = 92;
    v61 = *(a1 + 23);
    if (*(a1 + 23))
    {
      v62 = 0;
      v63 = a2[100];
      v64 = a2[75];
      v65 = 0;
      v66 = 1.0 / a9;
      while (1)
      {
        if (v62 <= 0x27)
        {
          v69 = v63;
          v70 = v64;
          v71 = v61;
          do
          {
            v72 = *v69++;
            v73 = *(*(v72 + 8) + 4 * v62);
            v74 = *v70++;
            v75 = *(v74 + 8);
            v76 = v73 * v66;
            *(v149 + v62) = v76;
            v77.f32[0] = *(v75 + 4 * v62) * v66;
            *(&v140 + v62) = v77.i32[0];
            v77.f32[1] = v76;
            v65 = vsub_f32(vadd_f32(v77, v65), __PAIR64__(v149[0], v140));
            --v71;
          }

          while (v71);
          goto LABEL_27;
        }

        if (v61 == 1)
        {
          break;
        }

        v79 = -2;
        do
        {
          v79 += 2;
        }

        while (v79 - (v61 & 0xFE) != -2);
        v78 = v61 & 0xFE;
        if (v78 != v61)
        {
          goto LABEL_37;
        }

        v67 = v79 | 1;
LABEL_26:
        v68 = *(*(v64[v67] + 8) + 4 * v62) * v66;
        *(v149 + v62) = *(*(v63[v67] + 8) + 4 * v62) * v66;
        *(&v140 + v62) = v68;
LABEL_27:
        if (++v62 == 92)
        {
          v81 = a3;
          v82 = vmulq_f64(vcvtq_f64_f32(v65), vdupq_n_s64(0x412E848000000000uLL));
          goto LABEL_42;
        }
      }

      v78 = 0;
LABEL_37:
      v80 = 1 - v78;
      do
      {
        --v80;
      }

      while (v61 + v80 != 1);
      v67 = -v80;
      goto LABEL_26;
    }

    v81 = a3;
    v82 = 0uLL;
LABEL_42:
    v83 = vcvt_f32_f64(vmulq_f64(vrndaq_f64(v82), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL)));
    v84 = vcgt_f32(v83, vdup_lane_s32(v83, 1)).u8[0];
    if (v84)
    {
      v85 = &v140;
    }

    else
    {
      v85 = v149;
    }

    if ((v84 & 1) == 0)
    {
      a5 = a4;
    }

    if (v84)
    {
      v60 = v27;
    }

    else
    {
      v60 = v34;
    }

    *a17 = v84 & 1;
    memcpy(*(**(a1 + 168720) + 8), v85, 0x170uLL);
    memcpy(*(**(a1 + 168648) + 8), a5, 0x170uLL);
    a3 = v81;
  }

  v151 = 0;
  v147 = 0;
  **(a1 + 168744) = a3;
  **(a1 + 168792) = a1 + 168696;
  v87 = *(a18 + 88);
  v88 = peridot::PeridotDxpMacro::runN(a1 + 105536, (a1 + 168744), (a1 + 168792), v87, 0, v149);
  if (!v88)
  {
    if (*(a1 + 1) == 1)
    {
      **(a1 + 168768) = *(a1 + 168648);
      **(a1 + 168816) = *(a1 + 168720);
      v90 = peridot::PeridotDxpMacro::runN(a1 + 136984, (a1 + 168768), (a1 + 168816), v87, 0, &v140);
      if (v90)
      {
        v89 = v90;
        peridot_depth_log_error("macroProcessInner: _objMacroM1.runN failed with error %d", v90);
        return v89;
      }
    }

    else
    {
      memset(v145, 0, sizeof(v145));
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v146 = 0;
      v147 = 1;
      v140 = 1;
    }

    peridot::PeridotDXP::strayEstimation(a1, v149, &v140, a15, a16, a11, a12, a10);
    v137 = 0;
    v138 = 0;
    v139 = 0;
    if (*(a1 + 1) == 1)
    {
      peridot::PeridotDxpMacroSpatial::runPolyFit((a1 + 168432), a6, a7, a14, &v137, 1);
    }

    v91 = *(a18 + 160);
    v92 = 0xCCCCCCCCCCCCCCCDLL * ((*(a18 + 168) - v91) >> 4);
    if (*(a18 + 168) == v91)
    {
      std::vector<peridot::PeridotDepthSpotEcho>::__append(a18 + 160, 1 - v92);
      v91 = *(a18 + 160);
    }

    else if (v92 >= 2)
    {
      *(a18 + 168) = v91 + 80;
    }

    v93 = v138;
    *(v91 + 40) = HIDWORD(v138);
    v94 = v137;
    v95 = v139;
    *(v91 + 8) = HIDWORD(v137);
    *(v91 + 12) = v95;
    *v91 = v94;
    *(v91 + 4) = v93;
    *(v91 + 56) = HIDWORD(v95);
    *(v91 + 20) = v93;
    *(v91 + 48) = 20;
    *(v91 + 44) = 2143289344;
    *(v91 + 36) = 2143289344;
    *(v91 + 60) = 0;
    if (v151)
    {
      for (i = 0; i < v151; ++i)
      {
        v149[i] += 12;
        v97 = v151;
      }

      if (v147)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v97 = 0;
      if (v147)
      {
LABEL_68:
        for (j = 0; j < v147; ++j)
        {
          *(&v140 + j) += 14;
          v99 = v147;
        }

LABEL_73:
        v100 = *(a18 + 96);
        v101 = 0xCCCCCCCCCCCCCCCDLL * ((*(a18 + 104) - v100) >> 4);
        if (v97 <= v101)
        {
          if (v97 < v101)
          {
            *(a18 + 104) = v100 + 80 * v97;
          }

          if (!v97)
          {
LABEL_80:
            v109 = *(a18 + 128);
            v110 = 0xCCCCCCCCCCCCCCCDLL * ((*(a18 + 136) - v109) >> 4);
            if (v99 <= v110)
            {
              if (v99 < v110)
              {
                *(a18 + 136) = v109 + 80 * v99;
              }

              if (!v99)
              {
LABEL_87:
                v118 = *(a18 + 96);
                v119 = *(a18 + 104) - v118;
                if (!v119)
                {
                  goto LABEL_98;
                }

                v120 = 0xCCCCCCCCCCCCCCCDLL * (v119 >> 4);
                if (v120 <= 1)
                {
                  v121 = 1;
                }

                else
                {
                  v121 = 0xCCCCCCCCCCCCCCCDLL * (v119 >> 4);
                }

                if (v120 > 1)
                {
                  v122 = v121 & 0xFFFFFFFFFFFFFFFELL;
                  v123 = (v118 + 108);
                  v124 = v121 & 0xFFFFFFFFFFFFFFFELL;
                  do
                  {
                    *(v123 - 20) = 0;
                    *v123 = 0;
                    v123 += 40;
                    v124 -= 2;
                  }

                  while (v124);
                  if (v120 == v122)
                  {
LABEL_98:
                    v127 = *(a18 + 128);
                    v128 = *(a18 + 136) - v127;
                    if (v128)
                    {
                      v129 = 0xCCCCCCCCCCCCCCCDLL * (v128 >> 4);
                      if (v129 <= 1)
                      {
                        v130 = 1;
                      }

                      else
                      {
                        v130 = 0xCCCCCCCCCCCCCCCDLL * (v128 >> 4);
                      }

                      if (v129 > 1)
                      {
                        v131 = v130 & 0xFFFFFFFFFFFFFFFELL;
                        v132 = (v127 + 108);
                        v133 = v130 & 0xFFFFFFFFFFFFFFFELL;
                        do
                        {
                          *(v132 - 20) = 0;
                          *v132 = 0;
                          v132 += 40;
                          v133 -= 2;
                        }

                        while (v133);
                        if (v129 == v131)
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v131 = 0;
                      }

                      v134 = v130 - v131;
                      v135 = (v127 + 80 * v131 + 28);
                      do
                      {
                        *v135 = 0;
                        v135 += 20;
                        --v134;
                      }

                      while (v134);
                    }

                    return 0;
                  }
                }

                else
                {
                  v122 = 0;
                }

                v125 = v121 - v122;
                v126 = (v118 + 80 * v122 + 28);
                do
                {
                  *v126 = 0;
                  v126 += 20;
                  --v125;
                }

                while (v125);
                goto LABEL_98;
              }
            }

            else
            {
              std::vector<peridot::PeridotDepthSpotEcho>::__append(a18 + 128, v99 - v110);
            }

            v111 = &v140;
            v112 = v145 + 3;
            v113 = *(a18 + 128) + 32;
            do
            {
              v114 = *v112;
              *(v113 - 32) = *(v112 - 15);
              *(v113 - 28) = v114;
              v115 = *(v112 - 9);
              *(v113 + 8) = *(v112 - 12);
              *(v113 + 12) = v115;
              *(v113 - 12) = v112[9];
              v116 = v112[6];
              *(v113 - 24) = *(v112 - 3);
              *(v113 - 20) = v116;
              v117 = *v111++;
              *(v113 + 16) = v117;
              *v113 = v112[21];
              *(v113 + 4) = v60;
              *(v113 + 28) = 0;
              v113 += 80;
              ++v112;
              --v99;
            }

            while (v99);
            goto LABEL_87;
          }
        }

        else
        {
          std::vector<peridot::PeridotDepthSpotEcho>::__append(a18 + 96, v97 - v101);
        }

        v102 = v149;
        v103 = &v150;
        v104 = *(a18 + 96) + 32;
        do
        {
          v105 = *v103;
          *(v104 - 32) = *(v103 - 15);
          *(v104 - 28) = v105;
          v106 = *(v103 - 9);
          *(v104 + 8) = *(v103 - 12);
          *(v104 + 12) = v106;
          *(v104 - 12) = v103[9];
          v107 = v103[6];
          *(v104 - 24) = *(v103 - 3);
          *(v104 - 20) = v107;
          v108 = *v102++;
          *(v104 + 16) = v108;
          *v104 = v103[21];
          *(v104 + 4) = v28;
          *(v104 + 28) = 0;
          v104 += 80;
          ++v103;
          --v97;
        }

        while (v97);
        goto LABEL_80;
      }
    }

    v99 = 0;
    goto LABEL_73;
  }

  v89 = v88;
  peridot_depth_log_error("macroProcessInner: _objMacroHP.runN failed with error %d", v88);
  return v89;
}

float peridot::PeridotDXP::strayEstimation(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float a6, float a7, float a8)
{
  if (*(a1 + 1) == 1)
  {
    v8 = *(a1 + 3408);
    v9 = a3[18];
    v10 = a3[42];
    v11 = a3[27];
    v12 = 0.0;
    if (v11 < 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 1.0;
    }

    if (v8 > v9)
    {
      v13 = 1.0;
    }

    v14 = v10 == 0.0;
    if (v10 <= 0.0)
    {
      v13 = 0.0;
    }

    v15 = v13 * v10;
    if (v14 && v8 <= v9)
    {
      if ((a3[6] - a7) >= *(a1 + 3416))
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }
    }

    v17 = v15 + (v12 * v11);
    *a5 = v17;
    if (v17 == 0.0)
    {
      v18 = a2[42];
      if (v18 != 0.0)
      {
        *a5 = v18 * a8;
      }
    }
  }

  v19 = a2[6] - a6;
  v20 = *(a1 + 3408);
  v21 = a2[18];
  v22 = a2[42];
  v23 = 0.0;
  if (v22 == 0.0 && v20 <= v21)
  {
    v23 = 0.0;
    if (v19 < *(a1 + 3416))
    {
      v23 = 1.0;
    }
  }

  v25 = a2[27];
  v26 = 1.0;
  v27 = a3[42];
  if (v20 <= v21)
  {
    v28 = *(a1 + 3420);
    v29 = *(a1 + 3424);
    v30 = 1.0;
    if (v19 >= v28)
    {
      v31 = v19 <= v29;
    }

    else
    {
      v30 = 0.0;
      v31 = 0;
    }

    v32 = (v19 - v28) / (v29 - v28);
    if (v31)
    {
      v26 = v32;
    }

    else
    {
      v26 = v30;
    }
  }

  if (v25 < 0.0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = 1.0;
  }

  if (v20 > v21)
  {
    v34 = 1.0;
  }

  else
  {
    v34 = v33;
  }

  if (v22 <= 0.0)
  {
    v34 = 0.0;
  }

  v35 = (v34 * v22) + (v23 * v25);
  if (v27 != 0.0 && v35 == 0.0)
  {
    v35 = v27 / a8;
  }

  result = v35 + (v26 * (*a4 - v35));
  *a4 = result;
  return result;
}

void std::vector<peridot::PeridotDepthSpotEcho>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = 80 * ((80 * a2 - 80) / 0x50) + 80;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4) + a2;
    if (v6 > 0x333333333333333)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v5) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x199999999999999)
    {
      v8 = 0x333333333333333;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x333333333333333)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = (16 * ((v4 - *a1) >> 4));
    v11 = 80 * ((80 * a2 - 80) / 0x50) + 80;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void peridot::PeridotDXP::macroProcess_MPDC(uint64_t a1, double a2)
{
  v2 = *(a1 + 21);
  if (*(a1 + 21))
  {
    LOBYTE(a2) = *(a1 + 20);
    *&a2 = LODWORD(a2);
    if (v2 <= 7)
    {
      v3 = 0;
      v4 = 0.0;
LABEL_8:
      v13 = v2 - v3;
      v14 = (a1 + 4 * v3 + 3464);
      do
      {
        v15 = *v14++;
        v4 = v4 + (v15 * *&a2);
        --v13;
      }

      while (v13);
      goto LABEL_10;
    }

    v5 = (a1 + 3464);
    v3 = v2 & 0xF8;
    v6 = vdupq_lane_s32(*&a2, 0);
    v7 = 0uLL;
    v8 = v3;
    v9 = 0uLL;
    do
    {
      v10 = *v5;
      v11 = v5[1];
      v5 += 2;
      v7 = vmlaq_f32(v7, v6, v10);
      v9 = vmlaq_f32(v9, v6, v11);
      v8 -= 8;
    }

    while (v8);
    v12 = vaddq_f32(v9, v7);
    v4 = vaddv_f32(*&vpaddq_f32(v12, v12));
    if (v3 != v2)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  memset(v18, 0, sizeof(v18));
  v16 = v18;
  v17 = 0;
  operator new();
}

void sub_224743260(_Unwind_Exception *a1)
{
  std::vector<std::vector<peridot::RefHistogram>>::~vector[abi:ne200100]((v1 - 176));
  std::vector<peridot::ImgHistogram>::~vector[abi:ne200100]((v1 - 152));
  _Unwind_Resume(a1);
}

void sub_224743290(_Unwind_Exception *a1)
{
  *(v2 - 144) = v1;
  std::__exception_guard_exceptions<std::vector<peridot::ImgHistogram>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&STACK[0x690]);
  _Unwind_Resume(a1);
}

void *std::vector<peridot::ImgHistogram>::__append(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3) < a2)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3) + a2;
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 3);
      if (2 * v5 > v4)
      {
        v4 = 2 * v5;
      }

      if (v5 >= 0x555555555555555)
      {
        v6 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v6 = v4;
      }

      if (v6)
      {
        if (v6 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v7 = (8 * ((v3 - *result) >> 3));
      *v7 = off_283809F88;
      v7[2] = 92;
      operator new[]();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    *v3 = off_283809F88;
    v3[2] = 92;
    operator new[]();
  }

  result[1] = v3;
  return result;
}

void **std::vector<peridot::ImgHistogram>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 24;
      v6 = v3 - 24;
      v7 = v3 - 24;
      do
      {
        v8 = *v7;
        v7 -= 24;
        (*v8)(v6);
        v5 -= 24;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__split_buffer<peridot::ImgHistogram>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void peridot::PeridotDXP::refPixelDetectorEstimator_MPDC(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, int a5)
{
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v15, *(a1 + 20) * *(a1 + 21));
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v14, *(a1 + 20) * *(a1 + 21));
  peridot::PeridotDXP::equalizer_ref_MPDC(a1, a2, *(a1 + 3542), 1, 0, *(a1 + 21), *(a1 + 20), &v15, *(a1 + 3464), &v14);
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v13, *(a1 + 22) * *(a1 + 23));
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v12, *(a1 + 22) * *(a1 + 23));
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v11, *(a1 + 24) * *(a1 + 25));
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&__p, *(a1 + 24) * *(a1 + 25));
  if ((a5 - 1) <= 1)
  {
    operator new();
  }

  peridot::PeridotDXP::refPixelDetectorEstimator_inner(a1, v9, v8, &v14);
}

void sub_224743E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void *);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void *);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  va_copy(va4, va3);
  v19 = va_arg(va4, void *);
  v21 = va_arg(va4, void);
  v22 = va_arg(va4, void);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](va);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](va1);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](va2);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](va3);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](va4);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100]((v5 - 104));
  _Unwind_Resume(a1);
}

void *std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

uint64_t peridot::PeridotDXP::equalizer_ref_MPDC(uint64_t a1, uint64_t **a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t *a8, float a9, uint64_t *a10)
{
  if (!a3)
  {
    peridot_depth_log("PeridotDXP::equalizer_ref (pixelsNum <= 0) not implemented");
    return 1;
  }

  v19 = a7 * a6;
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v58, v19);
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&__p, v19);
  if (a6 && a7)
  {
    v20 = 0;
    v21 = v58;
    v22 = __p;
    v23 = **a2;
    v24 = (*a2)[3];
    v25 = 1.0 / (a3 * a9);
    do
    {
      v26 = 0;
      v27 = v20 * a7;
      do
      {
        v28 = 0;
        v29 = 24 * (v26 + v27);
        v30 = *(v23 + v29 + 8);
        v31 = 48 * (v26 + v27);
        v32 = &v21[v31];
        v33 = *&v21[v31 + 8];
        v34 = &v22[v31];
        v35 = *&v22[v31 + 8];
        v36 = *(v24 + v29 + 8);
        v37 = *(v32 + 4);
        v38 = *(v34 + 4);
        v39 = 0.0;
        v40 = 0.0;
        do
        {
          v41 = *(v30 + v28) * v25;
          *(v33 + v28) = v41;
          v40 = v41 + v40;
          *(v35 + v28) = v40;
          v42 = *(v36 + v28) * v25;
          *(v37 + v28) = v42;
          v39 = v42 + v39;
          *(v38 + v28) = v39;
          v28 += 4;
        }

        while (v28 != 256);
        ++v26;
      }

      while (v26 != a7);
      ++v20;
    }

    while (v20 != a6);
  }

  if (a4 != 1)
  {
    peridot_depth_log("PeridotDXP::equalizer_ref (nBuf != 1) not implemented");
    v43 = __p;
    if (!__p)
    {
      goto LABEL_12;
    }

LABEL_16:
    v46 = v57;
    v47 = v43;
    if (v57 != v43)
    {
      v48 = v57 - 48;
      do
      {
        *(v46 - 3) = off_283809F88;
        v49 = *(v46 - 2);
        if (v49)
        {
          MEMORY[0x22AA53170](v49, 0x1000C8052888210);
        }

        *(v46 - 1) = 0;
        *(v46 - 6) = off_283809F88;
        v50 = *(v46 - 5);
        if (v50)
        {
          MEMORY[0x22AA53170](v50, 0x1000C8052888210);
        }

        *(v46 - 4) = 0;
        v48 -= 48;
        v46 -= 48;
      }

      while (v46 != v43);
      v47 = __p;
    }

    v57 = v43;
    operator delete(v47);
    v44 = v58;
    if (!v58)
    {
      return a4 != 1;
    }

    goto LABEL_25;
  }

  peridot::PeridotDXP::equalizer_ref_inner(a1, &v58, &__p, a6, a7, a8, a10, a9, a5 / (a3 * a9));
  v43 = __p;
  if (__p)
  {
    goto LABEL_16;
  }

LABEL_12:
  v44 = v58;
  if (v58)
  {
LABEL_25:
    v51 = v59;
    v52 = v44;
    if (v59 != v44)
    {
      v53 = v59 - 48;
      do
      {
        *(v51 - 3) = off_283809F88;
        v54 = *(v51 - 2);
        if (v54)
        {
          MEMORY[0x22AA53170](v54, 0x1000C8052888210);
        }

        *(v51 - 1) = 0;
        *(v51 - 6) = off_283809F88;
        v55 = *(v51 - 5);
        if (v55)
        {
          MEMORY[0x22AA53170](v55, 0x1000C8052888210);
        }

        *(v51 - 4) = 0;
        v53 -= 48;
        v51 -= 48;
      }

      while (v51 != v44);
      v52 = v58;
    }

    v59 = v44;
    operator delete(v52);
  }

  return a4 != 1;
}

void sub_2247443DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](&a9);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void peridot::PeridotDXP::refPixelDetectorEstimator_inner(uint64_t a1, double a2, uint64_t a3, uint64_t *a4)
{
  v86 = a1 + 168504;
  v4 = *(a1 + 21);
  if (!*(a1 + 21) || (v5 = *(a1 + 20), !*(a1 + 20)))
  {
LABEL_46:
    operator new();
  }

  v6 = 0;
  v7 = *a4;
  *&a2 = 1.0 / v5;
  v8 = vdupq_lane_s32(*&a2, 0);
LABEL_5:
  v9 = 0;
  v10 = v86 + 48 * v6;
  v11 = *(v10 + 8);
  v12 = *(v10 + 32);
  v13 = v11 + 256;
  v14 = v12 + 256;
  v16 = v11 < v12 + 256 && v12 < v13;
  while (1)
  {
    v51 = v7 + 48 * v6 * v5 + 48 * v9;
    v52 = *(v51 + 8);
    v53 = *(v51 + 32);
    v54 = &v53[16];
    v56 = v11 < &v52[16] && v52 < v13 || v16;
    if (v11 < v54 && v53 < v13)
    {
      v56 = 1;
    }

    if (v12 >= &v52[16] || v52 >= v14)
    {
      v59 = v56;
    }

    else
    {
      v59 = 1;
    }

    if (v12 < v54 && v53 < v14)
    {
      v59 = 1;
    }

    if (v9)
    {
      if (v59)
      {
        for (i = 0; i != 64; ++i)
        {
          *(v11 + i * 4) = *(v11 + i * 4) + (v52->f32[i] * *&a2);
          *(v12 + i * 4) = *(v12 + i * 4) + (v53->f32[i] * *&a2);
        }

        goto LABEL_13;
      }

      v17 = v53[1];
      v18 = *(v12 + 16);
      v19 = vmlaq_f32(*v12, v8, *v53);
      v20 = vmlaq_f32(*(v11 + 16), v8, v52[1]);
      *v11 = vmlaq_f32(*v11, v8, *v52);
      *(v11 + 16) = v20;
      *v12 = v19;
      *(v12 + 16) = vmlaq_f32(v18, v8, v17);
      v21 = v53[3];
      v22 = *(v12 + 48);
      v23 = vmlaq_f32(*(v12 + 32), v8, v53[2]);
      v24 = vmlaq_f32(*(v11 + 48), v8, v52[3]);
      *(v11 + 32) = vmlaq_f32(*(v11 + 32), v8, v52[2]);
      *(v11 + 48) = v24;
      *(v12 + 32) = v23;
      *(v12 + 48) = vmlaq_f32(v22, v8, v21);
      v25 = v53[5];
      v26 = *(v12 + 80);
      v27 = vmlaq_f32(*(v12 + 64), v8, v53[4]);
      v28 = vmlaq_f32(*(v11 + 80), v8, v52[5]);
      *(v11 + 64) = vmlaq_f32(*(v11 + 64), v8, v52[4]);
      *(v11 + 80) = v28;
      *(v12 + 64) = v27;
      *(v12 + 80) = vmlaq_f32(v26, v8, v25);
      v29 = v53[7];
      v30 = *(v12 + 112);
      v31 = vmlaq_f32(*(v12 + 96), v8, v53[6]);
      v32 = vmlaq_f32(*(v11 + 112), v8, v52[7]);
      *(v11 + 96) = vmlaq_f32(*(v11 + 96), v8, v52[6]);
      *(v11 + 112) = v32;
      *(v12 + 96) = v31;
      *(v12 + 112) = vmlaq_f32(v30, v8, v29);
      v33 = v53[9];
      v34 = *(v12 + 144);
      v35 = vmlaq_f32(*(v12 + 128), v8, v53[8]);
      v36 = vmlaq_f32(*(v11 + 144), v8, v52[9]);
      *(v11 + 128) = vmlaq_f32(*(v11 + 128), v8, v52[8]);
      *(v11 + 144) = v36;
      *(v12 + 128) = v35;
      *(v12 + 144) = vmlaq_f32(v34, v8, v33);
      v37 = v53[11];
      v38 = *(v12 + 176);
      v39 = vmlaq_f32(*(v12 + 160), v8, v53[10]);
      v40 = vmlaq_f32(*(v11 + 176), v8, v52[11]);
      *(v11 + 160) = vmlaq_f32(*(v11 + 160), v8, v52[10]);
      *(v11 + 176) = v40;
      *(v12 + 160) = v39;
      *(v12 + 176) = vmlaq_f32(v38, v8, v37);
      v41 = v53[13];
      v42 = *(v12 + 208);
      v43 = vmlaq_f32(*(v12 + 192), v8, v53[12]);
      v44 = vmlaq_f32(*(v11 + 208), v8, v52[13]);
      *(v11 + 192) = vmlaq_f32(*(v11 + 192), v8, v52[12]);
      *(v11 + 208) = v44;
      *(v12 + 192) = v43;
      *(v12 + 208) = vmlaq_f32(v42, v8, v41);
      v45 = v52[15];
      v46 = *(v11 + 240);
      v47 = vmlaq_f32(*(v11 + 224), v8, v52[14]);
      v48 = v53[15];
      v49 = *(v12 + 240);
      *(v12 + 224) = vmlaq_f32(*(v12 + 224), v8, v53[14]);
      v50 = vmlaq_f32(v49, v8, v48);
      *(v11 + 224) = v47;
      *(v11 + 240) = vmlaq_f32(v46, v8, v45);
    }

    else
    {
      if (v59)
      {
        for (j = 0; j != 256; j += 4)
        {
          *(v11 + j) = 0;
          *(v12 + j) = 0;
          *(v11 + j) = *(v11 + j) + (v52->f32[j / 4] * *&a2);
          *(v12 + j) = *(v12 + j) + (v53->f32[j / 4] * *&a2);
        }

        goto LABEL_13;
      }

      v63 = v53[1];
      v64 = vmulq_n_f32(*v53, *&a2);
      v65 = vmulq_n_f32(v52[1], *&a2);
      *v11 = vmulq_n_f32(*v52, *&a2);
      *(v11 + 16) = v65;
      *v12 = v64;
      *(v12 + 16) = vmulq_n_f32(v63, *&a2);
      v66 = v53[3];
      v67 = vmulq_n_f32(v53[2], *&a2);
      v68 = vmulq_n_f32(v52[3], *&a2);
      *(v11 + 32) = vmulq_n_f32(v52[2], *&a2);
      *(v11 + 48) = v68;
      *(v12 + 32) = v67;
      *(v12 + 48) = vmulq_n_f32(v66, *&a2);
      v69 = v53[5];
      v70 = vmulq_n_f32(v53[4], *&a2);
      v71 = vmulq_n_f32(v52[5], *&a2);
      *(v11 + 64) = vmulq_n_f32(v52[4], *&a2);
      *(v11 + 80) = v71;
      *(v12 + 64) = v70;
      *(v12 + 80) = vmulq_n_f32(v69, *&a2);
      v72 = v53[7];
      v73 = vmulq_n_f32(v53[6], *&a2);
      v74 = vmulq_n_f32(v52[7], *&a2);
      *(v11 + 96) = vmulq_n_f32(v52[6], *&a2);
      *(v11 + 112) = v74;
      *(v12 + 96) = v73;
      *(v12 + 112) = vmulq_n_f32(v72, *&a2);
      v75 = v53[9];
      v76 = vmulq_n_f32(v53[8], *&a2);
      v77 = vmulq_n_f32(v52[9], *&a2);
      *(v11 + 128) = vmulq_n_f32(v52[8], *&a2);
      *(v11 + 144) = v77;
      *(v12 + 128) = v76;
      *(v12 + 144) = vmulq_n_f32(v75, *&a2);
      v78 = v53[11];
      v79 = vmulq_n_f32(v53[10], *&a2);
      v80 = vmulq_n_f32(v52[11], *&a2);
      *(v11 + 160) = vmulq_n_f32(v52[10], *&a2);
      *(v11 + 176) = v80;
      *(v12 + 160) = v79;
      *(v12 + 176) = vmulq_n_f32(v78, *&a2);
      v81 = v53[13];
      v82 = vmulq_n_f32(v53[12], *&a2);
      v83 = vmulq_n_f32(v52[13], *&a2);
      *(v11 + 192) = vmulq_n_f32(v52[12], *&a2);
      *(v11 + 208) = v83;
      *(v12 + 192) = v82;
      *(v12 + 208) = vmulq_n_f32(v81, *&a2);
      v84 = v53[15];
      *(v12 + 224) = vmulq_n_f32(v53[14], *&a2);
      v85 = vmulq_n_f32(v52[15], *&a2);
      *(v11 + 224) = vmulq_n_f32(v52[14], *&a2);
      *(v11 + 240) = v85;
      v50 = vmulq_n_f32(v84, *&a2);
    }

    *(v12 + 240) = v50;
LABEL_13:
    if (++v9 == v5)
    {
      if (++v6 == v4)
      {
        goto LABEL_46;
      }

      goto LABEL_5;
    }
  }
}

void sub_22474606C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(a28);
  operator delete(a29);
  operator delete(a30);
  _Unwind_Resume(a1);
}

void **std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 48;
      do
      {
        *(v3 - 3) = off_283809F88;
        v6 = *(v3 - 2);
        if (v6)
        {
          MEMORY[0x22AA53170](v6, 0x1000C8052888210);
        }

        *(v3 - 1) = 0;
        *(v3 - 6) = off_283809F88;
        v7 = *(v3 - 5);
        if (v7)
        {
          MEMORY[0x22AA53170](v7, 0x1000C8052888210);
        }

        *(v3 - 4) = 0;
        v5 -= 48;
        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void peridot::PeridotDXP::getStrayRisingEdge(uint64_t a1, uint64_t a2, const float *a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a4 == 1)
    {
      v4 = 0;
LABEL_7:
      v8 = a4 - v4;
      v9 = &a3[2 * v4 + 1];
      v10 = &v12[v4];
      do
      {
        v11 = *v9;
        *v10 = vcvtas_u32_f32(*(v9 - 1));
        v10[3] = vcvtas_u32_f32(v11);
        v9 += 2;
        ++v10;
        --v8;
      }

      while (v8);
      goto LABEL_9;
    }

    v4 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v5 = v12;
    v6 = a3;
    v7 = a4 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v14 = vld2_f32(v6);
      v6 += 4;
      *v5 = vcvt_u32_f32(vrnda_f32(v14.val[0]));
      *(v5 + 3) = vcvt_u32_f32(vrnda_f32(v14.val[1]));
      v5 += 2;
      v7 -= 2;
    }

    while (v7);
    if (v4 != a4)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  operator new[]();
}

void sub_224746988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a18)
  {
    MEMORY[0x22AA53170]();
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t peridot::PeridotDXP::equalizer_ref_inner(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5, uint64_t *a6, uint64_t *a7, float a8, float a9)
{
  if (a4 && a5)
  {
    v9 = 0;
    v108 = a4;
    v116 = a5;
    v113 = *a7;
    v114 = *a6;
    v111 = *a2;
    v112 = *a3;
    v138 = -a8;
    v10 = *(a1 + 3936);
    v110 = v10 + 256;
    __asm { FMOV            V0.4S, #1.0 }

    v126 = _Q0;
    v127 = vdupq_n_s32(0x42C8000Du);
    v125 = vdupq_n_s32(0x3F7D70A4u);
    v128 = a9;
    do
    {
      v15 = 0;
      v109 = v9;
      v115 = v9 * v116;
      do
      {
        v122 = v15;
        v16 = 48 * (v15 + v115);
        v17 = v114 + v16;
        v18 = v113 + v16;
        v19 = v112 + v16;
        v20 = *(v112 + v16 + 8);
        v21 = v111 + v16;
        v22 = *(v21 + 8);
        v23 = *(v17 + 8);
        v24 = *(v18 + 8);
        v25 = *(v19 + 32);
        v26 = *(v21 + 32);
        v27 = *(v17 + 32);
        v28 = *(v18 + 32);
        v29 = v23 + 256;
        v30 = v24 + 256;
        v31 = v27 + 256;
        v32 = v28 + 256;
        v33 = v20 + 256;
        v34 = v22 + 256;
        v35 = v25 + 256;
        v36 = v26 + 256;
        v38 = v23 < v27 + 256 && v27 < v29;
        v40 = v23 < v32 && v28 < v29;
        v42 = v23 < v33 && v20 < v29;
        v44 = v23 < v34 && v22 < v29;
        v46 = v23 < v110 && v10 < v29;
        v48 = v23 < v35 && v25 < v29;
        v50 = v23 < v36 && v26 < v29;
        v52 = v24 < v31 && v27 < v30;
        v54 = v24 < v32 && v28 < v30;
        v56 = v24 < v33 && v20 < v30;
        v58 = v24 < v34 && v22 < v30;
        v135 = v58;
        v60 = v24 < v110 && v10 < v30;
        v129 = v60;
        v62 = v24 < v35 && v25 < v30;
        v123 = v62;
        v64 = v24 < v36 && v26 < v30;
        v121 = v64;
        v66 = v27 < v32 && v28 < v31;
        v120 = v66;
        v68 = v27 < v33 && v20 < v31;
        v119 = v68;
        v70 = v27 < v34 && v22 < v31;
        v118 = v70;
        v72 = v27 < v110 && v10 < v31;
        v117 = v72;
        v74 = v27 < v35 && v25 < v31;
        v76 = v27 < v36 && v26 < v31;
        v78 = v28 < v33 && v20 < v32;
        v80 = v28 < v34 && v22 < v32;
        v82 = v28 < v110 && v10 < v32;
        v84 = v28 < v35 && v25 < v32;
        v86 = v28 < v36 && v26 < v32;
        v87 = v24 >= v29 || v23 >= v30;
        if (!v87 || v38 || v40 || v42 || v44 || v46 || v48 || v50 || v52 || v54 || v56 || v135 || v129 || v123 || v121 || v120 || v119 || v118 || v117 || v74 || v76 || v78 || v80 || v82 || v84 || v86)
        {
          for (i = 0; i != 256; i += 4)
          {
            v104 = 1.0 / (1.0 - fminf((*(v20 + i) - *(v22 + i)) + (*(v10 + i) * a9), 100.0));
            *(v23 + i) = v104;
            *(v24 + i) = logf(fmaxf(1.0 - fminf(v104 * *(v22 + i), 0.99), 0.0)) * v138;
            v105 = 1.0 / (1.0 - fminf((*(v25 + i) - *(v26 + i)) + (*(v10 + i) * v128), 100.0));
            *(v27 + i) = v105;
            v106 = logf(fmaxf(1.0 - fminf(v105 * *(v26 + i), 0.99), 0.0));
            a9 = v128;
            *(v28 + i) = v106 * v138;
          }
        }

        else
        {
          for (j = 0; j != 256; j += 16)
          {
            v89 = *(v22 + j);
            v124 = vmulq_n_f32(*(v10 + j), a9);
            v90 = vdivq_f32(v126, vsubq_f32(v126, vminnmq_f32(vaddq_f32(v124, vsubq_f32(*(v20 + j), v89)), v127)));
            *(v23 + j) = v90;
            v136 = vmaxnmq_f32(vsubq_f32(v126, vminnmq_f32(vmulq_f32(v90, v89), v125)), 0);
            v130 = logf(v136.f32[1]);
            v91.f32[0] = logf(v136.f32[0]);
            v91.f32[1] = v130;
            v131 = v91;
            v92 = logf(v136.f32[2]);
            v93 = v131;
            v93.f32[2] = v92;
            v132 = v93;
            v94 = logf(v136.f32[3]);
            v95 = v132;
            v95.f32[3] = v94;
            *(v24 + j) = vmulq_n_f32(v95, v138);
            v96 = *(v26 + j);
            v97 = vdivq_f32(v126, vsubq_f32(v126, vminnmq_f32(vaddq_f32(v124, vsubq_f32(*(v25 + j), v96)), v127)));
            *(v27 + j) = v97;
            v137 = vmaxnmq_f32(vsubq_f32(v126, vminnmq_f32(vmulq_f32(v97, v96), v125)), 0);
            v132.i32[0] = logf(v137.f32[1]);
            v98.f32[0] = logf(v137.f32[0]);
            v98.i32[1] = v132.i32[0];
            v133 = v98;
            v99 = logf(v137.f32[2]);
            v100 = v133;
            v100.f32[2] = v99;
            v134 = v100;
            v101 = logf(v137.f32[3]);
            a9 = v128;
            v102 = v134;
            v102.f32[3] = v101;
            *(v28 + j) = vmulq_n_f32(v102, v138);
          }
        }

        v15 = v122 + 1;
      }

      while (v122 + 1 != v116);
      v9 = v109 + 1;
    }

    while (v109 + 1 != v108);
  }

  return 0;
}

void ***std::__exception_guard_exceptions<std::vector<peridot::RefHistogramAllSpots>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v4 - 48;
        do
        {
          *(v4 - 3) = off_283809F88;
          v7 = *(v4 - 2);
          if (v7)
          {
            MEMORY[0x22AA53170](v7, 0x1000C8052888210);
          }

          *(v4 - 1) = 0;
          *(v4 - 6) = off_283809F88;
          v8 = *(v4 - 5);
          if (v8)
          {
            MEMORY[0x22AA53170](v8, 0x1000C8052888210);
          }

          *(v4 - 4) = 0;
          v6 -= 48;
          v4 -= 48;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void peridot::PeridotDXP::refPixelDetectorEstimator(uint64_t a1, uint64_t *a2, int a3)
{
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v13, *(a1 + 20) * *(a1 + 21));
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v12, *(a1 + 20) * *(a1 + 21));
  peridot::PeridotDXP::equalizer_ref(a1, *a2, *(a1 + 3542), 1, 0, *(a1 + 21), *(a1 + 20), &v13, *(a1 + 3464), &v12);
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v11, *(a1 + 22) * *(a1 + 23));
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v10, *(a1 + 22) * *(a1 + 23));
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v9, *(a1 + 24) * *(a1 + 25));
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&__p, *(a1 + 24) * *(a1 + 25));
  if ((a3 - 1) <= 1)
  {
    operator new();
  }

  peridot::PeridotDXP::refPixelDetectorEstimator_inner(a1, v7, v6, &v12);
}

void sub_224747654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void *);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void *);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  va_copy(va4, va3);
  v19 = va_arg(va4, void *);
  v21 = va_arg(va4, void);
  v22 = va_arg(va4, void);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](va);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](va1);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](va2);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](va3);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](va4);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100]((v5 - 104));
  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotDXP::equalizer_ref(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t *a8, float a9, uint64_t *a10)
{
  if (!a3)
  {
    peridot_depth_log("PeridotDXP::equalizer_ref (pixelsNum <= 0) not implemented");
    return 1;
  }

  v19 = a7 * a6;
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&v55, v19);
  std::vector<peridot::RefHistogramAllSpots>::vector[abi:ne200100](&__p, v19);
  if (a6 && a7)
  {
    v21 = 0;
    v22 = v55;
    v23 = __p;
    v24 = 1.0 / (a3 * a9);
    v25 = (a2 + 192);
    do
    {
      v26 = 0;
      v27 = v25;
      do
      {
        v28 = 0;
        v29 = 48 * (v26 + v21 * a7);
        v30 = &v22[v29];
        v31 = *&v22[v29 + 8];
        v32 = &v23[v29];
        v33 = *&v23[v29 + 8];
        v34 = *(v30 + 4);
        v35 = *(v32 + 4);
        v36 = 0.0;
        v37 = v27;
        v38 = 0.0;
        do
        {
          LOWORD(v20) = *(v37 - 64);
          *&v39 = v24 * LODWORD(v20);
          *(v31 + v28) = *&v39;
          v38 = *&v39 + v38;
          *(v33 + v28) = v38;
          LOWORD(v39) = *v37;
          v20 = v24 * v39;
          *(v34 + v28) = v20;
          v36 = v20 + v36;
          *(v35 + v28) = v36;
          v28 += 4;
          ++v37;
        }

        while (v28 != 256);
        ++v26;
        v27 += 4640;
      }

      while (v26 != a7);
      ++v21;
      v25 += 4640 * a7;
    }

    while (v21 != a6);
  }

  if (a4 != 1)
  {
    peridot_depth_log("PeridotDXP::equalizer_ref (nBuf != 1) not implemented");
    v40 = __p;
    if (!__p)
    {
      goto LABEL_12;
    }

LABEL_16:
    v43 = v54;
    v44 = v40;
    if (v54 != v40)
    {
      v45 = v54 - 48;
      do
      {
        *(v43 - 3) = off_283809F88;
        v46 = *(v43 - 2);
        if (v46)
        {
          MEMORY[0x22AA53170](v46, 0x1000C8052888210);
        }

        *(v43 - 1) = 0;
        *(v43 - 6) = off_283809F88;
        v47 = *(v43 - 5);
        if (v47)
        {
          MEMORY[0x22AA53170](v47, 0x1000C8052888210);
        }

        *(v43 - 4) = 0;
        v45 -= 48;
        v43 -= 48;
      }

      while (v43 != v40);
      v44 = __p;
    }

    v54 = v40;
    operator delete(v44);
    v41 = v55;
    if (!v55)
    {
      return a4 != 1;
    }

    goto LABEL_25;
  }

  peridot::PeridotDXP::equalizer_ref_inner(a1, &v55, &__p, a6, a7, a8, a10, a9, a5 / (a3 * a9));
  v40 = __p;
  if (__p)
  {
    goto LABEL_16;
  }

LABEL_12:
  v41 = v55;
  if (v55)
  {
LABEL_25:
    v48 = v56;
    v49 = v41;
    if (v56 != v41)
    {
      v50 = v56 - 48;
      do
      {
        *(v48 - 3) = off_283809F88;
        v51 = *(v48 - 2);
        if (v51)
        {
          MEMORY[0x22AA53170](v51, 0x1000C8052888210);
        }

        *(v48 - 1) = 0;
        *(v48 - 6) = off_283809F88;
        v52 = *(v48 - 5);
        if (v52)
        {
          MEMORY[0x22AA53170](v52, 0x1000C8052888210);
        }

        *(v48 - 4) = 0;
        v50 -= 48;
        v48 -= 48;
      }

      while (v48 != v41);
      v49 = v55;
    }

    v56 = v41;
    operator delete(v49);
  }

  return a4 != 1;
}

void sub_224747A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](&a9);
  std::vector<peridot::RefHistogramAllSpots>::~vector[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotDXP::strayPeakUpdate(float32x2_t *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 120);
  v3 = *(a2 + 124);
  v4 = vaddq_f32(*(a2 + 104), vaddq_f32(*(a2 + 72), *(a2 + 88)));
  v4.f32[0] = vaddv_f32(*&vpaddq_f32(v4, v4));
  v5 = vaddq_f32(*(a2 + 160), vaddq_f32(*(a2 + 128), *(a2 + 144)));
  v4.i32[1] = vaddv_f32(*&vpaddq_f32(v5, v5));
  v2.i32[1] = *(a2 + 176);
  v3.i32[1] = *(a2 + 180);
  *v4.f32 = vmul_f32(vadd_f32(*v4.f32, vadd_f32(v2, v3)), vdup_n_s32(0x3D924925u));
  v6 = vdiv_f32(vbic_s8(*v4.f32, vcltz_f32(*v4.f32)), a1[430]);
  v25 = v6;
  v7 = vaddq_f32(*(a2 + 216), vaddq_f32(*(a2 + 184), *(a2 + 200)));
  v8 = (vaddv_f32(*&vpaddq_f32(v7, v7)) + (*(a2 + 232) + *(a2 + 236))) * 0.071429;
  v9 = 0.0;
  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  v10 = v8 / a1[431].f32[0];
  v26 = v10;
  __asm
  {
    FMOV            V3.2S, #1.5
    FMOV            V4.2S, #-1.5
  }

  v23 = vbic_s8(vadd_f32(v6, _D4), vcgt_f32(_D3, v6));
  if (v10 >= 1.5)
  {
    v9 = v10 + -1.5;
  }

  v24 = v9;
  v21 = vcvt_f32_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(vsub_f32(v6, vdup_lane_s32(v6, 0))), vdupq_n_s64(0x4059000000000000uLL))), vdupq_n_s64(0x3F847AE147AE147BuLL)));
  v19 = v21;
  v17 = round((v10 - v6.f32[0]) * 100.0) * 0.01;
  v22 = v17;
  v20 = v17;
  peridot::PeridotDXPBaselineRemoval::strayPeakUpdate(&a1[5315], &v25, &v21, &v23, &v19);
  return 0;
}

void peridot::PeridotDXP::init(uint64_t a1, const _PeridotCalib *a2, void *a3, uint64_t a4, int a5)
{
  v9 = a3;
  *(a1 + 168496) = a4;
  *a1 = a5;
  *(a1 + 2) = BYTE2(a5);
  peridot::PeridotDXPCalib::init((a1 + 16), a2, a4, v10);
}

void std::vector<std::vector<peridot::ImgHistogram>>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
      v3 += 3;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    v11 = v10 + 3;
    v12 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<std::vector<peridot::ImgHistogram> *,std::allocator<std::vector<peridot::ImgHistogram> *>>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v3) >> 3)
  {
    if (a2)
    {
      *v3++ = 0;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v7) = 0;
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = 8 * v7 + 8;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t peridot::PeridotDXP::setRunMode(uint64_t result, int a2)
{
  *result = a2;
  *(result + 2) = BYTE2(a2);
  *(result + 42466) = BYTE2(a2);
  *(result + 42464) = a2;
  *(result + 43270) = BYTE2(a2);
  *(result + 43268) = a2;
  *(result + 80226) = BYTE2(a2);
  *(result + 80224) = a2;
  *(result + 105362) = BYTE2(a2);
  *(result + 105360) = a2;
  return result;
}

void peridot::PeridotDXP::configure(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = *(*(a2 + 16) + 9280 * *(a2 + 8 * a5 + 3952) + 52);
  v9 = v8 >> 4;
  v10 = v8 >> 12;
  if (*(a1 + 42449))
  {
    *(a1 + 16) = a3;
    *(a1 + 20) = v10;
    *(a1 + 21) = v9;
    *(a1 + 42449) = 0;
  }

  else
  {
    v11 = a4;
    v12 = a5;
    if (*(a1 + 16) == a3)
    {
      v13 = *(a1 + 20);
      if (__PAIR64__(*(a1 + 21), v13) == __PAIR64__(v9, v10))
      {
        v14 = a2;
        v15 = a3;
        isChanged = peridot::PeridotDXPCalib::InputConfig::isChanged(a1 + 32, a2, a3, *(a2 + 8 * a5 + 3952), v9, v13);
        a2 = v14;
        a3 = v15;
        if (!isChanged)
        {
          *a6 = 0;
          return;
        }
      }
    }

    v17 = a3;
    v18 = a2;
    peridot_depth_log("DXPCalib::configure: operation mode/ pri num/ phase num/frame config changed");
    a2 = v18;
    a3 = v17;
    a5 = v12;
    a4 = v11;
  }

  *a6 = 1;
  peridot::PeridotDXPCalib::configure(a1 + 16, a2, a3, a4, a5);
  if (!v19 && !peridot::PeridotDXPPreProcessor::configure((a1 + 42464), (a1 + 16)) && !peridot::PeridotDxpDetector::configure((a1 + 80224), (a1 + 16)))
  {
    *(a1 + 105364) = *(a1 + 16);
    *(a1 + 105372) = *(a1 + 3440);
    *(a1 + 105380) = *(a1 + 3448);
    *(a1 + 105384) = *(a1 + 3452);
    *(a1 + 105392) = *(a1 + 3460);
    v20 = *(a1 + 3480);
    *(a1 + 105416) = *(a1 + 3496);
    v21 = *(a1 + 21);
    *(a1 + 105368) = v21;
    *(a1 + 105400) = v20;
    *(a1 + 105424) = *(a1 + 3464);
    v22 = *(a1 + 3792);
    v23 = *(a1 + 3760);
    *(a1 + 105456) = *(a1 + 3776);
    *(a1 + 105472) = v22;
    *(a1 + 105440) = v23;
    *(a1 + 105344) = 4;
    *(a1 + 105352) = 1;
    *(a1 + 105353) = v21;
    LODWORD(v20) = *(a1 + 3440);
    *(a1 + 136968) = v20;
    v24 = *(a1 + 3960);
    *(a1 + 136976) = v24;
    *(a1 + 168416) = v20;
    *(a1 + 168424) = v24;
    *(a1 + 168458) = *(a1 + 4046);
    *(a1 + 168452) = *(a1 + 4040);
    *(a1 + 168466) = *(a1 + 4054);
    *(a1 + 168472) = *(a1 + 4060);
  }
}

float peridot::PeridotDXP::updateBiasMacroHP(peridot::PeridotDXP *this, float a2)
{
  result = a2 * 1.0e10;
  *(this + 26464) = result;
  return result;
}

float peridot::PeridotDXP::updateBiasMacroM1(peridot::PeridotDXP *this, float a2)
{
  result = a2 * 1.0e10;
  *(this + 34326) = result;
  return result;
}

double peridot::PeridotDxpMacro::PeridotDxpMacro(peridot::PeridotDxpMacro *this)
{
  *this = xmmword_2247A4B50;
  *(this + 2) = 0x3F00000041100000;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 598) = 0;
  *(this + 298) = 0u;
  *(this + 297) = 0u;
  *(this + 296) = 0u;
  *(this + 295) = 0u;
  *(this + 31400) = 0u;
  *(this + 31416) = 0u;
  *(this + 31368) = 0u;
  *(this + 31384) = 0u;
  *(this + 31336) = 0u;
  *(this + 31352) = 0u;
  *(this + 31304) = 0u;
  *(this + 31320) = 0u;
  *(this + 31288) = 0u;
  return result;
}

{
  *this = xmmword_2247A4B50;
  *(this + 2) = 0x3F00000041100000;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 598) = 0;
  *(this + 298) = 0u;
  *(this + 297) = 0u;
  *(this + 296) = 0u;
  *(this + 295) = 0u;
  *(this + 31400) = 0u;
  *(this + 31416) = 0u;
  *(this + 31368) = 0u;
  *(this + 31384) = 0u;
  *(this + 31336) = 0u;
  *(this + 31352) = 0u;
  *(this + 31304) = 0u;
  *(this + 31320) = 0u;
  *(this + 31288) = 0u;
  return result;
}

void peridot::PeridotDxpMacro::~PeridotDxpMacro(peridot::PeridotDxpMacro *this)
{
  v2 = *(this + 3926);
  if (v2)
  {
    v3 = *(this + 3927);
    v4 = *(this + 3926);
    if (v3 != v2)
    {
      v5 = *(this + 3927);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 3926);
    }

    *(this + 3927) = v2;
    operator delete(v4);
  }

  v8 = *(this + 3923);
  if (v8)
  {
    v9 = *(this + 3924);
    v10 = *(this + 3923);
    if (v9 != v8)
    {
      v11 = *(this + 3924);
      do
      {
        v13 = *(v11 - 24);
        v11 -= 24;
        v12 = v13;
        if (v13)
        {
          *(v9 - 16) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *(this + 3923);
    }

    *(this + 3924) = v8;
    operator delete(v10);
  }

  v14 = *(this + 3920);
  if (v14)
  {
    v15 = *(this + 3921);
    v16 = *(this + 3920);
    if (v15 != v14)
    {
      v17 = *(this + 3921);
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          MEMORY[0x22AA53190]();
        }

        v15 = v17;
      }

      while (v17 != v14);
      v16 = *(this + 3920);
    }

    *(this + 3921) = v14;
    operator delete(v16);
  }

  v20 = *(this + 3917);
  if (v20)
  {
    v21 = *(this + 3918);
    v22 = *(this + 3917);
    if (v21 != v20)
    {
      v23 = *(this + 3918);
      do
      {
        v25 = *(v23 - 24);
        v23 -= 24;
        v24 = v25;
        if (v25)
        {
          *(v21 - 16) = v24;
          MEMORY[0x22AA53190]();
        }

        v21 = v23;
      }

      while (v23 != v20);
      v22 = *(this + 3917);
    }

    *(this + 3918) = v20;
    operator delete(v22);
  }

  v26 = *(this + 3914);
  if (v26)
  {
    v27 = *(this + 3915);
    v28 = *(this + 3914);
    if (v27 != v26)
    {
      v29 = *(this + 3915);
      do
      {
        v31 = *(v29 - 24);
        v29 -= 24;
        v30 = v31;
        if (v31)
        {
          *(v27 - 16) = v30;
          MEMORY[0x22AA53190]();
        }

        v27 = v29;
      }

      while (v29 != v26);
      v28 = *(this + 3914);
    }

    *(this + 3915) = v26;
    operator delete(v28);
  }

  v32 = *(this + 3911);
  if (v32)
  {
    v33 = *(this + 3912);
    v34 = *(this + 3911);
    if (v33 != v32)
    {
      v35 = *(this + 3912);
      do
      {
        v37 = *(v35 - 24);
        v35 -= 24;
        v36 = v37;
        if (v37)
        {
          *(v33 - 16) = v36;
          MEMORY[0x22AA53190]();
        }

        v33 = v35;
      }

      while (v35 != v32);
      v34 = *(this + 3911);
    }

    *(this + 3912) = v32;
    operator delete(v34);
  }

  v38 = *(this + 596);
  if (v38)
  {
    *(this + 597) = v38;
    operator delete(v38);
  }

  v39 = *(this + 593);
  if (v39)
  {
    *(this + 594) = v39;
    operator delete(v39);
  }

  v40 = *(this + 590);
  if (v40)
  {
    *(this + 591) = v40;
    operator delete(v40);
  }

  v41 = *(this + 35);
  if (v41)
  {
    *(this + 36) = v41;
    operator delete(v41);
  }

  v42 = *(this + 31);
  if (v42)
  {
    *(this + 32) = v42;
    operator delete(v42);
  }

  v43 = *(this + 28);
  if (v43)
  {
    *(this + 29) = v43;
    operator delete(v43);
  }

  v44 = *(this + 25);
  if (v44)
  {
    *(this + 26) = v44;
    operator delete(v44);
  }

  v45 = *(this + 22);
  if (v45)
  {
    *(this + 23) = v45;
    operator delete(v45);
  }

  v46 = *(this + 18);
  if (v46)
  {
    *(this + 19) = v46;
    operator delete(v46);
  }

  v47 = *(this + 15);
  if (v47)
  {
    v48 = *(this + 16);
    v49 = *(this + 15);
    if (v48 != v47)
    {
      v50 = *(this + 16);
      do
      {
        v52 = *(v50 - 24);
        v50 -= 24;
        v51 = v52;
        if (v52)
        {
          *(v48 - 16) = v51;
          operator delete(v51);
        }

        v48 = v50;
      }

      while (v50 != v47);
      v49 = *(this + 15);
    }

    *(this + 16) = v47;
    operator delete(v49);
  }

  v53 = *(this + 12);
  if (v53)
  {
    v54 = *(this + 13);
    v55 = *(this + 12);
    if (v54 != v53)
    {
      v56 = *(this + 13);
      do
      {
        v58 = *(v56 - 24);
        v56 -= 24;
        v57 = v58;
        if (v58)
        {
          *(v54 - 16) = v57;
          operator delete(v57);
        }

        v54 = v56;
      }

      while (v56 != v53);
      v55 = *(this + 12);
    }

    *(this + 13) = v53;
    operator delete(v55);
  }

  v59 = *(this + 9);
  if (v59)
  {
    *(this + 10) = v59;
    operator delete(v59);
  }

  v60 = *(this + 6);
  if (v60)
  {
    v61 = *(this + 7);
    v62 = *(this + 6);
    if (v61 != v60)
    {
      v63 = *(this + 7);
      do
      {
        v65 = *(v63 - 24);
        v63 -= 24;
        v64 = v65;
        if (v65)
        {
          *(v61 - 16) = v64;
          operator delete(v64);
        }

        v61 = v63;
      }

      while (v63 != v60);
      v62 = *(this + 6);
    }

    *(this + 7) = v60;
    operator delete(v62);
  }

  v66 = *(this + 3);
  if (v66)
  {
    v67 = *(this + 4);
    v68 = *(this + 3);
    if (v67 != v66)
    {
      v69 = *(this + 4);
      do
      {
        v71 = *(v69 - 24);
        v69 -= 24;
        v70 = v71;
        if (v71)
        {
          *(v67 - 16) = v70;
          operator delete(v70);
        }

        v67 = v69;
      }

      while (v69 != v66);
      v68 = *(this + 3);
    }

    *(this + 4) = v66;
    operator delete(v68);
  }
}

void peridot::PeridotDxpMacro::init(uint64_t a1, void *a2, void *a3, float a4, float a5, float a6)
{
  *(a1 + 168) = a6;
  *(a1 + 172) = 1056964608;
  v20 = 0;
  *(a1 + 31432) = a4;
  v10 = 0.0;
  do
  {
    std::vector<float>::push_back[abi:ne200100](a1 + 176, &v20);
    v10 = v10 + 1.0;
    v20 = LODWORD(v10);
  }

  while (v10 <= 45.0);
  v20 = 1077936128;
  for (i = 3.0; i <= a5; v20 = LODWORD(i))
  {
    std::vector<float>::push_back[abi:ne200100](a1 + 200, &v20);
    i = i + *(a1 + 172);
  }

  v20 = -1049624576;
  v12 = -15.0;
  do
  {
    std::vector<float>::push_back[abi:ne200100](a1 + 248, &v20);
    v12 = v12 + 1.0;
    v20 = LODWORD(v12);
  }

  while (v12 <= 15.0);
  v20 = 0;
  v13 = 0.0;
  do
  {
    std::vector<float>::push_back[abi:ne200100](a1 + 224, &v20);
    v13 = v13 + 0.2;
    v20 = LODWORD(v13);
  }

  while (v13 <= 0.9);
  peridot::PeridotDxpMacro::initializePulses(v14, a2, 0, (a1 + 24), (a1 + 48));
  peridot::PeridotDxpMacro::initializePulses(v15, a3, &peridot::gCOMP_LEVEL, (a1 + 96), (a1 + 120));
  v17 = (*(a1 + 184) - *(a1 + 176)) >> 2;
  memset(&v19, 0, sizeof(v19));
  v18 = v17 - 1;
  if (v18)
  {
    if (!(v18 >> 62))
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  peridot::PeridotDxpMacro::getPulseShape(v16, a1 + 72, (a1 + 48), (a1 + 176), 0, &v19);
}

void sub_2247492F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22474931C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a9)
  {
    JUMPOUT(0x224749314);
  }

  JUMPOUT(0x22474930CLL);
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void peridot::PeridotDxpMacro::initializePulses(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v5 = a2[1];
  if (v5 - *a2 == 256)
  {
    v8 = 6;
    if (!a3)
    {
      v8 = 1;
    }

    v33 = v8;
    if (v5 != *a2)
    {
      operator new();
    }

    v9 = 0.0;
    v10 = 0;
    do
    {
      v11 = *v10++;
      v9 = v11 + v9;
    }

    while (v10 != 4);
    v12 = 2;
    v13 = 0;
    v14 = 1.0 / v9;
    do
    {
      *v13 = *v13 * v14;
      ++v13;
      --v12;
    }

    while (v12);
    v15 = a4[1];
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3);
    if (v33 <= v16)
    {
      if (v33 < v16)
      {
        v17 = *a4 + 24 * v33;
        if (v15 != v17)
        {
          v18 = a4[1];
          do
          {
            v20 = *(v18 - 24);
            v18 -= 24;
            v19 = v20;
            if (v20)
            {
              *(v15 - 16) = v19;
              operator delete(v19);
            }

            v15 = v18;
          }

          while (v18 != v17);
        }

        a4[1] = v17;
      }
    }

    else
    {
      std::vector<std::vector<float>>::__append(a4, v33 - v16);
    }

    v21 = a5[1];
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a5) >> 3);
    if (v33 <= v22)
    {
      if (v33 < v22)
      {
        v23 = *a5 + 24 * v33;
        if (v21 != v23)
        {
          v24 = a5[1];
          do
          {
            v26 = *(v24 - 24);
            v24 -= 24;
            v25 = v26;
            if (v26)
            {
              *(v21 - 16) = v25;
              operator delete(v25);
            }

            v21 = v24;
          }

          while (v24 != v23);
        }

        a5[1] = v23;
      }
    }

    else
    {
      std::vector<std::vector<float>>::__append(a5, v33 - v22);
    }

    v27 = 0;
    v28 = v33;
    while (1)
    {
      v29 = (*a4 + v27);
      v30 = v29->__end_ - v29->__begin_;
      if (v30 >= 2)
      {
        if (v30 > 2)
        {
          v29->__end_ = v29->__begin_ + 2;
        }
      }

      else
      {
        std::vector<float>::__append(v29, 2 - v30);
      }

      v31 = (*a5 + v27);
      v32 = v31->__end_ - v31->__begin_;
      if (v32 < 2)
      {
        std::vector<float>::__append(v31, 2 - v32);
      }

      else if (v32 > 2)
      {
        v31->__end_ = v31->__begin_ + 2;
      }

      v27 += 24;
      if (!--v28)
      {
        operator new();
      }
    }
  }

  __assert_rtn("initializePulses", "PeridotDxpMacro.mm", 118, "MACRO_PULSE_SIZE == pulse.size()");
}

void sub_22474A030(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void peridot::PeridotDxpMacro::getPulseShape(int a1, int a2, void *a3, void *a4, uint64_t a5, std::vector<unsigned int> *this)
{
  v8 = a4[1] - *a4;
  v9 = this->__end_ - this->__begin_;
  if (v8 >> 2 <= v9)
  {
    if (v8 >> 2 < v9)
    {
      this->__end_ = (this->__begin_ + v8);
    }
  }

  else
  {
    std::vector<float>::__append(this, (v8 >> 2) - v9);
  }

  v10 = (*(*a3 + 24 * a5 + 8) - *(*a3 + 24 * a5)) >> 2;
  if (v10 != -2)
  {
    if (!((v10 + 2) >> 62))
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_22474A6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MatrixNxPts<1u,float>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

void peridot::PeridotDxpMacro::initWithOffset(peridot::PeridotDxpMacro *this, int a2, int a3)
{
  *(this + 77) = a3;
  *(this + 78) = -1431655765 * ((*(this + 13) - *(this + 12)) >> 3);
  memset(v3, 0, 24);
  v3[8] = v3;
  LOBYTE(v4) = 0;
  operator new();
}

void sub_22474C548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a48 && a50 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v52 = *(v50 - 248);
  if (v52)
  {
    v53 = *(v50 - 240);
    v54 = *(v50 - 248);
    if (v53 != v52)
    {
      v55 = *(v50 - 240);
      do
      {
        v58 = *(v55 - 3);
        v55 -= 3;
        v57 = v58;
        if (v58)
        {
          v59 = *(v53 - 2);
          v56 = v57;
          if (v59 != v57)
          {
            v60 = *(v53 - 2);
            do
            {
              v62 = *(v60 - 3);
              v60 -= 24;
              v61 = v62;
              if (v62)
              {
                *(v59 - 2) = v61;
                operator delete(v61);
              }

              v59 = v60;
            }

            while (v60 != v57);
            v56 = *v55;
          }

          *(v53 - 2) = v57;
          operator delete(v56);
        }

        v53 = v55;
      }

      while (v55 != v52);
      v54 = *(v50 - 248);
    }

    *(v50 - 240) = v52;
    operator delete(v54);
  }

  v63 = *(v50 - 224);
  if (!v63)
  {
    _Unwind_Resume(exception_object);
  }

  v64 = *(v50 - 216);
  v65 = *(v50 - 224);
  if (v64 != v63)
  {
    v66 = *(v50 - 216);
    do
    {
      v68 = *(v66 - 24);
      v66 -= 24;
      v67 = v68;
      if (v68)
      {
        *(v64 - 16) = v67;
        operator delete(v67);
      }

      v64 = v66;
    }

    while (v66 != v63);
    v65 = *(v50 - 224);
  }

  *(v50 - 216) = v63;
  operator delete(v65);
  _Unwind_Resume(exception_object);
}

void ****std::__exception_guard_exceptions<std::vector<std::vector<std::vector<float>>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v9 = *(v6 - 3);
          v6 -= 3;
          v8 = v9;
          if (v9)
          {
            v10 = *(v4 - 2);
            v7 = v8;
            if (v10 != v8)
            {
              v11 = *(v4 - 2);
              do
              {
                v13 = *(v11 - 3);
                v11 -= 24;
                v12 = v13;
                if (v13)
                {
                  *(v10 - 2) = v12;
                  operator delete(v12);
                }

                v10 = v11;
              }

              while (v11 != v8);
              v7 = *v6;
            }

            *(v4 - 2) = v8;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void std::vector<std::vector<peridot::DoubleStaticArray<float,61,45>>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<peridot::DoubleStaticArray<float,61,45>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x82FA0BE82FA0BE83 * ((v3 - v4) >> 8) >= a2)
  {
    v13 = 11008 * ((11008 * a2 - 11008) / 0x2B00) + 11008;
    bzero(*(a1 + 8), v13);
    *(a1 + 8) = v4 + v13;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0x82FA0BE82FA0BE83 * (v6 >> 8);
    if (v7 + a2 > 0x5F417D05F417DLL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x82FA0BE82FA0BE83 * ((v3 - v5) >> 8);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x2FA0BE82FA0BELL)
    {
      v10 = 0x5F417D05F417DLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 > 0x5F417D05F417DLL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v11 = a2;
      v12 = operator new(11008 * v10, 0x40uLL);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v14 = &v12[256 * (v6 >> 8)];
    v15 = &v12[11008 * v10];
    v16 = 11008 * ((11008 * a2 - 11008) / 0x2B00) + 11008;
    bzero(v14, v16);
    v17 = &v14[v16];
    v18 = &v14[-v6];
    memcpy(v18, v5, v6);
    *a1 = v18;
    *(a1 + 8) = v17;
    *(a1 + 16) = v15;
    if (v5)
    {

      JUMPOUT(0x22AA53190);
    }
  }
}

void std::vector<peridot::DoubleStaticArray<float,61,2>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 9)
  {
    v12 = a2 << 9;
    bzero(*(a1 + 8), a2 << 9);
    *(a1 + 8) = v4 + v12;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 9) + a2;
    if (v7 >> 55)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 8 > v7)
    {
      v7 = v8 >> 8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFE00)
    {
      v9 = 0x7FFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 55)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = a2;
      v11 = operator new(v9 << 9, 0x40uLL);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = a2 << 9;
    bzero(&v11[512 * (v6 >> 9)], a2 << 9);
    memcpy(v11, v5, v6);
    *a1 = v11;
    *(a1 + 8) = &v11[512 * (v6 >> 9) + v13];
    *(a1 + 16) = &v11[512 * v9];
    if (v5)
    {

      JUMPOUT(0x22AA53190);
    }
  }
}

void Matrix<float>::MultAxBToC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (v3 == 1 && v4 == 1)
  {
    if (*(a2 + 20) * *(a2 + 16))
    {
      operator new[]();
    }

    vDSPVsmul<float>();
  }

  if (*(a2 + 20) == 1 && *(a2 + 16) == 1)
  {
    if (v4 * v3)
    {
      operator new[]();
    }

    vDSPVsmul<float>();
  }

  LODWORD(v7) = *(a1 + 20);
  vDSPMmul<float>(*(a1 + 8), 1, *(a2 + 8), 1, *(a3 + 8), 1, *(a1 + 16), *(a3 + 20), v7);
}

void sub_22474CFEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

float peridot::PeridotDxpMacro::configure(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 3424);
  *(a1 + 31432) = result;
  *(a1 + 31440) = *(a2 + 3944);
  return result;
}

uint64_t peridot::PeridotDxpMacro::getPulseShapeOptimized(uint64_t a1, uint64_t *a2, void *a3, float *a4, uint64_t a5, unint64_t a6, _DWORD *a7)
{
  *&v78[1452] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = (a2[1] - *a2) >> 2;
  if (v8 <= 2)
  {
    peridot_depth_log_error("getPulseShapeOptimized: cdf_time has wrong size");
    return 1;
  }

  v73 = 1;
  v74 = (v8 + -2.0);
  v75 = 0;
  v76 = 4 * v74;
  v71 = &unk_28380A0A8;
  v72 = v7 + 4;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  if (v10 == 1 || v10 == 6)
  {
    if (v10 <= a6)
    {
      peridot_depth_log_error("getPulseShapeOptimized: compIdx - wrong Index");
      goto LABEL_12;
    }

    v12 = (*a3 + 24 * a6);
    v13 = *v12;
    v14 = v12[1];
    v15 = (v14 - *v12) >> 2;
    if (v15 + 2 >= 0x171)
    {
      peridot_depth_log_error("getPulseShapeOptimized: cdf_newSize has wrong size");
      goto LABEL_12;
    }

    v77[0] = 0;
    if (v14 != v13)
    {
      if (v15 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v15;
      }

      if (v15 < 8 || &v77[1] - v13 < 0x20)
      {
        v20 = 0;
LABEL_24:
        v21 = v19 - v20;
        v22 = 4 * v20;
        v23 = &v77[v20 + 1];
        v24 = (v13 + v22);
        do
        {
          v25 = *v24++;
          *v23++ = v25;
          --v21;
        }

        while (v21);
        goto LABEL_26;
      }

      v20 = v19 & 0xFFFFFFFFFFFFFFF8;
      v36 = v78;
      v37 = (v13 + 16);
      v38 = v19 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v39 = *v37;
        *(v36 - 1) = *(v37 - 1);
        *v36 = v39;
        v36 += 2;
        v37 += 2;
        v38 -= 8;
      }

      while (v38);
      if (v15 != v20)
      {
        goto LABEL_24;
      }
    }

LABEL_26:
    v77[v15 + 1] = 1065353216;
    v66 = v77;
    v67 = 1;
    v68 = v15 + 2;
    v69 = 0;
    v70 = 4 * (v15 + 2);
    v65 = &unk_28380A0A8;
    v61 = 1;
    v62 = a5;
    v63 = 0;
    v64 = 4 * a5;
    v59 = &unk_28380A0A8;
    v60 = a4;
    v55 = 1;
    v56 = a5;
    v57 = 0;
    v58 = v64;
    v53 = &unk_28380A0A8;
    v54 = a7;
    if (!a5 || v15 == -2)
    {
      peridot_depth_log_error("getPulseShapeOptimized: cdf_newSize or tSize has wrong size");
      result = 1;
      goto LABEL_50;
    }

    Interp1<float,LinearInterpolator<float>>(&v71, &v65, a4, a5, &v53);
    if (v56)
    {
      v29 = 0;
      v30 = *a2;
      v31 = a2[1];
      v32 = 4 * v56;
      do
      {
        v28.i64[0] = 0;
        if (a4[v29 / 4] >= *(v30 + 4))
        {
          v28.i32[0] = v54[v29 / 4];
        }

        v54[v29 / 4] = v28.i32[0];
        v33 = 1.0;
        if (a4[v29 / 4] <= *(v31 - 8))
        {
          v33 = *&v54[v29 / 4];
        }

        *&v54[v29 / 4] = v33;
        v29 += 4;
      }

      while (v32 != v29);
    }

    v34 = a5 - 1;
    if (a5 != 1)
    {
      v28.i32[0] = *a7;
      if (v34 > 7)
      {
        v35 = v34 & 0xFFFFFFFFFFFFFFF8;
        v28 = vdupq_lane_s32(*v28.i8, 0);
        v40 = (a7 + 5);
        v41 = v34 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v42 = v40[-1];
          v43 = vextq_s8(v28, v42, 0xCuLL);
          v28 = *v40;
          v44 = vextq_s8(v42, *v40, 0xCuLL);
          v45 = vsubq_f32(v42, v43);
          v46 = vsubq_f32(*v40, v44);
          *(v40 - 20) = v45;
          *(v40 - 4) = v46;
          v40 += 2;
          v41 -= 8;
        }

        while (v41);
        if (v34 == v35)
        {
          goto LABEL_49;
        }

        v28.i32[0] = v28.i32[3];
      }

      else
      {
        v35 = 0;
      }

      v47 = &a7[v35 + 1];
      v48 = ~v35 + a5;
      do
      {
        v49 = *v47;
        *(v47 - 1) = *v47 - *v28.i32;
        ++v47;
        *v28.i32 = v49;
        --v48;
      }

      while (v48);
    }

LABEL_49:
    result = 0;
LABEL_50:
    v53 = &unk_283809D60;
    if (v54 && v57 == 1)
    {
      v50 = result;
      MEMORY[0x22AA53170](v54, 0x1000C8052888210);
      result = v50;
    }

    v59 = &unk_283809D60;
    if (v60 && v63 == 1)
    {
      v51 = result;
      MEMORY[0x22AA53170](v60, 0x1000C8052888210);
      result = v51;
    }

    v65 = &unk_283809D60;
    if (v66 && v69 == 1)
    {
      v52 = result;
      MEMORY[0x22AA53170](v66, 0x1000C8052888210);
      result = v52;
    }

    goto LABEL_13;
  }

  peridot_depth_log_error("getPulseShapeOptimized: cdf has wrong size");
LABEL_12:
  result = 1;
LABEL_13:
  v71 = &unk_283809D60;
  if (v72)
  {
    if (v75 == 1)
    {
      v16 = result;
      MEMORY[0x22AA53170](v72, 0x1000C8052888210);
      return v16;
    }
  }

  return result;
}

void sub_22474D59C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  MatrixNxPts<1u,float>::~MatrixNxPts(va);
  MatrixNxPts<1u,float>::~MatrixNxPts(va1);
  MatrixNxPts<1u,float>::~MatrixNxPts(va2);
  MatrixNxPts<1u,float>::~MatrixNxPts(va3);
  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotDxpMacro::getPMF(uint64_t this, float a2, const float *a3, uint64_t a4, float *a5, float *a6)
{
  if (a2 != 0.0 && a4 != 0)
  {
    v7 = roundf(a2 / *(this + 31432));
    if (v7 >= 1.0)
    {
      v8 = (v7 + -1.0);
      if (a4 - 1 < v8)
      {
        v8 = a4 - 1;
      }

      v9 = fmaxf(v8 + -3.0, 0.0);
      v10 = v8 + 3;
      if (a4 - 1 < v8 + 3)
      {
        v10 = a4 - 1;
      }

      if (v10 >= v9)
      {
        v11 = 0;
        v12 = &a3[v9];
        v13 = *v12;
        do
        {
          if (v12[v11] > v13)
          {
            v13 = v12[v11];
          }

          ++v11;
        }

        while (v9 + v11 <= v10);
      }

      if (a4 != -1 && !((a4 + 1) >> 62))
      {
        operator new();
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }
  }

  *a5 = 0.0;
  *a6 = 0.0;
  return this;
}

void sub_22474DA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v13);
  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotDxpMacro::runN(uint64_t a1, void *a2, void *a3, float a4, uint64_t a5, void *a6)
{
  v6 = a6;
  *&v28[380] = *MEMORY[0x277D85DE8];
  v7 = a2[1] - *a2;
  v8 = v7 >> 3;
  if (v7)
  {
    v13 = 0;
    if (v8 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v7 >> 3;
    }

    v15 = &v27;
    do
    {
      v16 = peridot::PeridotDxpMacro::ML_estimation(a1, *(*a2 + 8 * v13), *(*a3 + 8 * v13), a4);
      if (v16)
      {
        v25 = v16;
        peridot_depth_log_error("runN: ML_estimation failed for histogram %zu with error %d", v13, v16);
        return v25;
      }

      *v15 = 0u;
      *(v15 + 1) = 0u;
      *(v15 + 4) = 0;
      ++v13;
      v15 += 40;
    }

    while (v14 != v13);
    v17 = 0;
    v6[24] = v8;
    v18 = v6 + 27;
    v19 = v28;
    do
    {
      v20 = *(v19 - 4);
      *(v18 - 21) = *(v19 - 5);
      v21 = *(v19 - 1);
      *(v18 - 6) = *v19;
      *(v18 - 18) = v20;
      v22 = *(v19 - 2);
      *(v18 - 15) = *(v19 - 3);
      v23 = *(v19 + 1);
      v18[3] = v19[2];
      *v6++ = v17;
      *v18 = v23;
      *(v18 - 9) = v21;
      *(v18 - 12) = v22;
      v24 = *(v19 + 4);
      v18[15] = v19[3];
      ++v17;
      v19 += 10;
      *(v18++ + 18) = v24;
      --v14;
    }

    while (v14);
    return 0;
  }

  else
  {
    v25 = 0;
    a6[24] = v8;
  }

  return v25;
}

uint64_t peridot::PeridotDxpMacro::ML_estimation(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v28 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v5.i32[0] = *(v4 + 272);
  v6.i32[0] = *(v4 + 320);
  v7.i32[0] = *(v4 + 316);
  *v9.i32 = v8 / *(v4 + 31432);
  v10 = vdupq_lane_s32(v7, 0);
  v11 = vdupq_lane_s32(v9, 0);
  v12 = vdupq_lane_s32(v6, 0);
  v13 = vdupq_lane_s32(v5, 0);
  v17 = 0u;
  v15[0] = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v13, xmmword_2247A4C40), v12), v11), v10);
  v15[1] = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v13, xmmword_2247A4C50), v12), v11), v10);
  v15[2] = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v13, xmmword_2247A4C60), v12), v11), v10);
  v15[3] = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v13, xmmword_2247A4C70), v12), v11), v10);
  v15[4] = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v13, xmmword_2247A4C80), v12), v11), v10);
  v15[5] = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v13, xmmword_2247A4C90), v12), v11), v10);
  v15[6] = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v13, xmmword_2247A4CA0), v12), v11), v10);
  v15[7] = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v13, xmmword_2247A4CB0), v12), v11), v10);
  v15[8] = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v13, xmmword_2247A4CC0), v12), v11), v10);
  v15[9] = vaddq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v13, xmmword_2247A4CD0), v12), v11), v10);
  v16 = (((*v5.i32 + 40.0) + *v6.i32) - *v9.i32) + *v7.i32;
  if (!peridot::PeridotDxpMacro::getPulseShapeOptimized(v4, (v4 + 144), (v4 + 120), v15, 41, 0, &v17) && ((*&v17 - *&v17) > 0.001 || (*(&v17 + 1) - *&v17) > 0.001 || (*(&v17 + 2) - *&v17) > 0.001 || (*(&v17 + 3) - *&v17) > 0.001 || (*&v18 - *&v17) > 0.001 || (*(&v18 + 1) - *&v17) > 0.001 || (*(&v18 + 2) - *&v17) > 0.001 || (*(&v18 + 3) - *&v17) > 0.001 || (*&v19 - *&v17) > 0.001 || (*(&v19 + 1) - *&v17) > 0.001 || (*(&v19 + 2) - *&v17) > 0.001 || (*(&v19 + 3) - *&v17) > 0.001 || (*&v20 - *&v17) > 0.001 || (*(&v20 + 1) - *&v17) > 0.001 || (*(&v20 + 2) - *&v17) > 0.001 || (*(&v20 + 3) - *&v17) > 0.001 || (*&v21 - *&v17) > 0.001 || (*(&v21 + 1) - *&v17) > 0.001 || (*(&v21 + 2) - *&v17) > 0.001 || (*(&v21 + 3) - *&v17) > 0.001 || (*&v22 - *&v17) > 0.001 || (*(&v22 + 1) - *&v17) > 0.001 || (*(&v22 + 2) - *&v17) > 0.001 || (*(&v22 + 3) - *&v17) > 0.001 || (*&v23 - *&v17) > 0.001 || (*(&v23 + 1) - *&v17) > 0.001 || (*(&v23 + 2) - *&v17) > 0.001 || (*(&v23 + 3) - *&v17) > 0.001 || (*&v24 - *&v17) > 0.001 || (*(&v24 + 1) - *&v17) > 0.001 || (*(&v24 + 2) - *&v17) > 0.001))
  {
    operator new[]();
  }

  return 1;
}

void sub_22474F718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37)
  {
    MEMORY[0x22AA53170](a37, 0x1000C8052888210);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void peridot::PeridotDxpMacro::findStrayT0New(peridot::PeridotDxpMacro *this, const peridot::Histogram *a2, unint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6, double a7)
{
  v8 = a3;
  v9 = *(a2 + 2);
  v71[182] = v9;
  if (v9)
  {
    v10 = *(a2 + 1);
    LODWORD(a7) = v10->i32[0];
    if (v9 < 8 || (v70 - v10) <= 0x1F)
    {
      v12 = 0;
LABEL_10:
      v18 = v9 - v12;
      v19 = v12;
      v20 = &v70[v19 * 4];
      v21 = &v10->f32[v19];
      do
      {
        v22 = *v21++;
        *v20++ = v22 - *&a7;
        --v18;
      }

      while (v18);
      goto LABEL_12;
    }

    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    v13 = vdupq_lane_s32(*&a7, 0);
    v14 = v71;
    v15 = v10 + 1;
    v16 = v9 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v17 = vsubq_f32(*v15, v13);
      v14[-1] = vsubq_f32(v15[-1], v13);
      *v14 = v17;
      v14 += 2;
      v15 += 2;
      v16 -= 8;
    }

    while (v16);
    if (v9 != v12)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  __p = 0;
  v68 = 0;
  v69 = 0;
  v71[183] = &__p;
  v72 = 0;
  if (a4 - a3 != -1)
  {
    if (a4 - a3 + 1 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v23 = **(this + 3926);
  v24 = *(*(this + 3926) + 8);
  if (v24 != v23)
  {
    if (((v24 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (a4 - a3 == -1)
  {
    v26 = 0;
    v36 = 1;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = *(this + 3927);
    v28 = *(this + 3926);
    v29 = &v70[4 * a3];
    v30 = 3.4028e38;
    do
    {
      if (v27 != v28)
      {
        if (!((0xAAAAAAAAAAAAAAABLL * ((v27 - v28) >> 3)) >> 62))
        {
          operator new();
        }

        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v32 = __p + 24 * v25;
      v33 = *v32;
      if (*v32)
      {
        *(v32 + 1) = v33;
        operator delete(v33);
        *v32 = 0;
        *(v32 + 1) = 0;
        *(v32 + 2) = 0;
      }

      *v32 = 0;
      *(v32 + 1) = 0;
      *(v32 + 2) = 0;
      v27 = *(this + 3927);
      v28 = *(this + 3926);
      if (v27 != v28)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v27 - v28) >> 3) <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v28) >> 3);
        }

        v35 = *(this + 3927);
        bzero(*(__p + 3 * v25), 4 * v34);
        v27 = v35;
        do
        {
          if (v30 > 0.0)
          {
            v30 = 0.0;
            v26 = v25;
          }

          --v34;
        }

        while (v34);
      }

      v29 += 4;
    }

    while (v25++ != -1);
    v36 = v30 > 0.5;
    v8 = a3;
  }

  *a5 = v26 + v8;
  *a6 = 0;
  v37 = __p;
  v38 = *(__p + 3 * v26);
  v39 = *(__p + 3 * v26 + 1);
  v40 = v39 - v38;
  if (v39 != v38)
  {
    v41 = 0;
    v42 = v40 >> 2;
    if (v42 <= 1)
    {
      v42 = 1;
    }

    v43 = 3.4028e38;
    do
    {
      v44 = *(v38 + 4 * v41);
      if (v44 < v43)
      {
        *a6 = v41;
        v43 = v44;
      }

      ++v41;
    }

    while (v42 != v41);
  }

  v45 = (*(*(this + 3926) + 8) - **(this + 3926)) >> 2;
  v46 = v45 + a4 - v8;
  if (v45 + a4 > v8)
  {
    v47 = 0.0;
    v48 = v8;
    if (v46 > 7)
    {
      v49 = v46 & 0xFFFFFFFFFFFFFFF8;
      v50 = &v70[4 * v8 + 16];
      v51 = 0uLL;
      v52 = v46 & 0xFFFFFFFFFFFFFFF8;
      v53 = 0uLL;
      do
      {
        v51 = vaddq_f32(v50[-1], v51);
        v53 = vaddq_f32(*v50, v53);
        v50 += 2;
        v52 -= 8;
      }

      while (v52);
      v54 = vaddq_f32(v53, v51);
      v47 = vaddv_f32(*&vpaddq_f32(v54, v54));
      if (v46 == v49)
      {
LABEL_52:
        if (v47 >= 0.001 && !v36)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      v48 = v49 + v8;
    }

    v55 = v45 + a4 - v48;
    v56 = &v70[4 * v48];
    do
    {
      v57 = *v56++;
      v47 = v57 + v47;
      --v55;
    }

    while (v55);
    goto LABEL_52;
  }

LABEL_53:
  *a5 = v8 + 2;
  *a6 = 2;
LABEL_54:
  if (v37)
  {
    v58 = v68;
    v59 = v37;
    if (v68 != v37)
    {
      v60 = v68;
      do
      {
        v62 = *(v60 - 3);
        v60 -= 24;
        v61 = v62;
        if (v62)
        {
          *(v58 - 2) = v61;
          operator delete(v61);
        }

        v58 = v60;
      }

      while (v60 != v37);
      v59 = __p;
    }

    v68 = v37;
    operator delete(v59);
  }
}

uint64_t peridot::PeridotDxpMacro::ML_detectionEq(void *a1, int a2, void *a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8, BOOL *a9, uint64_t a10, float *a11, unint64_t *a12, void *a13, void *a14)
{
  v14 = *a3;
  v15 = *(*a3 + 16);
  if (!v15)
  {
    peridot_depth_log("DXPMacro: wrong bins num in eqHists");
    return 1;
  }

  v219[182] = *(*a3 + 16);
  v16 = a3[1];
  v17 = v16 - v14;
  if (v16 != v14)
  {
    v18 = 0;
    v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
    if (v19 <= 1)
    {
      v19 = 1;
    }

    v20 = v15 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (!v18)
      {
        v33 = 0;
        v34 = *(v14 + 8);
        if (v15 < 8)
        {
          goto LABEL_27;
        }

        if (v218 - v34 < 0x20)
        {
          goto LABEL_27;
        }

        v35 = (v34 + 16);
        v36 = v219;
        v37 = v15 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v38 = *v35;
          *(v36 - 1) = *(v35 - 1);
          *v36 = v38;
          v36 += 2;
          v35 += 2;
          v37 -= 8;
        }

        while (v37);
        v33 = v15 & 0xFFFFFFFFFFFFFFF8;
        if (v15 != v20)
        {
LABEL_27:
          v39 = v15 - v33;
          v40 = 4 * v33;
          v41 = &v218[v33];
          v42 = (v34 + v40);
          do
          {
            v43 = *v42++;
            *v41++ = v43;
            --v39;
          }

          while (v39);
        }

        goto LABEL_6;
      }

      v21 = *(v14 + 24 * v18 + 8);
      if (v15 > 7 && (v218 < &v21->i32[v15] ? (v22 = v21 >= &v218[v15]) : (v22 = 1), v22))
      {
        v23 = v21 + 1;
        v24 = v219;
        v25 = v15 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v26 = vaddq_f32(*v24, *v23);
          v24[-1] = vaddq_f32(v24[-1], v23[-1]);
          *v24 = v26;
          v24 += 2;
          v23 += 2;
          v25 -= 8;
        }

        while (v25);
        v27 = v15 & 0xFFFFFFFFFFFFFFF8;
        if (v15 == v20)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v27 = 0;
      }

      v28 = v15 - v27;
      v29 = v27;
      v30 = &v218[v27];
      v31 = &v21->f32[v29];
      do
      {
        v32 = *v31++;
        *v30 = *v30 + v32;
        ++v30;
        --v28;
      }

      while (v28);
LABEL_6:
      ++v18;
    }

    while (v18 != v19);
  }

  v44 = a5 + ((a1[23] - a1[22]) >> 2) - 1;
  v45 = ((a1[23] - a1[22]) >> 2) - 1;
  if (v44 < a5)
  {
    return 1;
  }

  *a12 = v45;
  if (v45 > 0x5B)
  {
    goto LABEL_32;
  }

  v47 = a1[590];
  if (a1[591] - v47 != 368)
  {
    peridot_depth_log("DXPMacro: wrong _hist_eq size");
    return 1;
  }

  if (v44 >= v15)
  {
LABEL_32:
    peridot_depth_log("DXPMacro: wrong histSize");
    return 1;
  }

  if (v44 != a5)
  {
    if (v45 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v45;
    }

    if (v45 <= 7 || (v49 = &v218[a5], v47 - v49 < 0x20))
    {
      v50 = 0;
LABEL_45:
      v51 = v48 - v50;
      v52 = (v47 + 4 * v50);
      v53 = &v218[v50 + a5];
      do
      {
        v54 = *v53++;
        *v52++ = v54;
        --v51;
      }

      while (v51);
      goto LABEL_47;
    }

    v50 = v48 & 0x78;
    v192 = (v47 + 16);
    v193 = (v49 + 4);
    v194 = v50;
    do
    {
      v195 = *v193;
      *(v192 - 1) = *(v193 - 1);
      *v192 = v195;
      v192 += 2;
      v193 += 2;
      v194 -= 8;
    }

    while (v194);
    if (v45 != v50)
    {
      goto LABEL_45;
    }
  }

LABEL_47:
  v55 = a5 + 1;
  v56 = 1;
  if (a5 + 1 > 1)
  {
    v56 = a5 + 1;
  }

  if (v55 <= 7)
  {
    v57 = 0;
    v58 = 0;
LABEL_55:
    v64 = v56 - v57;
    v65 = &v218[v57];
    do
    {
      v66 = *v65++;
      v58.f32[0] = v58.f32[0] + v66;
      --v64;
    }

    while (v64);
    goto LABEL_57;
  }

  v57 = v56 & 0xFFFFFFFFFFFFFFF8;
  v59 = v219;
  v60 = 0uLL;
  v61 = v56 & 0xFFFFFFFFFFFFFFF8;
  v62 = 0uLL;
  do
  {
    v60 = vaddq_f32(v60, v59[-1]);
    v62 = vaddq_f32(v62, *v59);
    v59 += 2;
    v61 -= 8;
  }

  while (v61);
  v63 = vaddq_f32(v62, v60);
  v58 = vpaddq_f32(v63, v63).u64[0];
  v58.f32[0] = vaddv_f32(v58);
  if (v55 != v57)
  {
    goto LABEL_55;
  }

LABEL_57:
  v58.f32[0] = v58.f32[0] / v56;
  *a11 = v58.f32[0];
  if (v44 == a5)
  {
    v67 = a8;
    if (v58.f32[0] <= 0.005)
    {
      v76 = a6;
      v68 = a1;
      v69 = a7;
      *a9 = 0;
      goto LABEL_83;
    }

    v68 = a1;
    v69 = a7;
    v70 = 3.4028e38;
LABEL_70:
    v75 = (v58.f32[0] / v70) > 3.0;
    goto LABEL_73;
  }

  if (v45 <= 1)
  {
    v71 = 1;
  }

  else
  {
    v71 = v45;
  }

  v70 = 3.4028e38;
  v72 = v47;
  do
  {
    v73 = *v72++;
    v74 = v73;
    if (v73 < v70)
    {
      v70 = v74;
    }

    --v71;
  }

  while (v71);
  v67 = a8;
  v68 = a1;
  v69 = a7;
  if (v58.f32[0] > 0.005)
  {
    if (v70 == 0.0)
    {
      v75 = 1;
      goto LABEL_73;
    }

    goto LABEL_70;
  }

  v75 = 0;
LABEL_73:
  v76 = a6;
  *a9 = v75;
  if (v44 != a5)
  {
    if (v45 <= 1)
    {
      v77 = 1;
    }

    else
    {
      v77 = v45;
    }

    if (v45 > 7 && (v47 >= (a11 + 1) || v47 + 4 * v77 <= a11))
    {
      v78 = v77 & 0x78;
      v196 = vdupq_lane_s32(v58, 0);
      v197 = (v47 + 16);
      v198 = v78;
      do
      {
        v199 = vmaxnmq_f32(vsubq_f32(*v197, v196), 0);
        v197[-1] = vmaxnmq_f32(vsubq_f32(v197[-1], v196), 0);
        *v197 = v199;
        v197 += 2;
        v198 -= 8;
      }

      while (v198);
      if (v45 == v78)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v78 = 0;
    }

    v79 = v77 - v78;
    v80 = (v47 + 4 * v78);
    do
    {
      *v80 = fmaxf(*v80 - *a11, 0.0);
      ++v80;
      --v79;
    }

    while (v79);
  }

LABEL_83:
  if (a4)
  {
    v81 = a4;
    v82 = v68 + 324;
    do
    {
      bzero(v82, 4 * v69);
      v82 += 244;
      --v81;
    }

    while (v81);
  }

  if (!v69)
  {
    return 0;
  }

  v83 = v68[590];
  v84 = *v68[3911];
  v85 = *v68[3920];
  v86 = *v68[3914];
  v87 = 0;
  if (v67)
  {
    v88 = (v85 + (v76 << 9) + 4);
    v89 = 11008 * v76;
    v202 = 3.4028e38;
    v90 = 224;
    while (*a12 == 45)
    {
      v93 = *(v83 + 128);
      v92 = *(v83 + 144);
      v94 = *(v83 + 96);
      v95 = *(v83 + 112);
      v204 = *(v84 + v89 + 144);
      v206 = *(v84 + v89 + 112);
      v208 = *(v84 + v89 + 128);
      v210 = *(v84 + v89 + 96);
      v96 = *(v83 + 64);
      v97 = *(v83 + 80);
      v98 = *(v84 + v89 + 80);
      v99 = *(v83 + 32);
      v100 = *(v83 + 48);
      v101 = *(v84 + v89 + 48);
      v212 = *(v84 + v89 + 64);
      v214 = *(v84 + v89 + 32);
      v102 = *(v83 + 16);
      v103 = *(v84 + v89 + 16);
      v216 = *(v84 + 11008 * v76);
      v104 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*v83, v216), v214, v99), v212, v96), v210, v94), v208, v93), v103, v102), v101, v100), v98, v97), v206, v95), v204, v92);
      v105 = *(v86 + v89 + 128);
      v106 = *(v86 + v89 + 96);
      v107 = *(v86 + v89 + 48);
      v108 = *(v86 + v89 + 64);
      v110 = *(v86 + v89 + 16);
      v109 = *(v86 + v89 + 32);
      v111 = *(v86 + 11008 * v76);
      v112 = *(v83 + 160);
      v113 = *(v83 + 164);
      v114 = *(v84 + v89 + 164);
      v115 = vmulq_f32(v113, v114);
      v116 = (vaddv_f32(*&vpaddq_f32(v104, v104)) + (v112 * *(v84 + v89 + 160))) + vaddv_f32(*&vpaddq_f32(v115, v115));
      v117 = *(v86 + v89 + 80);
      v118 = *(v86 + v89 + 112);
      v119 = *(v86 + v89 + 144);
      v120 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v111, *v83), v99, v109), v96, v108), v94, v106), v93, v105), v102, v110), v100, v107), v97, v117), v95, v118), v92, v119);
      v115.i32[0] = *(v86 + v89 + 160);
      v121 = vaddv_f32(*&vpaddq_f32(v120, v120)) + (v115.f32[0] * v112);
      v122 = *(v86 + v89 + 164);
      v123 = vmulq_f32(v122, v113);
      v124 = (*(v88 - 1) * v116) + (*v88 * (v121 + vaddv_f32(*&vpaddq_f32(v123, v123))));
      v125 = vsubq_f32(v92, vmlaq_f32(vmulq_n_f32(v119, v124), 0, v204));
      v126 = vsubq_f32(v95, vmlaq_f32(vmulq_n_f32(v118, v124), 0, v206));
      v127 = vsubq_f32(v97, vmlaq_f32(vmulq_n_f32(v117, v124), 0, v98));
      v128 = vsubq_f32(v100, vmlaq_f32(vmulq_n_f32(v107, v124), 0, v101));
      v129 = vsubq_f32(v102, vmlaq_f32(vmulq_n_f32(v110, v124), 0, v103));
      v130 = vsubq_f32(v93, vmlaq_f32(vmulq_n_f32(v105, v124), 0, v208));
      v131 = vsubq_f32(v94, vmlaq_f32(vmulq_n_f32(v106, v124), 0, v210));
      v132 = vsubq_f32(v96, vmlaq_f32(vmulq_n_f32(v108, v124), 0, v212));
      v133 = vsubq_f32(v99, vmlaq_f32(vmulq_n_f32(v109, v124), 0, v214));
      v134 = vsubq_f32(*v83, vmlaq_f32(vmulq_n_f32(v111, v124), 0, v216));
      v135 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v134, v134), v133, v133), v132, v132), v131, v131), v130, v130), v129, v129), v128, v128), v127, v127), v126, v126), v125, v125);
      v136 = vsubq_f32(v113, vmlaq_f32(vmulq_n_f32(v122, v124), 0, v114));
      v137 = vmulq_f32(v136, v136);
      v138 = (vaddv_f32(*&vpaddq_f32(v135, v135)) + ((v112 - (v124 * v115.f32[0])) * (v112 - (v124 * v115.f32[0])))) + vaddv_f32(*&vpaddq_f32(v137, v137));
      if (v138 < v202)
      {
        *a13 = v87;
        *a14 = 0;
        v202 = v138;
      }

      result = 0;
      *(v68 + v87 + 81) = v138;
      v91 = &v68[v90];
      *(v91 - 1) = 0.0;
      ++v87;
      *v91 = v124;
      v88 += 2;
      v86 += 180;
      v84 += 180;
      ++v90;
      if (v69 == v87)
      {
        return result;
      }
    }
  }

  else
  {
    v139 = (v76 << 9) | 4;
    v140 = (*v68[3917] + v139);
    v141 = (v85 + v139);
    v142 = 11008 * v76;
    v200 = 3.4028e38;
    v143 = 224;
    while (*a12 == 45)
    {
      v146 = *(v83 + 128);
      v145 = *(v83 + 144);
      v148 = *(v83 + 96);
      v147 = *(v83 + 112);
      v201 = *(v84 + v142 + 144);
      v203 = *(v84 + v142 + 112);
      v209 = *(v84 + v142 + 128);
      v211 = *(v84 + v142 + 96);
      v150 = *(v83 + 64);
      v149 = *(v83 + 80);
      v151 = *(v83 + 32);
      v152 = *(v83 + 48);
      v205 = *(v84 + v142 + 80);
      v207 = *(v84 + v142 + 48);
      v213 = *(v84 + v142 + 64);
      v215 = *(v84 + v142 + 32);
      v153 = *(v83 + 16);
      v154 = *(v84 + v142 + 16);
      v217 = *(v84 + 11008 * v76);
      v155 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*v83, v217), v215, v151), v213, v150), v211, v148), v209, v146), v154, v153), v207, v152), v205, v149), v203, v147), v201, v145);
      v156 = *(v86 + v142 + 128);
      v157 = *(v86 + v142 + 96);
      v158 = *(v86 + v142 + 64);
      v160 = *(v86 + v142 + 16);
      v159 = *(v86 + v142 + 32);
      v161 = *(v86 + 11008 * v76);
      v162 = *(v84 + v142 + 160);
      v163 = *(v83 + 160);
      v164 = *(v83 + 164);
      v165 = *(v84 + v142 + 164);
      v166 = vmulq_f32(v164, v165);
      v167 = (vaddv_f32(*&vpaddq_f32(v155, v155)) + (v163 * v162)) + vaddv_f32(*&vpaddq_f32(v166, v166));
      v168 = *(v86 + v142 + 48);
      v169 = *(v86 + v142 + 80);
      v170 = *(v86 + v142 + 112);
      v171 = *(v86 + v142 + 144);
      v172 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v161, *v83), v151, v159), v150, v158), v148, v157), v146, v156), v153, v160), v152, v168), v149, v169), v147, v170), v145, v171);
      v173 = *(v86 + v142 + 160);
      v174 = *(v86 + v142 + 164);
      v175 = vmulq_f32(v174, v164);
      v175.f32[0] = (vaddv_f32(*&vpaddq_f32(v172, v172)) + (v173 * v163)) + vaddv_f32(*&vpaddq_f32(v175, v175));
      v176 = (*(v140 - 1) * v167) + (*v140 * v175.f32[0]);
      v177 = (*(v141 - 1) * v167) + (*v141 * v175.f32[0]);
      v178 = vsubq_f32(v145, vmlaq_n_f32(vmulq_n_f32(v171, v177), v201, v176));
      v179 = vsubq_f32(v147, vmlaq_n_f32(vmulq_n_f32(v170, v177), v203, v176));
      v180 = vsubq_f32(v149, vmlaq_n_f32(vmulq_n_f32(v169, v177), v205, v176));
      v181 = vsubq_f32(v152, vmlaq_n_f32(vmulq_n_f32(v168, v177), v207, v176));
      v182 = vsubq_f32(v153, vmlaq_n_f32(vmulq_n_f32(v160, v177), v154, v176));
      v183 = vsubq_f32(v146, vmlaq_n_f32(vmulq_n_f32(v156, v177), v209, v176));
      v184 = vsubq_f32(v148, vmlaq_n_f32(vmulq_n_f32(v157, v177), v211, v176));
      v185 = vsubq_f32(v150, vmlaq_n_f32(vmulq_n_f32(v158, v177), v213, v176));
      v186 = vsubq_f32(v151, vmlaq_n_f32(vmulq_n_f32(v159, v177), v215, v176));
      v187 = vsubq_f32(*v83, vmlaq_n_f32(vmulq_n_f32(v161, v177), v217, v176));
      v188 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v187, v187), v186, v186), v185, v185), v184, v184), v183, v183), v182, v182), v181, v181), v180, v180), v179, v179), v178, v178);
      v189 = vsubq_f32(v164, vmlaq_n_f32(vmulq_n_f32(v174, v177), v165, v176));
      v190 = vmulq_f32(v189, v189);
      v191 = (vaddv_f32(*&vpaddq_f32(v188, v188)) + ((v163 - ((v177 * v173) + (v162 * v176))) * (v163 - ((v177 * v173) + (v162 * v176))))) + vaddv_f32(*&vpaddq_f32(v190, v190));
      if (v191 < v200)
      {
        *a13 = v87;
        *a14 = 0;
        v200 = v191;
      }

      result = 0;
      *(v68 + v87 + 81) = v191;
      v144 = &v68[v143];
      *(v144 - 1) = v176;
      *v144 = v177;
      ++v87;
      v140 += 2;
      v141 += 2;
      v86 += 180;
      v84 += 180;
      ++v143;
      if (v69 == v87)
      {
        return result;
      }
    }
  }

  return 1;
}

float peridot::PeridotDxpMacro::calcDetectionSNR(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8, float a9, float a10, float a11, double a12, double a13)
{
  if (!a2 || a5 - 1 <= a2)
  {
    *(a6 + 20) = 0;
    *(a6 + 24) = 0;
    result = fmaxf(*(a1 + 488 * a3 + 8 * a2 + 1788), 0.0);
    *(a6 + 32) = result;
    return result;
  }

  v13 = 24;
  v14 = (*(*(a1 + 31312) + 24 * a3) + 11008 * a4 + 180 * a2);
  v15 = v14[1];
  v16 = fmaxf(*v14, 0.0);
  v17 = v15 > v16;
  if (v15 > v16)
  {
    v16 = v14[1];
  }

  if (v14[2] > v16)
  {
    v17 = 2;
    v16 = v14[2];
  }

  if (v14[3] > v16)
  {
    v17 = 3;
    v16 = v14[3];
  }

  if (v14[4] > v16)
  {
    v17 = 4;
    v16 = v14[4];
  }

  if (v14[5] > v16)
  {
    v17 = 5;
    v16 = v14[5];
  }

  if (v14[6] > v16)
  {
    v17 = 6;
    v16 = v14[6];
  }

  if (v14[7] > v16)
  {
    v17 = 7;
    v16 = v14[7];
  }

  if (v14[8] > v16)
  {
    v17 = 8;
    v16 = v14[8];
  }

  if (v14[9] > v16)
  {
    v17 = 9;
    v16 = v14[9];
  }

  if (v14[10] > v16)
  {
    v17 = 10;
    v16 = v14[10];
  }

  if (v14[11] > v16)
  {
    v17 = 11;
    v16 = v14[11];
  }

  if (v14[12] > v16)
  {
    v17 = 12;
    v16 = v14[12];
  }

  if (v14[13] > v16)
  {
    v17 = 13;
    v16 = v14[13];
  }

  if (v14[14] > v16)
  {
    v17 = 14;
    v16 = v14[14];
  }

  if (v14[15] > v16)
  {
    v17 = 15;
    v16 = v14[15];
  }

  if (v14[16] > v16)
  {
    v17 = 16;
    v16 = v14[16];
  }

  if (v14[17] > v16)
  {
    v17 = 17;
    v16 = v14[17];
  }

  if (v14[18] > v16)
  {
    v17 = 18;
    v16 = v14[18];
  }

  if (v14[19] > v16)
  {
    v17 = 19;
    v16 = v14[19];
  }

  if (v14[20] > v16)
  {
    v17 = 20;
    v16 = v14[20];
  }

  if (v14[21] > v16)
  {
    v17 = 21;
    v16 = v14[21];
  }

  if (v14[22] > v16)
  {
    v17 = 22;
    v16 = v14[22];
  }

  if (v14[23] > v16)
  {
    v17 = 23;
    v16 = v14[23];
  }

  if (v14[24] > v16)
  {
    v16 = v14[24];
  }

  else
  {
    v13 = v17;
  }

  if (v14[25] > v16)
  {
    v13 = 25;
    v16 = v14[25];
  }

  if (v14[26] > v16)
  {
    v13 = 26;
    v16 = v14[26];
  }

  if (v14[27] > v16)
  {
    v13 = 27;
    v16 = v14[27];
  }

  if (v14[28] > v16)
  {
    v13 = 28;
    v16 = v14[28];
  }

  if (v14[29] > v16)
  {
    v13 = 29;
    v16 = v14[29];
  }

  if (v14[30] > v16)
  {
    v13 = 30;
    v16 = v14[30];
  }

  if (v14[31] > v16)
  {
    v13 = 31;
    v16 = v14[31];
  }

  if (v14[32] > v16)
  {
    v13 = 32;
    v16 = v14[32];
  }

  if (v14[33] > v16)
  {
    v13 = 33;
    v16 = v14[33];
  }

  if (v14[34] > v16)
  {
    v13 = 34;
    v16 = v14[34];
  }

  if (v14[35] > v16)
  {
    v13 = 35;
    v16 = v14[35];
  }

  if (v14[36] > v16)
  {
    v13 = 36;
    v16 = v14[36];
  }

  if (v14[37] > v16)
  {
    v13 = 37;
    v16 = v14[37];
  }

  if (v14[38] > v16)
  {
    v13 = 38;
    v16 = v14[38];
  }

  if (v14[39] > v16)
  {
    v13 = 39;
    v16 = v14[39];
  }

  if (v14[40] > v16)
  {
    v13 = 40;
    v16 = v14[40];
  }

  if (v14[41] > v16)
  {
    v13 = 41;
    v16 = v14[41];
  }

  if (v14[42] > v16)
  {
    v16 = v14[42];
    v13 = 42;
  }

  if (v14[43] > v16)
  {
    v13 = 43;
    v16 = v14[43];
  }

  if (v14[44] <= v16)
  {
    v18 = v13;
  }

  else
  {
    v18 = 44;
  }

  if (v18 >= 0x2A)
  {
    v19 = 42;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 - v18 + 7;
  *a8 = v20;
  if (v20)
  {
    v21 = 0;
    do
    {
      *(a7 + 8 * v21) = v18 - 3 + v21;
      ++v21;
      v20 = *a8;
    }

    while (v21 < *a8);
  }

  LODWORD(a13) = *(a1 + 488 * a3 + 8 * a2 + 1788);
  v22 = 0.0;
  if (v20)
  {
    v23 = *(*(a1 + 31288) + 24 * a3);
    if (v20 > 7)
    {
      v24 = v20 & 0xFFFFFFFFFFFFFFF8;
      v27 = vdupq_lane_s32(*&a13, 0);
      v28 = (180 * a2 + 11008 * a4 + 4 * v18 + v23 + 4);
      v29 = 0uLL;
      v30 = v20 & 0xFFFFFFFFFFFFFFF8;
      v31 = 0uLL;
      do
      {
        v29 = vmlaq_f32(v29, v27, v28[-1]);
        v31 = vmlaq_f32(v31, v27, *v28);
        v28 += 2;
        v30 -= 8;
      }

      while (v30);
      v32 = vaddq_f32(v31, v29);
      v25 = vaddv_f32(*&vpaddq_f32(v32, v32));
      if (v20 == v24)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v24 = 0;
      v25 = 0.0;
    }

    v33 = v20 - v24;
    v34 = (180 * a2 + 11008 * a4 + 4 * (v18 + v24) + v23 - 12);
    do
    {
      v35 = *v34++;
      v25 = v25 + (v35 * *&a13);
      --v33;
    }

    while (v33);
LABEL_108:
    v22 = v25;
  }

  if (!a3)
  {
    a9 = a10;
  }

  v36 = fmax(v22, 0.0) + (a9 * v20);
  v37 = fmaxf(v36, 1.0 / a11);
  v38 = fmaxf(*&a13, 0.0);
  *(a6 + 32) = v38;
  v39 = fmax(*(a1 + 488 * a3 + 8 * a2 + 1792), 0.0);
  v40 = sqrtf(a11);
  *(a6 + 24) = v39;
  *(a6 + 28) = (v40 * v39) / sqrtf(v37);
  v41 = v39 / sqrtf(v37 + v39);
  if (*(a1 + 16) > a2 && v39 / (v38 + 0.001) < *(a1 + 20))
  {
    v41 = 0.0;
  }

  result = v41 * v40;
  *(a6 + 20) = result;
  return result;
}

BOOL peridot::PeridotDxpMacro::ML_detectionComp(void *a1, int a2, void *a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8, float *a9, unint64_t *a10)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = *(*a3 + 16);
  v212[182] = v13;
  v14 = v12 - v11;
  if (v12 != v11 && v13 != 0)
  {
    v32 = 0;
    v33 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
    if (v33 <= 1)
    {
      v33 = 1;
    }

    v34 = v13 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (!v32)
      {
        v47 = 0;
        v48 = *(v11 + 8);
        if (v13 < 8)
        {
          goto LABEL_45;
        }

        if (v211 - v48 < 0x20)
        {
          goto LABEL_45;
        }

        v49 = (v48 + 16);
        v50 = v212;
        v51 = v13 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v52 = *v49;
          *(v50 - 1) = *(v49 - 1);
          *v50 = v52;
          v50 += 2;
          v49 += 2;
          v51 -= 8;
        }

        while (v51);
        v47 = v13 & 0xFFFFFFFFFFFFFFF8;
        if (v13 != v34)
        {
LABEL_45:
          v53 = v13 - v47;
          v54 = 4 * v47;
          v55 = &v211[v47];
          v56 = (v48 + v54);
          do
          {
            v57 = *v56++;
            *v55++ = v57;
            --v53;
          }

          while (v53);
        }

        goto LABEL_24;
      }

      v35 = *(v11 + 24 * v32 + 8);
      if (v13 > 7 && (v211 < &v35->i32[v13] ? (v36 = v35 >= &v211[v13]) : (v36 = 1), v36))
      {
        v37 = v35 + 1;
        v38 = v212;
        v39 = v13 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v40 = vaddq_f32(*v38, *v37);
          v38[-1] = vaddq_f32(v38[-1], v37[-1]);
          *v38 = v40;
          v38 += 2;
          v37 += 2;
          v39 -= 8;
        }

        while (v39);
        v41 = v13 & 0xFFFFFFFFFFFFFFF8;
        if (v13 == v34)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v41 = 0;
      }

      v42 = v13 - v41;
      v43 = v41;
      v44 = &v211[v41];
      v45 = &v35->f32[v43];
      do
      {
        v46 = *v45++;
        *v44 = *v44 + v46;
        ++v44;
        --v42;
      }

      while (v42);
LABEL_24:
      ++v32;
    }

    while (v32 != v33);
  }

  v16 = a5 + ((a1[23] - a1[22]) >> 2) - 1;
  v18 = ((a1[23] - a1[22]) >> 2) - 1;
  v17 = (a1[23] - a1[22]) >> 2 == 1;
  if (v16 < a5)
  {
    return 1;
  }

  *a10 = v18;
  if (!v17)
  {
    v20 = a1[596];
    if (v18 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v18;
    }

    if (v18 <= 7 || (v22 = &v211[a5], (v20 - v22) < 0x20))
    {
      v23 = 0;
LABEL_15:
      v24 = v21 - v23;
      v25 = (v20 + 4 * v23);
      v26 = &v211[v23 + a5];
      do
      {
        v27 = *v26++;
        *v25++ = v27;
        --v24;
      }

      while (v24);
      goto LABEL_17;
    }

    v23 = v21 & 0xFFFFFFFFFFFFFFF8;
    v196 = (v20 + 16);
    v197 = (v22 + 4);
    v198 = v21 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v199 = *v197;
      *(v196 - 1) = *(v197 - 1);
      *v196 = v199;
      v196 += 2;
      v197 += 2;
      v198 -= 8;
    }

    while (v198);
    if (v18 != v23)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  v28 = a5 + 1;
  v29 = 1;
  if (a5 + 1 > 1)
  {
    v29 = a5 + 1;
  }

  if (v28 <= 7)
  {
    v30 = 0;
    v31 = 0;
LABEL_51:
    v63 = v29 - v30;
    v64 = &v211[v30];
    do
    {
      v65 = *v64++;
      v31.f32[0] = v31.f32[0] + v65;
      --v63;
    }

    while (v63);
    goto LABEL_53;
  }

  v30 = v29 & 0xFFFFFFFFFFFFFFF8;
  v58 = v212;
  v59 = 0uLL;
  v60 = v29 & 0xFFFFFFFFFFFFFFF8;
  v61 = 0uLL;
  do
  {
    v59 = vaddq_f32(v59, v58[-1]);
    v61 = vaddq_f32(v61, *v58);
    v58 += 2;
    v60 -= 8;
  }

  while (v60);
  v62 = vaddq_f32(v61, v59);
  v31 = vpaddq_f32(v62, v62).u64[0];
  v31.f32[0] = vaddv_f32(v31);
  if (v28 != v30)
  {
    goto LABEL_51;
  }

LABEL_53:
  v31.f32[0] = v31.f32[0] / v29;
  *a9 = v31.f32[0];
  if (v16 == a5)
  {
    goto LABEL_63;
  }

  v67 = a1[596];
  if (v18 <= 1)
  {
    v68 = 1;
  }

  else
  {
    v68 = v18;
  }

  if (v18 <= 7 || v67 < (a9 + 1) && v67 + 4 * v68 > a9)
  {
    v69 = 0;
LABEL_61:
    v70 = v68 - v69;
    v71 = (v67 + 4 * v69);
    do
    {
      *v71 = fmaxf(*v71 - *a9, 0.0);
      ++v71;
      --v70;
    }

    while (v70);
    goto LABEL_63;
  }

  v69 = v68 & 0xFFFFFFFFFFFFFFF8;
  v192 = vdupq_lane_s32(v31, 0);
  v193 = (v67 + 16);
  v194 = v68 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v195 = vmaxnmq_f32(vsubq_f32(*v193, v192), 0);
    v193[-1] = vmaxnmq_f32(vsubq_f32(v193[-1], v192), 0);
    *v193 = v195;
    v193 += 2;
    v194 -= 8;
  }

  while (v194);
  if (v18 != v69)
  {
    goto LABEL_61;
  }

  if (!a4)
  {
    return 0;
  }

LABEL_63:
  v73 = a4;
  v75 = a1 + 324;
  v77 = 4 * a7;
  v78 = a4;
  do
  {
    bzero(v75, v77);
    v75 += 244;
    --v78;
  }

  while (v78);
  if (a4 == 1 || !a7)
  {
    return 0;
  }

  if (*a10 != 45)
  {
    return 1;
  }

  v79 = a1[596];
  v80 = a1[3917];
  v81 = a1[3911];
  v82 = a1[3920];
  v83 = a1[3914];
  v84 = (v83 + 24);
  v85 = (v82 + 24);
  v86 = (v81 + 24);
  v87 = (v80 + 24);
  v88 = a4 - 1;
  v89 = (a6 << 9) | 4;
  v90 = a1 + 285;
  v91 = (a1 + 71);
  v92 = 11008 * a6;
  for (i = 1; ; ++i)
  {
    v94 = *v86;
    v95 = *v85;
    v96 = *v84;
    if (a8)
    {
      v97 = 0;
      v98 = (v95 + v89);
      v99 = v90;
      do
      {
        v101 = *(v79 + 48);
        v100 = *(v79 + 64);
        v102 = *(v79 + 128);
        v103 = *(v79 + 144);
        v104 = *(v79 + 96);
        v105 = *(v79 + 112);
        v106 = *(v94 + v92 + 128);
        v107 = *(v94 + v92 + 144);
        v108 = *(v94 + v92 + 112);
        v109 = *(v79 + 80);
        v110 = *(v94 + v92 + 80);
        v203 = *(v94 + v92 + 96);
        v205 = *(v94 + v92 + 64);
        v112 = *(v79 + 16);
        v111 = *(v79 + 32);
        v113 = *(v94 + v92 + 48);
        v114 = *(v94 + v92 + 16);
        v207 = *(v94 + v92 + 32);
        v209 = *(v94 + 11008 * a6);
        v115 = *(v96 + v92 + 128);
        v117 = *(v96 + v92 + 32);
        v116 = *(v96 + v92 + 48);
        v119 = *(v96 + 11008 * a6);
        v118 = *(v96 + v92 + 16);
        v120 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*v79, v209), v207, v111), v205, v100), v203, v104), v106, v102), v114, v112), v113, v101), v110, v109), v108, v105), v107, v103);
        v121 = *(v79 + 160);
        v122 = *(v79 + 164);
        v123 = vmulq_f32(*(v96 + v92 + 164), v122);
        v124 = vmulq_f32(v122, *(v94 + v92 + 164));
        v126 = *(v96 + v92 + 80);
        v125 = *(v96 + v92 + 96);
        v127 = *(v96 + v92 + 64);
        v124.f32[0] = (vaddv_f32(*&vpaddq_f32(v120, v120)) + (v121 * *(v94 + v92 + 160))) + vaddv_f32(*&vpaddq_f32(v124, v124));
        v128 = *(v96 + v92 + 112);
        v129 = *(v96 + v92 + 144);
        v130 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v119, *v79), v111, v117), v100, v127), v104, v125), v102, v115), v112, v118), v101, v116), v109, v126), v105, v128), v103, v129);
        v131 = *(v96 + v92 + 160);
        v123.f32[0] = (*(v98 - 1) * v124.f32[0]) + (*v98 * ((vaddv_f32(*&vpaddq_f32(v130, v130)) + (v131 * v121)) + vaddv_f32(*&vpaddq_f32(v123, v123))));
        v132 = vsubq_f32(v103, vmlaq_f32(vmulq_n_f32(v129, v123.f32[0]), 0, v107));
        v133 = vsubq_f32(v105, vmlaq_f32(vmulq_n_f32(v128, v123.f32[0]), 0, v108));
        v134 = vsubq_f32(v109, vmlaq_f32(vmulq_n_f32(v126, v123.f32[0]), 0, v110));
        v135 = vsubq_f32(v101, vmlaq_f32(vmulq_n_f32(v116, v123.f32[0]), 0, v113));
        v136 = vsubq_f32(v102, vmlaq_f32(vmulq_n_f32(v115, v123.f32[0]), 0, v106));
        v137 = vsubq_f32(v104, vmlaq_f32(vmulq_n_f32(v125, v123.f32[0]), 0, v203));
        v138 = vsubq_f32(v100, vmlaq_f32(vmulq_n_f32(v127, v123.f32[0]), 0, v205));
        v139 = vsubq_f32(v111, vmlaq_f32(vmulq_n_f32(v117, v123.f32[0]), 0, v207));
        v140 = vsubq_f32(*v79, vmlaq_f32(vmulq_n_f32(v119, v123.f32[0]), 0, v209));
        v141 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v140, v140), v139, v139), v138, v138), v137, v137);
        v142 = vsubq_f32(v112, vmlaq_f32(vmulq_n_f32(v118, v123.f32[0]), 0, v114));
        v143 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v141, v136, v136), v142, v142), v135, v135), v134, v134), v133, v133), v132, v132);
        v133.f32[0] = *(v79 + 164) - (v123.f32[0] * *(v96 + v92 + 164));
        v132.f32[0] = (vaddv_f32(*&vpaddq_f32(v143, v143)) + ((v121 - (v123.f32[0] * v131)) * (v121 - (v123.f32[0] * v131)))) + (v133.f32[0] * v133.f32[0]);
        v133.f32[0] = *(v79 + 168) - (v123.f32[0] * *(v96 + v92 + 168));
        v132.f32[0] = (v132.f32[0] + (v133.f32[0] * v133.f32[0])) + ((*(v79 + 172) - (v123.f32[0] * *(v96 + v92 + 172))) * (*(v79 + 172) - (v123.f32[0] * *(v96 + v92 + 172))));
        v133.f32[0] = *(v79 + 176) - (v123.f32[0] * *(v96 + v92 + 176));
        v91[v97] = v132.f32[0] + (v133.f32[0] * v133.f32[0]);
        *v99 = v123.i32[0];
        ++v97;
        v94 += 180;
        *(v99 - 1) = 0;
        v99 += 2;
        v96 += 180;
        v98 += 2;
      }

      while (a7 != v97);
    }

    else
    {
      v144 = (*v87 + v89);
      v145 = (v95 + v89);
      v146 = v91;
      v147 = v90;
      v148 = a7;
      do
      {
        v149 = *(v79 + 48);
        v150 = *(v79 + 64);
        v151 = *(v79 + 128);
        v152 = *(v79 + 144);
        v154 = *(v79 + 96);
        v153 = *(v79 + 112);
        v155 = *(v94 + v92 + 144);
        v156 = *(v94 + v92 + 112);
        v202 = *(v94 + v92 + 128);
        v204 = *(v94 + v92 + 96);
        v157 = *(v79 + 80);
        v158 = *(v94 + v92 + 80);
        v160 = *(v79 + 16);
        v159 = *(v79 + 32);
        v206 = *(v94 + v92 + 64);
        v208 = *(v94 + v92 + 32);
        v200 = *(v94 + v92 + 48);
        v201 = *(v94 + v92 + 16);
        v210 = *(v94 + 11008 * a6);
        v161 = *(v96 + v92 + 128);
        v162 = *(v96 + v92 + 96);
        v164 = *(v96 + v92 + 48);
        v163 = *(v96 + v92 + 64);
        v166 = *(v96 + v92 + 16);
        v165 = *(v96 + v92 + 32);
        v167 = *(v96 + 11008 * a6);
        v168 = *(v94 + v92 + 160);
        v169 = *(v79 + 164);
        v170 = vmulq_f32(*(v96 + v92 + 164), v169);
        v171 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*v79, v210), v208, v159), v206, v150), v204, v154), v202, v151), v201, v160), v200, v149), v158, v157), v156, v153), v155, v152);
        v172 = vmulq_f32(v169, *(v94 + v92 + 164));
        v173 = *(v79 + 160);
        v172.f32[0] = (vaddv_f32(*&vpaddq_f32(v171, v171)) + (v173 * v168)) + vaddv_f32(*&vpaddq_f32(v172, v172));
        v174 = *(v96 + v92 + 80);
        v175 = *(v96 + v92 + 112);
        v176 = *(v96 + v92 + 144);
        v177 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v167, *v79), v159, v165), v150, v163), v154, v162), v151, v161), v160, v166), v149, v164), v157, v174), v153, v175), v152, v176);
        v178 = *(v96 + v92 + 160);
        v177.f32[0] = (vaddv_f32(*&vpaddq_f32(v177, v177)) + (v178 * v173)) + vaddv_f32(*&vpaddq_f32(v170, v170));
        v170.f32[0] = *(v144 - 1) * v172.f32[0];
        v172.f32[0] = (*(v145 - 1) * v172.f32[0]) + (*v145 * v177.f32[0]);
        v170.f32[0] = v170.f32[0] + (*v144 * v177.f32[0]);
        v179 = vsubq_f32(v152, vmlaq_n_f32(vmulq_n_f32(v176, v172.f32[0]), v155, v170.f32[0]));
        v180 = vsubq_f32(v153, vmlaq_n_f32(vmulq_n_f32(v175, v172.f32[0]), v156, v170.f32[0]));
        v181 = vmlaq_n_f32(vmulq_n_f32(v174, v172.f32[0]), v158, v170.f32[0]);
        v182 = vsubq_f32(v149, vmlaq_n_f32(vmulq_n_f32(v164, v172.f32[0]), v200, v170.f32[0]));
        v183 = vsubq_f32(v160, vmlaq_n_f32(vmulq_n_f32(v166, v172.f32[0]), v201, v170.f32[0]));
        v184 = vsubq_f32(v151, vmlaq_n_f32(vmulq_n_f32(v161, v172.f32[0]), v202, v170.f32[0]));
        v185 = vsubq_f32(v154, vmlaq_n_f32(vmulq_n_f32(v162, v172.f32[0]), v204, v170.f32[0]));
        v186 = vsubq_f32(v150, vmlaq_n_f32(vmulq_n_f32(v163, v172.f32[0]), v206, v170.f32[0]));
        v187 = vsubq_f32(v159, vmlaq_n_f32(vmulq_n_f32(v165, v172.f32[0]), v208, v170.f32[0]));
        v188 = vsubq_f32(*v79, vmlaq_n_f32(vmulq_n_f32(v167, v172.f32[0]), v210, v170.f32[0]));
        v189 = vsubq_f32(v157, v181);
        v190 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v188, v188), v187, v187), v186, v186), v185, v185), v184, v184), v183, v183), v182, v182), v189, v189), v180, v180), v179, v179);
        v180.f32[0] = *(v79 + 164) - ((v172.f32[0] * *(v96 + v92 + 164)) + (*(v94 + v92 + 164) * v170.f32[0]));
        v189.f32[0] = *(v79 + 168) - ((v172.f32[0] * *(v96 + v92 + 168)) + (*(v94 + v92 + 168) * v170.f32[0]));
        v179.f32[0] = ((vaddv_f32(*&vpaddq_f32(v190, v190)) + ((v173 - ((v172.f32[0] * v178) + (v168 * v170.f32[0]))) * (v173 - ((v172.f32[0] * v178) + (v168 * v170.f32[0]))))) + (v180.f32[0] * v180.f32[0])) + (v189.f32[0] * v189.f32[0]);
        v189.f32[0] = *(v79 + 172) - ((v172.f32[0] * *(v96 + v92 + 172)) + (*(v94 + v92 + 172) * v170.f32[0]));
        v180.f32[0] = *(v79 + 176) - ((v172.f32[0] * *(v96 + v92 + 176)) + (*(v94 + v92 + 176) * v170.f32[0]));
        *v146++ = (v179.f32[0] + (v189.f32[0] * v189.f32[0])) + (v180.f32[0] * v180.f32[0]);
        *(v147 - 1) = v170.i32[0];
        *v147 = v172.i32[0];
        v144 += 2;
        v147 += 2;
        v94 += 180;
        v145 += 2;
        v96 += 180;
        --v148;
      }

      while (v148);
    }

    v191 = i + 1;
    if (i == v88)
    {
      break;
    }

    v87 = (v80 + 24 * v191);
    v86 = (v81 + 24 * v191);
    v85 = (v82 + 24 * v191);
    v84 = (v83 + 24 * v191);
    v90 += 122;
    v91 += 61;
  }

  return v191 < v73;
}

void **std::vector<std::vector<float>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void peridot::PeridotDxpMacro::findImageStrayT0(peridot::PeridotDxpMacro *this, const peridot::ImgHistogram *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = *(this + 77);
  v9 = fmax((v8 - 2), 1.0);
  *a3 = 0;
  *a4 = 0;
  peridot::PeridotDxpMacro::findStrayT0New(this, a2, v9, v8 + 1, a3, a4, v9);
  if (*a3 == *(a2 + 2))
  {
    *a3 = *(this + 77);
    *a4 = 2;
  }
}

void peridot::PeridotDxpMacro::updateReferenceStrayBegin(peridot::PeridotDxpMacro *this, const peridot::RefHistogram *a2, double a3)
{
  v3 = *&a3;
  v7 = 0;
  peridot::PeridotDxpMacro::findStrayT0New(this, a2, 0, 24, &v7, &v6, a3);
  if (v7 != *(a2 + 2))
  {
    *(this + 77) = fmax((v7 + v3), 0.0);
  }
}

void log_to_os_log(const char *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = a1;
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", &v2, 0xCu);
  }
}

void log_to_os_log_error(const char *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = a1;
    _os_log_error_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
  }
}

void log_to_os_log_debug(const char *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315138;
    v3 = a1;
    _os_log_debug_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s", &v2, 0xCu);
  }
}

void peridot_depth_log(const char *__format, ...)
{
  va_start(va, __format);
  v2 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x400uLL, __format, va);
  peridot_depth_log_function(__str);
  if (peridot_depth_log_print_to_stdout == 1)
  {
    puts(__str);
  }
}

void peridot_depth_log_error(const char *__format, ...)
{
  va_start(va, __format);
  v2 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x400uLL, __format, va);
  peridot_depth_log_error_function(__str);
  if (peridot_depth_log_print_to_stdout == 1)
  {
    puts(__str);
  }
}

void peridot_depth_log_debug(const char *__format, ...)
{
  va_start(va, __format);
  v2 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x400uLL, __format, va);
  peridot_depth_log_debug_function(__str);
  if (peridot_depth_log_print_to_stdout == 1)
  {
    puts(__str);
  }
}

void sub_224753734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  Matrix<double>::~Matrix(&a26);
  Matrix<double>::~Matrix(&a21);
  Matrix<double>::~Matrix(&a16);
  Matrix<double>::~Matrix(&a36);
  Matrix<double>::~Matrix(&a41);
  Matrix<double>::~Matrix(&a46);
  Matrix<double>::~Matrix(&a51);
  Matrix<double>::~Matrix(&a56);
  Matrix<double>::~Matrix(&a61);
  Matrix<double>::~Matrix(v61 - 232);
  Matrix<double>::~Matrix(v61 - 192);
  Matrix<double>::~Matrix(v61 - 152);
  _Unwind_Resume(a1);
}

void GmoE::rotationMatrixToAngles(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 20);
  v5 = &v3[(2 * v4)];
  v6 = v5[1];
  v7 = v5[2];
  v8 = atan2(v6, v7);
  v9 = atan2(-*v5, sqrt(v6 * v6 + v7 * v7));
  v10 = atan2(v3[v4], *v3);
  **(a2 + 8) = v8;
  *(*(a2 + 8) + 8) = v9;
  *(*(a2 + 8) + 16) = v10;
}

__CFData *PDPeridotCalibCreateWithCalibrationDictionary(peridot::CalibManager *a1)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 402528);
  v3 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 402528);
    MutableBytePtr = CFDataGetMutableBytePtr(v3);
    if ((peridot::CalibManager::fillPeridotCalib(a1, MutableBytePtr, v5) & 1) == 0)
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t PDPeridotCalibGetMpcUUIDFromCalibrationBlob(CFDataRef theData, uint64_t a2)
{
  result = 0;
  if (theData)
  {
    if (a2)
    {
      v7[1] = CFDataGetLength(theData);
      v7[0] = CFDataGetBytePtr(theData);
      peridot::CalibManager::readMpcUUID(v7, a2, v5, v6);
    }
  }

  return result;
}

__CFData *PDPeridotCalibCreateIspFirmwareCalib(__CFData *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"Version";
  v3 = [MEMORY[0x277CCABB0] numberWithLong:a2];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  return peridot::CalibManager::createIspFirmwareCalib(MutableBytePtr, v4, v6);
}

__CFData *PDPeridotCalibCreateIspFirmwareCalibWithOptions(__CFData *a1, _PeridotCalib *a2)
{
  MutableBytePtr = CFDataGetMutableBytePtr(a1);

  return peridot::CalibManager::createIspFirmwareCalib(MutableBytePtr, a2, v4);
}

__n128 PDPeridotCalibGetFlatFieldUUID(__CFData *a1, __n128 *a2)
{
  result = *(CFDataGetMutableBytePtr(a1) + 402488);
  *a2 = result;
  return result;
}

__n128 PDPeridotCalibGetMpcUUID(__CFData *a1, __n128 *a2)
{
  result = *(CFDataGetMutableBytePtr(a1) + 402504);
  *a2 = result;
  return result;
}

float32x2_t PDPeridotCalibGetFactoryWideToPeridotTransform(__CFData *a1)
{
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  v2 = *(MutableBytePtr + 402152);
  v2.f64[1] = *(MutableBytePtr + 50273);
  return vcvt_f32_f64(v2);
}

float32x2_t PDPeridotCalibGetOperationalWideToPeridotTransform(__CFData *a1)
{
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  v2 = *(MutableBytePtr + 402248);
  v2.f64[1] = *(MutableBytePtr + 50285);
  return vcvt_f32_f64(v2);
}

__n128 PDPeridotCalibSetOperationalWideToPeridotTransform(__CFData *a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5)
{
  v11 = vcvtq_f64_f32(vzip1_s32(*a2.i8, *a3.i8));
  v9 = vcvtq_f64_f32(vzip1_s32(*a4.i8, *a5.i8));
  v10 = vcvtq_f64_f32(vzip2_s32(*a2.i8, *a3.i8));
  v12 = vcvtq_f64_f32(vzip2_s32(*a4.i8, *a5.i8));
  v7 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a4, a4, 8uLL), *&vextq_s8(a5, a5, 8uLL)));
  v8 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), *&vextq_s8(a3, a3, 8uLL)));
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  *(MutableBytePtr + 402248) = v11;
  *(MutableBytePtr + 402264) = v9;
  *(MutableBytePtr + 402280) = v10;
  *(MutableBytePtr + 402296) = v12;
  result = v7;
  *(MutableBytePtr + 402312) = v8;
  *(MutableBytePtr + 402328) = v7;
  return result;
}

void PDPeridotCalibResetStray(__CFData *a1)
{
  MutableBytePtr = CFDataGetMutableBytePtr(a1);

  peridot::CalibManager::resetStrayCalib(MutableBytePtr, 0xFFFFFFFFLL);
}

uint64_t PDPeridotCalibCalibrationBlobsFromNVM(peridot::CalibManager *a1, const __CFData *a2)
{
  v4 = MGGetStringAnswer();
  v5 = [v4 UTF8String];
  v8 = peridot::CalibManager::blobsFromNVM(a1, a2, v5, v6, v7);

  CFRelease(v4);
  return v8;
}

uint64_t PDPeridotCalibCalibrationBlobsFromNVMForDevice(peridot::CalibManager *a1, const __CFData *a2, void *a3)
{
  v5 = a3;
  v6 = [v5 UTF8String];
  v9 = peridot::CalibManager::blobsFromNVM(a1, a2, v6, v7, v8);

  return v9;
}

peridot::PeridotDXPCalib *peridot::PeridotDXPCalib::PeridotDXPCalib(peridot::PeridotDXPCalib *this)
{
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 212) = xmmword_2247A4CE0;
  *(this + 426) = 0x2EDBE6FF3164D5FBLL;
  *(this + 467) = 0;
  *(this + 3528) = 0u;
  *(this + 3544) = 0u;
  *(this + 3560) = 0u;
  *(this + 3576) = 0u;
  *(this + 3592) = 0u;
  *(this + 3608) = 0u;
  *(this + 3624) = 0u;
  *(this + 3640) = 0u;
  *(this + 3656) = 0u;
  *(this + 3672) = 0u;
  *(this + 3688) = 0u;
  *(this + 3704) = 0u;
  *(this + 3720) = 0u;
  *(this + 239) = 0u;
  *(this + 238) = 0u;
  *(this + 237) = 0u;
  *(this + 492) = 0;
  *(this + 245) = 0u;
  *(this + 244) = 0u;
  *(this + 243) = 0u;
  *(this + 242) = 0u;
  *(this + 249) = 0u;
  *(this + 248) = 0u;
  *(this + 247) = 0u;
  SparseMatrix::SparseMatrix((this + 40864));
  *(this + 42433) = 1;
  return this;
}

void sub_2247540AC(_Unwind_Exception *exception_object)
{
  v7 = v1[497];
  if (v7)
  {
    v1[498] = v7;
    operator delete(v7);
    v8 = *v5;
    if (!*v5)
    {
LABEL_3:
      v9 = v1[490];
      if (!v9)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = *v5;
    if (!*v5)
    {
      goto LABEL_3;
    }
  }

  v1[495] = v8;
  operator delete(v8);
  v9 = v1[490];
  if (!v9)
  {
LABEL_4:
    v10 = v1[487];
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v1[491] = v9;
  operator delete(v9);
  v10 = v1[487];
  if (!v10)
  {
LABEL_5:
    v11 = *v4;
    if (!*v4)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v1[488] = v10;
  operator delete(v10);
  v11 = *v4;
  if (!*v4)
  {
LABEL_6:
    v12 = v1[477];
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v1[485] = v11;
  operator delete(v11);
  v12 = v1[477];
  if (!v12)
  {
LABEL_7:
    v13 = *v3;
    if (!*v3)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v1[478] = v12;
  operator delete(v12);
  v13 = *v3;
  if (!*v3)
  {
LABEL_8:
    v14 = v1[465];
    if (!v14)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v1[475] = v13;
  operator delete(v13);
  v14 = v1[465];
  if (!v14)
  {
LABEL_9:
    v15 = v1[462];
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v1[466] = v14;
  operator delete(v14);
  v15 = v1[462];
  if (!v15)
  {
LABEL_10:
    v16 = v1[459];
    if (!v16)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v1[463] = v15;
  operator delete(v15);
  v16 = v1[459];
  if (!v16)
  {
LABEL_11:
    v17 = v1[456];
    if (!v17)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v1[460] = v16;
  operator delete(v16);
  v17 = v1[456];
  if (!v17)
  {
LABEL_12:
    v18 = v1[453];
    if (!v18)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v1[457] = v17;
  operator delete(v17);
  v18 = v1[453];
  if (!v18)
  {
LABEL_13:
    v19 = v1[450];
    if (!v19)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v1[454] = v18;
  operator delete(v18);
  v19 = v1[450];
  if (!v19)
  {
LABEL_14:
    v20 = v1[447];
    if (!v20)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v1[451] = v19;
  operator delete(v19);
  v20 = v1[447];
  if (!v20)
  {
LABEL_15:
    v21 = v1[444];
    if (!v21)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v1[448] = v20;
  operator delete(v20);
  v21 = v1[444];
  if (!v21)
  {
LABEL_16:
    v22 = *v2;
    if (!*v2)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v1[445] = v21;
  operator delete(v21);
  v22 = *v2;
  if (!*v2)
  {
LABEL_17:
    v23 = v1[34];
    if (!v23)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v1[442] = v22;
  operator delete(v22);
  v23 = v1[34];
  if (!v23)
  {
LABEL_18:
    _Unwind_Resume(exception_object);
  }

LABEL_35:
  v1[35] = v23;
  operator delete(v23);
  _Unwind_Resume(exception_object);
}

void peridot::PeridotDXPCalib::~PeridotDXPCalib(peridot::PeridotDXPCalib *this)
{
  SparseMatrix::~SparseMatrix((this + 40864));
  v2 = *(this + 497);
  if (v2)
  {
    *(this + 498) = v2;
    operator delete(v2);
  }

  v3 = *(this + 494);
  if (v3)
  {
    *(this + 495) = v3;
    operator delete(v3);
  }

  v4 = *(this + 490);
  if (v4)
  {
    *(this + 491) = v4;
    operator delete(v4);
  }

  v5 = *(this + 487);
  if (v5)
  {
    *(this + 488) = v5;
    operator delete(v5);
  }

  v6 = *(this + 484);
  if (v6)
  {
    *(this + 485) = v6;
    operator delete(v6);
  }

  v7 = *(this + 477);
  if (v7)
  {
    *(this + 478) = v7;
    operator delete(v7);
  }

  v8 = *(this + 474);
  if (v8)
  {
    *(this + 475) = v8;
    operator delete(v8);
  }

  v9 = *(this + 465);
  if (v9)
  {
    *(this + 466) = v9;
    operator delete(v9);
  }

  v10 = *(this + 462);
  if (v10)
  {
    *(this + 463) = v10;
    operator delete(v10);
  }

  v11 = *(this + 459);
  if (v11)
  {
    *(this + 460) = v11;
    operator delete(v11);
  }

  v12 = *(this + 456);
  if (v12)
  {
    *(this + 457) = v12;
    operator delete(v12);
  }

  v13 = *(this + 453);
  if (v13)
  {
    *(this + 454) = v13;
    operator delete(v13);
  }

  v14 = *(this + 450);
  if (v14)
  {
    *(this + 451) = v14;
    operator delete(v14);
  }

  v15 = *(this + 447);
  if (v15)
  {
    *(this + 448) = v15;
    operator delete(v15);
  }

  v16 = *(this + 444);
  if (v16)
  {
    *(this + 445) = v16;
    operator delete(v16);
  }

  v17 = *(this + 441);
  if (v17)
  {
    *(this + 442) = v17;
    operator delete(v17);
  }

  v18 = *(this + 34);
  if (v18)
  {
    *(this + 35) = v18;
    operator delete(v18);
  }
}

void peridot::PeridotDXPCalib::init(peridot::PeridotDXPCalib *this, const _PeridotCalib *a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](this, a2, a3, a4);
  *(v4 + 6) = 16843009;
  *(v4 + 3516) = 8;
  *(v4 + 3508) = 0x900000001;
  *(v4 + 41028) = 0;
  *(v4 + 42424) = 0;
  *(v4 + 42432) = 0;
  *(v4 + 42429) = 1;
  if (v5)
  {
    *(v4 + 41028) = *(v5 + 402524);
    operator new();
  }

  operator new();
}

void sub_2247567C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  operator delete(v15);
  if (a11)
  {
    operator delete(a11);
    if (a15)
    {
LABEL_6:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (a15)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void peridot::PeridotDXPCalib::getMF(uint64_t a1, float **a2)
{
  v2 = a2[1];
  if (*a2 != v2 && *a2 + 1 != v2)
  {
    v4 = **a2;
    v5 = *a2 + 1;
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v4 < v6)
      {
        v4 = v7;
      }
    }

    while (v5 != v2);
  }

  operator new();
}

void sub_224756D7C(_Unwind_Exception *a1)
{
  *(v3 + 8) = v2;
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void peridot::PeridotDXPCalib::initQSFilter(peridot::PeridotDXPCalib *this)
{
  v2 = *(this + 459);
  v3 = *(this + 460);
  v4 = v2 + 1;
  v5 = v2 == v3 || v4 == v3;
  v6 = *(this + 459);
  if (!v5)
  {
    v7 = *v2;
    v6 = *(this + 459);
    v8 = v2 + 1;
    do
    {
      v9 = *v8++;
      v10 = v9;
      if (v7 < v9)
      {
        v7 = v10;
        v6 = v4;
      }

      v4 = v8;
    }

    while (v8 != v3);
  }

  if (v2 == v3)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *v6 * 0.075;
    v16 = v3 - v2;
    if (v16 <= 1)
    {
      v16 = 1;
    }

    do
    {
      v17 = v2[v14];
      if (v11)
      {
        v18 = v12;
      }

      else
      {
        v18 = v14;
      }

      if (v17 > v15)
      {
        v13 = v14;
        v12 = v18;
      }

      v11 |= v17 > v15;
      ++v14;
    }

    while (v16 != v14);
  }

  v19 = __CFADD__(v13 - v12, 1);
  v20 = v13 - v12 + 1;
  if (!v19)
  {
    if (!(v20 >> 62))
    {
      operator new();
    }

    goto LABEL_51;
  }

  v21 = v6 - v2;
  v22 = *(this + 494);
  if (v22)
  {
    *(this + 495) = v22;
    operator delete(v22);
  }

  *(this + 494) = 0;
  *(this + 495) = 0;
  *(this + 496) = 0;
  *(this + 500) = v13 - v21;
  v23 = *(this + 462);
  v24 = *(this + 463);
  if (v23 == v24)
  {
    v26 = *(this + 462);
LABEL_44:
    v34 = 0;
    v33 = 0;
    goto LABEL_45;
  }

  v25 = v23 + 1;
  v26 = *(this + 462);
  if (v23 + 1 != v24)
  {
    v27 = *v23;
    v26 = *(this + 462);
    v28 = v23 + 1;
    do
    {
      v29 = *v28++;
      v30 = v29;
      if (v27 < v29)
      {
        v27 = v30;
        v26 = v25;
      }

      v25 = v28;
    }

    while (v28 != v24);
  }

  if (v23 == v24)
  {
    goto LABEL_44;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = *v26 * 0.075;
  v36 = v24 - v23;
  if (v36 <= 1)
  {
    v36 = 1;
  }

  do
  {
    v37 = v23[v31];
    if (v32)
    {
      v38 = v33;
    }

    else
    {
      v38 = v31;
    }

    if (v37 > v35)
    {
      v34 = v31;
      v33 = v38;
    }

    v32 |= v37 > v35;
    ++v31;
  }

  while (v36 != v31);
LABEL_45:
  if (v34 - v33 != -1)
  {
    if (!((v34 - v33 + 1) >> 62))
    {
      operator new();
    }

LABEL_51:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v39 = *(this + 497);
  if (v39)
  {
    *(this + 498) = v39;
    operator delete(v39);
  }

  *(this + 497) = 0;
  *(this + 498) = 0;
  *(this + 499) = 0;
  *(this + 501) = v34 - (v26 - v23);
}

void peridot::PeridotDXPCalib::getDTM(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = a1 + 4 * *(a1 + 3864);
  v5 = *(v4 + 3840);
  v6 = *(a1 + 3516);
  v7 = *(a1 + 3512);
  if (4 * v6 != -4)
  {
    operator new();
  }

  v8 = 0;
  v9 = *(v4 + 3852) * 0.22788;
  do
  {
    v10 = 0.0;
    if (v6 + v8 <= 0x23)
    {
      v11 = (v5 + (v9 * (v7 - 6 + v8))) * 0.000000001;
      v10 = v11 + (peridot::gDtmSigma[v6 + v8] * -3.0);
    }

    *(4 * v8++) = v10;
  }

  while (v6 + 1 != v8);
  v12 = 2 * v6;
  v13 = v6 + v7 - 6;
  v14 = (4 * v6 + 4);
  v15 = v14;
  do
  {
    if (v12 < 0x24)
    {
      v16 = (v5 + (v9 * v13)) * 0.000000001;
      *v14 = v16 + (peridot::gDtmSigma[v12] * -3.0);
    }

    else
    {
      *v14 = 0.0;
    }

    ++v14;
    --v13;
    --v12;
    --v15;
  }

  while (v15);
  v17 = v7 - 6;
  v18 = (8 * v6 + 8);
  for (i = v6; i != -1; --i)
  {
    if (i < 0x24)
    {
      v20 = (v5 + (v9 * v17)) * 0.000000001;
      *v18 = v20 + (peridot::gDtmSigma[i] * -3.0);
    }

    else
    {
      *v18 = 0.0;
    }

    ++v18;
    --v17;
  }

  v21 = 0;
  v22 = v7 - v6 - 6;
  do
  {
    if (v21 < 0x24)
    {
      v23 = (v5 + (v9 * v22)) * 0.000000001;
      *(12 * v6 + 0xC + 4 * v21) = v23 + (peridot::gDtmSigma[v21] * -3.0);
    }

    else
    {
      *(12 * v6 + 0xC + 4 * v21) = 0;
    }

    ++v21;
    ++v22;
  }

  while (v6 + 1 != v21);
  v25 = *a2;
  v24 = a2[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v26 = v24 - v25;
  if (v24 != v25)
  {
    if ((v26 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v26)
  {
    operator delete(v26);
  }
}

void sub_2247580A8(_Unwind_Exception *a1)
{
  *(v3 + 8) = v2;
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void peridot::PeridotDXPCalib::InputConfig::init(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v42 = a2 + 8 * a4;
  v7 = *(v42 + 3952);
  *a1 = a3;
  v8 = *(a2 + 920 + 8 * v7);
  *(a1 + 5) = v8[70];
  *(a1 + 6) = v8[69];
  v9 = a2 + 1816;
  v10 = *(a2 + 1816 + 8 * v7);
  *(a1 + 7) = v8[71];
  *(a1 + 64) = *(v10 + 16);
  v11 = a2 + 3616;
  *(a1 + 4) = *(a2 + 3616 + v7);
  v12 = *(a2 + 24 + 8 * v7);
  v13 = *(v12 + 60);
  v14 = *(v12 + 76);
  v15 = *(v12 + 92);
  *(a1 + 120) = *(v12 + 108);
  *(a1 + 104) = v15;
  *(a1 + 88) = v14;
  *(a1 + 72) = v13;
  v16 = *(a2 + 920 + 8 * v7);
  v17 = *(v16 + 8);
  v18 = *(v16 + 24);
  v19 = *(v16 + 40);
  *(a1 + 56) = *(v16 + 56);
  *(a1 + 40) = v19;
  *(a1 + 24) = v18;
  *(a1 + 8) = v17;
  *(a1 + 128) = *(*(a2 + 24 + 8 * v7) + 120);
  v43 = a2 + 920;
  *(a1 + 3364) = *(*(a2 + 920 + 8 * v7) + 5);
  v45 = a2 + 24;
  if (a5)
  {
    if (!(a5 >> 60))
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v41 = *(a1 + 256);
  if (v41)
  {
    *(a1 + 264) = v41;
    operator delete(v41);
  }

  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  if ((a3 - 1) < 2)
  {
    v20 = *(v42 + 4176);
    v21 = *(v42 + 4400);
    v22 = *(v43 + 8 * v20);
    *(a1 + 130) = v22[70];
    *(a1 + 131) = v22[69];
    *(a1 + 132) = v22[71];
    *(a1 + 190) = *(*(v9 + 8 * v20) + 16);
    *(a1 + 129) = *(v11 + v20);
    v23 = *(v45 + 8 * v20);
    v24 = *(v23 + 60);
    v25 = *(v23 + 76);
    v26 = *(v23 + 92);
    *(a1 + 246) = *(v23 + 108);
    *(a1 + 230) = v26;
    *(a1 + 214) = v25;
    *(a1 + 198) = v24;
    v27 = *(v43 + 8 * v20);
    v28 = *(v27 + 8);
    v29 = *(v27 + 24);
    v30 = *(v27 + 40);
    *(a1 + 181) = *(v27 + 56);
    *(a1 + 165) = v30;
    *(a1 + 149) = v29;
    *(a1 + 133) = v28;
    *(a1 + 254) = *(*(v45 + 8 * v20) + 120);
    v31 = *(v9 + 8 * v20);
    v32 = *(v31 + 2);
    *(a1 + 284) = *(v31 + 6);
    *(a1 + 280) = v32;
    *(a1 + 288) = *(*(v9 + 8 * v20) + 36);
    *(a1 + 292) = *(v11 + v20);
    v33 = *(v9 + 8 * v21);
    v34 = *(v33 + 2);
    *(a1 + 300) = *(v33 + 6);
    *(a1 + 296) = v34;
    *(a1 + 304) = *(*(v9 + 8 * v21) + 36);
    *(a1 + 308) = *(v11 + v21);
    v35 = *(v43 + 8 * v20);
    *(a1 + 3366) = *(v35 + 5);
    *(a1 + 3367) = *(v35 + 6);
    v36 = *(v43 + 8 * v21);
    *(a1 + 3368) = *(v36 + 5);
    *(a1 + 3369) = *(v36 + 6);
  }

  v37 = *(v45 + 8 * v7);
  v38 = *(v37 + 4);
  *(a1 + 3342) = *(v37 + 10);
  *(a1 + 3336) = v38;
  v39 = *(v45 + 8 * v7);
  v40 = *(v39 + 32);
  *(a1 + 3356) = *(v39 + 38);
  *(a1 + 3350) = v40;
  *(a1 + 3370) = *(*(a2 + 8 * v7 + 2712) + 22);
}

uint64_t peridot::PeridotDXPCalib::InputConfig::isChanged(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unint64_t a5, uint64_t a6)
{
  if (*a1 != a3)
  {
    return 1;
  }

  v6 = *(a2 + 8 * a4 + 920);
  if (*(a1 + 5) != *(v6 + 70))
  {
    return 1;
  }

  if (*(a1 + 6) != *(v6 + 69))
  {
    return 1;
  }

  if (*(a1 + 7) != *(v6 + 71))
  {
    return 1;
  }

  v7 = *(a2 + 1816 + 8 * a4);
  if (*(a1 + 64) != v7[8])
  {
    return 1;
  }

  if (*(a1 + 66) != v7[9])
  {
    return 1;
  }

  if (*(a1 + 68) != v7[10])
  {
    return 1;
  }

  if (*(a1 + 70) != v7[11])
  {
    return 1;
  }

  if (*(a1 + 4) != *(a2 + 3616 + a4))
  {
    return 1;
  }

  v8 = *(a2 + 8 * a4 + 24);
  if (*(a1 + 72) != *(v8 + 60) || *(a1 + 74) != *(v8 + 62) || *(a1 + 76) != *(v8 + 64) || *(a1 + 78) != *(v8 + 66) || *(a1 + 80) != *(v8 + 68) || *(a1 + 82) != *(v8 + 70) || *(a1 + 84) != *(v8 + 72) || *(a1 + 86) != *(v8 + 74) || *(a1 + 88) != *(v8 + 76) || *(a1 + 90) != *(v8 + 78) || *(a1 + 92) != *(v8 + 80) || *(a1 + 94) != *(v8 + 82) || *(a1 + 96) != *(v8 + 84) || *(a1 + 98) != *(v8 + 86) || *(a1 + 100) != *(v8 + 88) || *(a1 + 102) != *(v8 + 90) || *(a1 + 104) != *(v8 + 92) || *(a1 + 106) != *(v8 + 94) || *(a1 + 108) != *(v8 + 96) || *(a1 + 110) != *(v8 + 98) || *(a1 + 112) != *(v8 + 100) || *(a1 + 114) != *(v8 + 102) || *(a1 + 116) != *(v8 + 104) || *(a1 + 118) != *(v8 + 106) || *(a1 + 120) != *(v8 + 108) || *(a1 + 122) != *(v8 + 110) || *(a1 + 124) != *(v8 + 112) || *(a1 + 126) != *(v8 + 114) || *(a1 + 8) != *(v6 + 8) || *(a1 + 12) != *(v6 + 12) || *(a1 + 16) != *(v6 + 16) || *(a1 + 20) != *(v6 + 20) || *(a1 + 24) != *(v6 + 24) || *(a1 + 28) != *(v6 + 28) || *(a1 + 32) != *(v6 + 32) || *(a1 + 36) != *(v6 + 36) || *(a1 + 40) != *(v6 + 40) || *(a1 + 44) != *(v6 + 44) || *(a1 + 48) != *(v6 + 48) || *(a1 + 52) != *(v6 + 52) || *(a1 + 56) != *(v6 + 56) || *(a1 + 60) != *(v6 + 60) || *(a1 + 3336) != *(v8 + 4) || *(a1 + 3337) != *(v8 + 5) || *(a1 + 3338) != *(v8 + 6) || *(a1 + 3339) != *(v8 + 7) || *(a1 + 3340) != *(v8 + 8) || *(a1 + 3341) != *(v8 + 9) || *(a1 + 3342) != *(v8 + 10) || *(a1 + 3343) != *(v8 + 11) || *(a1 + 3344) != *(v8 + 12) || *(a1 + 3345) != *(v8 + 13) || *(a1 + 3346) != *(v8 + 14) || *(a1 + 3347) != *(v8 + 15) || *(a1 + 3348) != *(v8 + 16) || *(a1 + 3349) != *(v8 + 17) || *(a1 + 3350) != *(v8 + 32) || *(a1 + 3351) != *(v8 + 33) || *(a1 + 3352) != *(v8 + 34) || *(a1 + 3353) != *(v8 + 35) || *(a1 + 3354) != *(v8 + 36) || *(a1 + 3355) != *(v8 + 37) || *(a1 + 3356) != *(v8 + 38) || *(a1 + 3357) != *(v8 + 39) || *(a1 + 3358) != *(v8 + 40) || *(a1 + 3359) != *(v8 + 41) || *(a1 + 3360) != *(v8 + 42) || *(a1 + 3361) != *(v8 + 43) || *(a1 + 3362) != *(v8 + 44) || *(a1 + 3363) != *(v8 + 45) || *(a1 + 128) != *(v8 + 120) || *(a1 + 3364) != *(v6 + 5) || *(a1 + 3365) != *(v6 + 6))
  {
    return 1;
  }

  if (a5)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 256);
    while (1)
    {
      v12 = a4 + v9 * a6;
      v13 = *(a2 + 1816 + 8 * v12);
      if (*(v11 + 16 * v9) != *(v13 + 2))
      {
        break;
      }

      v14 = v11 + 16 * v9;
      if (*(v14 + 1) != *(v13 + 3) || *(v14 + 2) != *(v13 + 4) || *(v14 + 4) != *(v13 + 6) || *(v14 + 8) != *(v13 + 36) || *(v14 + 12) != *(a2 + 3616 + v12))
      {
        break;
      }

      result = 0;
      v9 = ++v10;
      if (v10 >= a5)
      {
        return result;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t peridot::PeridotDXPCalib::isConfigChanged(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(*(a2 + 16) + 9280 * *(a2 + 8 * a4 + 3952) + 52);
  v5 = v4 >> 4;
  v6 = v4 >> 12;
  if (*(a1 + 42433))
  {
    *a1 = a3;
    *(a1 + 4) = v6;
    v7 = 1;
    *(a1 + 5) = v5;
    *(a1 + 42433) = 0;
  }

  else if (*a1 == a3 && (v8 = *(a1 + 4), __PAIR64__(*(a1 + 5), v8) == __PAIR64__(v5, v6)) && !peridot::PeridotDXPCalib::InputConfig::isChanged(a1 + 16, a2, a3, *(a2 + 8 * a4 + 3952), v5, v8))
  {
    return 0;
  }

  else
  {
    peridot_depth_log("DXPCalib::configure: operation mode/ pri num/ phase num/frame config changed");
    return 1;
  }

  return v7;
}

void peridot::PeridotDXPCalib::configure(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v18[61] = *MEMORY[0x277D85DE8];
  peridot::PeridotDXPCalib::InputConfig::init(a1 + 16, a2, a3, a5, *(a1 + 5));
  v8 = *(a1 + 5);
  if (*(a1 + 5))
  {
    v9 = *(a1 + 272);
    v10 = (a1 + 3424);
    v11 = (a1 + 3464);
    do
    {
      LOWORD(v6) = *(v9 + 2);
      LOBYTE(v7) = *(v9 + 12);
      *&v12 = LODWORD(v7);
      *&v13 = (*(v9 + 4) << 8) + *&v12;
      v14 = 0.000000020833 / (LODWORD(v6) + (*&v13 * 0.000015259));
      *v10 = v14;
      LOBYTE(v13) = *v9;
      LOBYTE(v12) = *(v9 + 1);
      v15 = v12 + 1.0;
      v16 = ((v13 * 16.0) * v14) / v15;
      v10[3] = v16;
      v7 = v15 * *(v9 + 8);
      v6 = v16 / v14;
      v10[6] = v7;
      *v11++ = vcvtas_u32_f32(v6);
      v9 += 16;
      ++v10;
      --v8;
    }

    while (v8);
  }

  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  operator new();
}

void sub_224759F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31)
{
  std::__tree<std::__value_type<unsigned int,unsigned char>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned char>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned char>>>::destroy(a28);
  std::__tree<std::__value_type<unsigned int,unsigned char>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned char>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned char>>>::destroy(a31);
  _Unwind_Resume(a1);
}

void peridot::PeridotDXPCalib::modeConfigGetPixelsNum(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  operator new();
}

void sub_22475A13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

void peridot::PeridotDXPCalib::getBankModeSkews(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = (*(a2 + 8 * *(a2 + 8 * a3 + 3952) + 24) + 32);
  v8 = (a6 + 16);
  v9 = 14;
  do
  {
    v10 = *(v7 - 28);
    v11 = 0.0;
    v12 = 0.0;
    if (v10 > 1 && v10 <= 0x53)
    {
      v13 = *v7;
      if ((v13 - 2) <= 0x69)
      {
        v12 = (v13 + 108 * v10 + dword_2247B93D0[a4] - 108);
      }
    }

    *(v8 - 4) = v12;
    v14 = *(v7 - 28);
    if (v14 >= 1)
    {
      v15 = v14 + 1;
      if (v15 <= 0x53)
      {
        v16 = *v7;
        if ((v16 - 2) <= 0x69)
        {
          v11 = (v16 + 108 * v15 + dword_2247B93D0[a4] - 108);
        }
      }
    }

    *(v8 - 3) = v11;
    v17 = *(v7 - 28);
    v18 = 0.0;
    v19 = 0.0;
    if ((v17 & 0x80000000) == 0)
    {
      v20 = v17 + 2;
      if (v20 <= 0x53)
      {
        v21 = *v7;
        if ((v21 - 2) <= 0x69)
        {
          v19 = (v21 + 108 * v20 + dword_2247B93D0[a4] - 108);
        }
      }
    }

    *(v8 - 2) = v19;
    v22 = *(v7 - 28);
    if (v22 > 1 && v22 <= 0x53)
    {
      v23 = *v7;
      if ((v23 - 1) <= 0x69)
      {
        v18 = (v23 + 108 * v22 + dword_2247B93D0[a4] - 107);
      }
    }

    *(v8 - 1) = v18;
    v24 = *(v7 - 28);
    v25 = 0.0;
    v26 = 0.0;
    if (v24 >= 1)
    {
      v27 = v24 + 1;
      if (v27 <= 0x53)
      {
        v28 = *v7;
        if ((v28 - 1) <= 0x69)
        {
          v26 = (v28 + 108 * v27 + dword_2247B93D0[a4] - 107);
        }
      }
    }

    *v8 = v26;
    v29 = *(v7 - 28);
    if ((v29 & 0x80000000) == 0)
    {
      v30 = v29 + 2;
      if (v30 <= 0x53)
      {
        v31 = *v7;
        if ((v31 - 1) <= 0x69)
        {
          v25 = (v31 + 108 * v30 + dword_2247B93D0[a4] - 107);
        }
      }
    }

    v8[1] = v25;
    v32 = *(v7 - 28);
    v33 = 0.0;
    v34 = 0.0;
    if (v32 > 1 && v32 <= 0x53)
    {
      v35 = *v7;
      if (v35 <= 0x69)
      {
        v34 = (v35 + 108 * v32 + dword_2247B93D0[a4] - 106);
      }
    }

    v8[2] = v34;
    v36 = *(v7 - 28);
    if (v36 >= 1)
    {
      v37 = v36 + 1;
      if (v37 <= 0x53)
      {
        v38 = *v7;
        if (v38 <= 0x69)
        {
          v33 = (v38 + 108 * v37 + dword_2247B93D0[a4] - 106);
        }
      }
    }

    v8[3] = v33;
    v39 = *(v7 - 28);
    v40 = 0.0;
    if ((v39 & 0x80000000) == 0)
    {
      v41 = v39 + 2;
      if (v41 <= 0x53)
      {
        v42 = *v7;
        if (v42 <= 0x69)
        {
          v40 = (v42 + 108 * v41 + dword_2247B93D0[a4] - 106);
        }
      }
    }

    v8[4] = v40;
    ++v7;
    v8 += 9;
    --v9;
  }

  while (v9);
  v43 = 0;
  v44 = a2 + 920;
  v45 = a2 + 3728;
  v46 = (a5 + 4);
  v47 = (a6 + 8);
  do
  {
    v63 = v47;
    v64 = v46;
    v48 = 3;
    do
    {
      v50 = 0;
      v51 = *(v47 - 2);
      if (v51 != 0.0)
      {
        v52 = ((v51 + -1.0) + (v43 * *(a1 + 40912)));
        v53 = *(*(v44 + 8 * *(v45 + 8 * a3)) + 2);
        if (SparseMatrix::GetMatrixHeight((a1 + 40864)) <= v52 || (v54 = v53 - 1, SparseMatrix::GetMatrixWidth((a1 + 40864)) <= v54))
        {
          peridot_depth_log("getBankModeSkews: index exceeds matrix size");
          v50 = 0;
        }

        else
        {
          v50 = SparseMatrix::operator()(a1 + 40864, v52, v54);
        }
      }

      v55 = 0;
      *(v46 - 1) = v50;
      v56 = *(v47 - 1);
      if (v56 != 0.0)
      {
        v57 = ((v56 + -1.0) + (v43 * *(a1 + 40912)));
        v58 = *(*(v44 + 8 * *(v45 + 8 * a3)) + 2);
        if (SparseMatrix::GetMatrixHeight((a1 + 40864)) <= v57 || (v59 = v58 - 1, SparseMatrix::GetMatrixWidth((a1 + 40864)) <= v59))
        {
          peridot_depth_log("getBankModeSkews: index exceeds matrix size");
          v55 = 0;
        }

        else
        {
          v55 = SparseMatrix::operator()(a1 + 40864, v57, v59);
        }
      }

      v49 = 0;
      *v46 = v55;
      if (*v47 != 0.0)
      {
        v60 = ((*v47 + -1.0) + (v43 * *(a1 + 40912)));
        v61 = *(*(v44 + 8 * *(v45 + 8 * a3)) + 2);
        if (SparseMatrix::GetMatrixHeight((a1 + 40864)) <= v60 || (v62 = v61 - 1, SparseMatrix::GetMatrixWidth((a1 + 40864)) <= v62))
        {
          peridot_depth_log("getBankModeSkews: index exceeds matrix size");
          v49 = 0;
        }

        else
        {
          v49 = SparseMatrix::operator()(a1 + 40864, v60, v62);
        }
      }

      v46[1] = v49;
      v46 += 3;
      v47 += 3;
      --v48;
    }

    while (v48);
    ++v43;
    v46 = v64 + 9;
    v47 = v63 + 9;
  }

  while (v43 != 14);
}

void std::__tree<std::__value_type<unsigned int,unsigned char>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned char>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned char>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,unsigned char>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned char>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned char>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,unsigned char>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned char>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned char>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void peridot::PeridotDXPCalib::sphbm2histType(uint64_t a1, int a2, int *a3, _BYTE *a4, uint64_t a5)
{
  if (a2 > 6)
  {
    if (a2 > 9)
    {
      if (a2 == 10)
      {
        if ((*a3 & 0x20) != 0)
        {
          *a4 = 1;
          if ((*a3 & 0x200000) != 0)
          {
            goto LABEL_60;
          }
        }

        else if ((*a3 & 0x200000) != 0)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      }

      if (a2 != 11)
      {
        if (a2 != 12)
        {
          return;
        }

        goto LABEL_26;
      }

      v13 = *a3;
      if ((*a3 & 0x100) != 0)
      {
        *a4 = 1;
        v13 = *a3;
      }

      if ((v13 & 0x800) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (a2 != 7)
      {
        if (a2 != 8)
        {
          v7 = *a3;
          if ((*a3 & 4) != 0)
          {
            *a4 = 1;
            v7 = *a3;
          }

          if ((v7 & 0x40000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_60;
        }

        goto LABEL_26;
      }

      v12 = *a3;
      if ((*a3 & 0x80) != 0)
      {
        *a4 = 1;
        v12 = *a3;
      }

      if ((v12 & 0x400) == 0)
      {
        goto LABEL_54;
      }
    }

LABEL_50:

    goto LABEL_62;
  }

  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 != 5)
      {
        v8 = *a3;
        if ((*a3 & 0x10) != 0)
        {
          *a4 = 1;
          v8 = *a3;
        }

        if ((v8 & 0x100000) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_60;
      }

      if ((*a3 & 2) != 0)
      {
        *a4 = 1;
        if ((*a3 & 0x20000) != 0)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      }

      if ((*a3 & 0x20000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_60;
    }

LABEL_26:
    if (*(a5 + 23) < 0)
    {
      v9 = a5;
      v10 = a4;
      operator delete(*a5);
      a4 = v10;
      a5 = v9;
    }

    strcpy(a5, "PRX");
    *(a5 + 23) = 3;
    *a4 = 0;
    return;
  }

  switch(a2)
  {
    case 1:
      v11 = *a3;
      if (*a3)
      {
        *a4 = 1;
        v11 = *a3;
      }

      if ((v11 & 0x10000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_60;
    case 2:
      if ((*a3 & 8) == 0)
      {
        if ((*a3 & 0x80000) != 0)
        {
          goto LABEL_60;
        }

LABEL_54:

        goto LABEL_62;
      }

      *a4 = 1;
      if ((*a3 & 0x80000) == 0)
      {
        goto LABEL_54;
      }

LABEL_60:

LABEL_62:
      JUMPOUT(0x22AA52EE0);
    case 3:
      v6 = *a3;
      if ((*a3 & 0x40) != 0)
      {
        *a4 = 1;
        v6 = *a3;
      }

      if ((v6 & 0x200) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
  }
}

double peridot::PeridotDXPBaselineRemoval::PeridotDXPBaselineRemoval(peridot::PeridotDXPBaselineRemoval *this)
{
  *(this + 92) = 0;
  result = 0.0;
  *(this + 45) = 0u;
  *(this + 374) = 257;
  *(this + 750) = 0;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 62) = 0u;
  return result;
}

{
  *(this + 92) = 0;
  result = 0.0;
  *(this + 45) = 0u;
  *(this + 374) = 257;
  *(this + 750) = 0;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 62) = 0u;
  return result;
}

void peridot::PeridotDXPBaselineRemoval::~PeridotDXPBaselineRemoval(peridot::PeridotDXPBaselineRemoval *this)
{
  v2 = *(this + 127);
  if (v2)
  {
    *(this + 128) = v2;
    operator delete(v2);
  }

  v3 = *(this + 124);
  if (v3)
  {
    *(this + 125) = v3;
    operator delete(v3);
  }

  v4 = *(this + 116);
  if (v4)
  {
    *(this + 117) = v4;
    operator delete(v4);
  }

  v5 = *(this + 113);
  if (v5)
  {
    *(this + 114) = v5;
    operator delete(v5);
  }

  v6 = *(this + 110);
  if (v6)
  {
    *(this + 111) = v6;
    operator delete(v6);
  }

  v7 = *(this + 107);
  if (v7)
  {
    *(this + 108) = v7;
    operator delete(v7);
  }

  v8 = *(this + 104);
  if (v8)
  {
    *(this + 105) = v8;
    operator delete(v8);
  }

  v9 = *(this + 101);
  if (v9)
  {
    *(this + 102) = v9;
    operator delete(v9);
  }

  v10 = *(this + 97);
  if (v10)
  {
    *(this + 98) = v10;
    operator delete(v10);
  }

  v11 = *(this + 94);
  if (v11)
  {
    *(this + 95) = v11;
    operator delete(v11);
  }

  v12 = *(this + 90);
  if (v12)
  {
    *(this + 91) = v12;
    operator delete(v12);
  }
}

uint64_t peridot::PeridotDXPBaselineRemoval::init(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  *(a1 + 748) = a3;
  *(a1 + 750) = BYTE2(a3);
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  *(a1 + 240) = 0u;
  v4 = (a1 + 240);
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  result = peridot::PeridotDXPBaselineRemoval::strayPeakUpdate(a1, flt_2247B946C, &v26, flt_2247B9478, &v24);
  if (!result)
  {
    *(a1 + 432) = xmmword_2247A5080;
    *(a1 + 448) = xmmword_2247A5090;
    v6 = v4[8];
    v7 = v4[9];
    v8 = v4[6];
    *(a1 + 592) = v4[7];
    *(a1 + 608) = v6;
    v9 = v4[4];
    v10 = v4[5];
    v11 = v4[2];
    *(a1 + 528) = v4[3];
    *(a1 + 544) = v9;
    *(a1 + 560) = v10;
    *(a1 + 576) = v8;
    v12 = *v4;
    v13 = v4[1];
    *(a1 + 464) = xmmword_2247A5070;
    *(a1 + 480) = v12;
    *(a1 + 400) = 1082130432;
    *(a1 + 496) = v13;
    *(a1 + 512) = v11;
    v15 = v4[10];
    v14 = v4[11];
    *(a1 + 624) = v7;
    *(a1 + 640) = v15;
    v16 = v4[12];
    v17 = v4[13];
    *(a1 + 656) = v14;
    *(a1 + 672) = v16;
    v18 = v4[14];
    *(a1 + 688) = v17;
    *(a1 + 704) = v18;
    *(a1 + 168) = vdupq_n_s64(0x5CuLL);
    *(a1 + 160) = 1082130432;
    *(a1 + 184) = xmmword_2247A50A0;
    *(a1 + 216) = xmmword_2247A50B0;
    *(a1 + 232) = 12;
    *(a1 + 200) = xmmword_2247A50C0;
    *(a1 + 1040) = 1058642330;
    v19 = xmmword_2247A4650;
    v20 = (a1 + 1048);
    v21 = 368;
    v22 = vdupq_n_s64(2uLL);
    v23 = vdupq_n_s64(4uLL);
    do
    {
      *v20 = v19;
      v20[1] = vaddq_s64(v19, v22);
      v20 += 2;
      v19 = vaddq_s64(v19, v23);
      v21 -= 4;
    }

    while (v21);
    return 0;
  }

  return result;
}

uint64_t peridot::PeridotDXPBaselineRemoval::strayPeakUpdate(peridot::PeridotDXPBaselineRemoval *this, float *a2, float *a3, float *a4, float *a5)
{
  *(this + 60) = *a5;
  v5 = vcvtas_u32_f32(*a4);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  *(this + 32) = v6;
  v7 = v5 >= 9;
  v8 = v5 - 9;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *(this + 35) = v9;
  v10 = v6 + 14;
  *(this + 38) = v6 + 14;
  if (v6 > 0x170 || v9 > 0x170 || v10 >= 0x171)
  {
    goto LABEL_8;
  }

  v12 = *(this + 102);
  if (v12 <= 219)
  {
    v13 = 219;
  }

  else
  {
    v13 = *(this + 102);
  }

  *(this + 41) = (v13 - 120);
  v14 = vcvts_n_f32_u64((*(this + 95) - *(this + 94)) >> 2, 1uLL);
  v15 = floorf(v14);
  *(this + 44) = (v15 + v10);
  v16 = vcvtms_s32_f32(v14);
  v17 = v9 - v16;
  if (v17 >= -3)
  {
    v17 = -3;
  }

  v18 = (v12 + v17 + 3);
  if (v18 < 0)
  {
    goto LABEL_71;
  }

  *(this + 47) = v18;
  *(this + 61) = a5[1];
  v19 = vcvtas_u32_f32(a4[1]);
  if (v19)
  {
    v20 = v19 - 1;
  }

  else
  {
    v20 = 0;
  }

  *(this + 33) = v20;
  v7 = v19 >= 9;
  v21 = v19 - 9;
  if (!v7)
  {
    v21 = 0;
  }

  *(this + 36) = v21;
  v22 = v20 + 14;
  *(this + 39) = v20 + 14;
  if (v20 > 0x170 || v21 > 0x170 || v22 > 0x170)
  {
    goto LABEL_8;
  }

  v23 = *(this + 104);
  if (v23 <= 219)
  {
    v24 = 219;
  }

  else
  {
    v24 = *(this + 104);
  }

  *(this + 42) = (v24 - 120);
  *(this + 45) = (v15 + v22);
  v25 = v21 - v16;
  if (v25 >= -3)
  {
    v25 = -3;
  }

  v26 = (v23 + v25 + 3);
  if (v26 < 0)
  {
    goto LABEL_71;
  }

  *(this + 48) = v26;
  *(this + 62) = a5[2];
  v27 = vcvtas_u32_f32(a4[2]);
  if (v27)
  {
    v28 = v27 - 1;
  }

  else
  {
    v28 = 0;
  }

  *(this + 34) = v28;
  v7 = v27 >= 9;
  v29 = v27 - 9;
  if (!v7)
  {
    v29 = 0;
  }

  *(this + 37) = v29;
  v30 = v28 + 14;
  *(this + 40) = v28 + 14;
  if (v28 > 0x170 || v29 > 0x170 || v30 > 0x170)
  {
    goto LABEL_8;
  }

  v31 = *(this + 106);
  if (v31 <= 219)
  {
    v32 = 219;
  }

  else
  {
    v32 = *(this + 106);
  }

  *(this + 43) = (v32 - 120);
  *(this + 46) = (v15 + v30);
  v33 = v29 - v16;
  if (v33 >= -3)
  {
    v33 = -3;
  }

  v34 = (v31 + v33 + 3);
  if (v34 < 0)
  {
LABEL_71:
    peridot_depth_log("Wrong Configuration: strayRisingEdge", a2, a3);
    return 4;
  }

  *(this + 49) = v34;
  v35 = *(this + 20);
  *(this + 34) = *(this + 19);
  *(this + 35) = v35;
  v36 = *(this + 22);
  *(this + 36) = *(this + 21);
  *(this + 37) = v36;
  v37 = *(this + 16);
  *(this + 30) = *(this + 15);
  *(this + 31) = v37;
  v38 = *(this + 18);
  *(this + 32) = *(this + 17);
  *(this + 33) = v38;
  v39 = *(this + 28);
  *(this + 42) = *(this + 27);
  *(this + 43) = v39;
  *(this + 44) = *(this + 29);
  v40 = *(this + 24);
  *(this + 38) = *(this + 23);
  *(this + 39) = v40;
  v41 = *(this + 26);
  *(this + 40) = *(this + 25);
  *(this + 41) = v41;
  *this = *a3;
  v42 = vcvtas_u32_f32(*a2);
  v43 = v42 - 1;
  if (!v42)
  {
    v43 = 0;
  }

  *(this + 2) = v43;
  v7 = v42 >= 9;
  v44 = v42 - 9;
  v45 = v7 ? v44 : 0;
  *(this + 5) = v45;
  v46 = v43 + 14;
  *(this + 8) = v43 + 14;
  if (v43 > 0x5C || v45 > 0x5C || v46 >= 0x5D)
  {
    goto LABEL_8;
  }

  *(this + 11) = v43 + 29;
  *(this + 1) = a3[1];
  v47 = vcvtas_u32_f32(a2[1]);
  v48 = v47 - 1;
  if (!v47)
  {
    v48 = 0;
  }

  *(this + 3) = v48;
  v7 = v47 >= 9;
  v49 = v47 - 9;
  v50 = v7 ? v49 : 0;
  *(this + 6) = v50;
  v51 = v48 + 14;
  *(this + 9) = v48 + 14;
  if (v48 > 0x5C || v50 > 0x5C || v51 > 0x5C)
  {
    goto LABEL_8;
  }

  *(this + 12) = v48 + 29;
  *(this + 2) = a3[2];
  v52 = vcvtas_u32_f32(a2[2]);
  v53 = v52 - 1;
  if (!v52)
  {
    v53 = 0;
  }

  *(this + 4) = v53;
  v7 = v52 >= 9;
  v54 = v52 - 9;
  v55 = v7 ? v54 : 0;
  *(this + 7) = v55;
  v56 = v53 + 14;
  *(this + 10) = v53 + 14;
  if (v53 > 0x5C || v55 > 0x5C || v56 > 0x5C)
  {
LABEL_8:
    peridot_depth_log("Wrong Configuration: strayPeakUpdate", a2, a3);
    return 4;
  }

  *&v41 = floorf(vcvts_n_f32_u64((*(this + 98) - *(this + 97)) >> 2, 1uLL));
  *(this + 13) = v53 + 29;
  *(this + 14) = (*&v41 + v46);
  *(this + 136) = vcvtq_u64_f64(vcvtq_f64_f32(vsub_f32(vcvt_f32_f64(vcvtq_f64_u64(*(this + 168))), vdup_lane_s32(*&v41, 0))));
  *(this + 15) = (*&v41 + v51);
  *(this + 16) = (*&v41 + v56);
  *(this + 19) = (*(this + 23) - *&v41);
  return 0;
}