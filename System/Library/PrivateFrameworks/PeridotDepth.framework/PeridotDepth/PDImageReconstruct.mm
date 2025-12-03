@interface PDImageReconstruct
- (BOOL)pushFrames:(id)frames;
- (PDImageReconstruct)init;
- (__CVBuffer)createImageForBank:(unint64_t)bank pixelFormat:(unsigned int)format normalizeByExposure:(BOOL)exposure;
- (void)reset;
@end

@implementation PDImageReconstruct

- (__CVBuffer)createImageForBank:(unint64_t)bank pixelFormat:(unsigned int)format normalizeByExposure:(BOOL)exposure
{
  exposureCopy = exposure;
  bankCopy = bank;
  if (bank >= 8)
  {
    if (bank == -1)
    {
      bankCopy = 0;
      v9 = 1;
      v11 = 8;
      v10 = 108;
    }

    else
    {
      if (bank != -2)
      {
        peridot_depth_log("Requested to generate an image for an invalid bank: %lu", bank);
        return 0;
      }

      v9 = 0;
      bankCopy = 0;
      v11 = 8;
      v10 = 864;
    }
  }

  else
  {
    v9 = 1;
    v10 = 108;
    v11 = 1;
  }

  if (format != 875704422 && format != 1278226534)
  {
    PixelBufferUtils::pixelFormatAsString(*&format, pixelBufferOut);
    if (v69 >= 0)
    {
      v33 = pixelBufferOut;
    }

    else
    {
      v33 = pixelBufferOut[0];
    }

    peridot_depth_log("Cannot create peridot image for pixel format '%s'", v33);
    if (v69 < 0)
    {
      operator delete(pixelBufferOut[0]);
    }

    return 0;
  }

  pixelBufferOut[0] = 0;
  v12 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v12, 0x54uLL, v10, 0x4C303066u, BufferAttributes, pixelBufferOut))
  {
    v15 = 0;
  }

  else
  {
    v15 = pixelBufferOut[0];
  }

  LODWORD(v14) = 1.0;
  if (exposureCopy)
  {
    LODWORD(v14) = self->_exposure;
    v14 = 1.0 / *&v14;
    *&v14 = v14;
  }

  v67 = *&v14;
  CVPixelBufferLockBaseAddress(v15, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(v15);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v15);
  bzero(BaseAddress, BytesPerRow * v10);
  if (bankCopy < v11)
  {
    bankImages = self->_bankImages;
    v19 = vdupq_lane_s32(v67, 0);
    if (v9)
    {
      do
      {
        v20 = bankImages[bankCopy];
        v21 = BaseAddress + 10;
        v22 = 108;
        do
        {
          v23 = vmlaq_f32(v21[-9], vcvtq_f32_u32(v20[1]), v19);
          v21[-10] = vmlaq_f32(v21[-10], vcvtq_f32_u32(*v20), v19);
          v21[-9] = v23;
          v24 = vmlaq_f32(v21[-7], vcvtq_f32_u32(v20[3]), v19);
          v21[-8] = vmlaq_f32(v21[-8], vcvtq_f32_u32(v20[2]), v19);
          v21[-7] = v24;
          v25 = vmlaq_f32(v21[-5], vcvtq_f32_u32(v20[5]), v19);
          v21[-6] = vmlaq_f32(v21[-6], vcvtq_f32_u32(v20[4]), v19);
          v21[-5] = v25;
          v26 = vmlaq_f32(v21[-3], vcvtq_f32_u32(v20[7]), v19);
          v21[-4] = vmlaq_f32(v21[-4], vcvtq_f32_u32(v20[6]), v19);
          v21[-3] = v26;
          v27 = vmlaq_f32(v21[-1], vcvtq_f32_u32(v20[9]), v19);
          v21[-2] = vmlaq_f32(v21[-2], vcvtq_f32_u32(v20[8]), v19);
          v21[-1] = v27;
          v28 = vmlaq_f32(v21[1], vcvtq_f32_u32(v20[11]), v19);
          *v21 = vmlaq_f32(*v21, vcvtq_f32_u32(v20[10]), v19);
          v21[1] = v28;
          v29 = vmlaq_f32(v21[3], vcvtq_f32_u32(v20[13]), v19);
          v21[2] = vmlaq_f32(v21[2], vcvtq_f32_u32(v20[12]), v19);
          v21[3] = v29;
          v30 = vmlaq_f32(v21[5], vcvtq_f32_u32(v20[15]), v19);
          v21[4] = vmlaq_f32(v21[4], vcvtq_f32_u32(v20[14]), v19);
          v21[5] = v30;
          v31 = vmlaq_f32(v21[7], vcvtq_f32_u32(v20[17]), v19);
          v21[6] = vmlaq_f32(v21[6], vcvtq_f32_u32(v20[16]), v19);
          v21[7] = v31;
          v32 = vmlaq_f32(v21[9], vcvtq_f32_u32(v20[19]), v19);
          v21[8] = vmlaq_f32(v21[8], vcvtq_f32_u32(v20[18]), v19);
          v21[9] = v32;
          v21[10] = vmlaq_f32(v21[10], vcvtq_f32_u32(v20[20]), v19);
          v20 += 21;
          v21 = (v21 + BytesPerRow);
          --v22;
        }

        while (v22);
        ++bankCopy;
      }

      while (bankCopy != v11);
    }

    else
    {
      v35 = &BaseAddress[10] + 108 * BytesPerRow * bankCopy;
      do
      {
        v36 = bankImages[bankCopy];
        v37 = v35;
        v38 = 108;
        do
        {
          v39 = vmlaq_f32(v37[-9], vcvtq_f32_u32(v36[1]), v19);
          v37[-10] = vmlaq_f32(v37[-10], vcvtq_f32_u32(*v36), v19);
          v37[-9] = v39;
          v40 = vmlaq_f32(v37[-7], vcvtq_f32_u32(v36[3]), v19);
          v37[-8] = vmlaq_f32(v37[-8], vcvtq_f32_u32(v36[2]), v19);
          v37[-7] = v40;
          v41 = vmlaq_f32(v37[-5], vcvtq_f32_u32(v36[5]), v19);
          v37[-6] = vmlaq_f32(v37[-6], vcvtq_f32_u32(v36[4]), v19);
          v37[-5] = v41;
          v42 = vmlaq_f32(v37[-3], vcvtq_f32_u32(v36[7]), v19);
          v37[-4] = vmlaq_f32(v37[-4], vcvtq_f32_u32(v36[6]), v19);
          v37[-3] = v42;
          v43 = vmlaq_f32(v37[-1], vcvtq_f32_u32(v36[9]), v19);
          v37[-2] = vmlaq_f32(v37[-2], vcvtq_f32_u32(v36[8]), v19);
          v37[-1] = v43;
          v44 = vmlaq_f32(v37[1], vcvtq_f32_u32(v36[11]), v19);
          *v37 = vmlaq_f32(*v37, vcvtq_f32_u32(v36[10]), v19);
          v37[1] = v44;
          v45 = vmlaq_f32(v37[3], vcvtq_f32_u32(v36[13]), v19);
          v37[2] = vmlaq_f32(v37[2], vcvtq_f32_u32(v36[12]), v19);
          v37[3] = v45;
          v46 = vmlaq_f32(v37[5], vcvtq_f32_u32(v36[15]), v19);
          v37[4] = vmlaq_f32(v37[4], vcvtq_f32_u32(v36[14]), v19);
          v37[5] = v46;
          v47 = vmlaq_f32(v37[7], vcvtq_f32_u32(v36[17]), v19);
          v37[6] = vmlaq_f32(v37[6], vcvtq_f32_u32(v36[16]), v19);
          v37[7] = v47;
          v48 = vmlaq_f32(v37[9], vcvtq_f32_u32(v36[19]), v19);
          v37[8] = vmlaq_f32(v37[8], vcvtq_f32_u32(v36[18]), v19);
          v37[9] = v48;
          v37[10] = vmlaq_f32(v37[10], vcvtq_f32_u32(v36[20]), v19);
          v36 += 21;
          v37 = (v37 + BytesPerRow);
          --v38;
        }

        while (v38);
        ++bankCopy;
        v35 += 108 * BytesPerRow;
      }

      while (bankCopy != v11);
    }
  }

  if (format == 1278226534)
  {
    v34 = v15;
  }

  else
  {
    if (format != 875704422)
    {
      __assert_rtn("[PDImageReconstruct createImageForBank:pixelFormat:normalizeByExposure:]", "PDImageReconstruct.mm", 253, "false");
    }

    v49 = 0;
    v50 = 0.0;
    v51 = BaseAddress;
    do
    {
      for (i = 0; i != 84; ++i)
      {
        if (v50 < v51->f32[i])
        {
          v50 = v51->f32[i];
        }
      }

      ++v49;
      v51 = (v51 + BytesPerRow);
    }

    while (v49 != v10);
    pixelBufferOut[0] = 0;
    v53 = getBufferAttributes();
    if (CVPixelBufferCreate(v12, 0x54uLL, v10, 0x34323066u, v53, pixelBufferOut))
    {
      v34 = 0;
    }

    else
    {
      v34 = pixelBufferOut[0];
    }

    CVPixelBufferLockBaseAddress(v34, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v34, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v34, 0);
    if (BaseAddress < (BaseAddressOfPlane[5].i64 + BytesPerRowOfPlane * (v10 - 1) + 4) && BaseAddressOfPlane < (&BaseAddress[21] + BytesPerRow * (v10 - 1)) || ((BytesPerRowOfPlane | BytesPerRow) & 0x8000000000000000) != 0)
    {
      for (j = 0; j != v10; ++j)
      {
        for (k = 0; k != 84; ++k)
        {
          BaseAddressOfPlane->i8[k] = ((BaseAddress->f32[k] * 255.0) * (1.0 / v50));
        }

        BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
        BaseAddress = (BaseAddress + BytesPerRow);
      }
    }

    else
    {
      v60 = BaseAddressOfPlane + 3;
      v61 = BaseAddress + 12;
      v62 = 255.0 / v50;
      do
      {
        v70.val[1] = vcvtq_u32_f32(vmulq_n_f32(v61[-11], v62));
        v70.val[0] = vcvtq_u32_f32(vmulq_n_f32(v61[-12], v62));
        v70.val[2] = vcvtq_u32_f32(vmulq_n_f32(v61[-10], v62));
        v70.val[3] = vcvtq_u32_f32(vmulq_n_f32(v61[-9], v62));
        v60[-3] = vqtbl4q_s8(v70, xmmword_2247A4600);
        v70.val[1] = vcvtq_u32_f32(vmulq_n_f32(v61[-7], v62));
        v70.val[0] = vcvtq_u32_f32(vmulq_n_f32(v61[-8], v62));
        v70.val[2] = vcvtq_u32_f32(vmulq_n_f32(v61[-6], v62));
        v70.val[3] = vcvtq_u32_f32(vmulq_n_f32(v61[-5], v62));
        v60[-2] = vqtbl4q_s8(v70, xmmword_2247A4600);
        v70.val[1] = vcvtq_u32_f32(vmulq_n_f32(v61[-3], v62));
        v70.val[0] = vcvtq_u32_f32(vmulq_n_f32(v61[-4], v62));
        v70.val[2] = vcvtq_u32_f32(vmulq_n_f32(v61[-2], v62));
        v70.val[3] = vcvtq_u32_f32(vmulq_n_f32(v61[-1], v62));
        v60[-1] = vqtbl4q_s8(v70, xmmword_2247A4600);
        v70.val[1] = vcvtq_u32_f32(vmulq_n_f32(v61[1], v62));
        v70.val[0] = vcvtq_u32_f32(vmulq_n_f32(*v61, v62));
        v70.val[2] = vcvtq_u32_f32(vmulq_n_f32(v61[2], v62));
        v70.val[3] = vcvtq_u32_f32(vmulq_n_f32(v61[3], v62));
        *v60 = vqtbl4q_s8(v70, xmmword_2247A4600);
        v70.val[1] = vcvtq_u32_f32(vmulq_n_f32(v61[5], v62));
        v70.val[0] = vcvtq_u32_f32(vmulq_n_f32(v61[4], v62));
        v70.val[2] = vcvtq_u32_f32(vmulq_n_f32(v61[6], v62));
        v70.val[3] = vcvtq_u32_f32(vmulq_n_f32(v61[7], v62));
        v60[1] = vqtbl4q_s8(v70, xmmword_2247A4600);
        v60[2].i32[0] = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v61[8], v62))), 0x1C1814100C080400).u32[0];
        v60 = (v60 + BytesPerRowOfPlane);
        v61 = (v61 + BytesPerRow);
        --v10;
      }

      while (v10);
    }

    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v34, 1uLL);
    v64 = CVPixelBufferGetBytesPerRowOfPlane(v34, 1uLL);
    v65 = CVPixelBufferGetBaseAddressOfPlane(v34, 1uLL);
    memset(v65, 128, v64 * HeightOfPlane);
    CVPixelBufferUnlockBaseAddress(v15, 0);
    CVPixelBufferRelease(v15);
  }

  CVPixelBufferUnlockBaseAddress(v34, 0);
  return v34;
}

- (BOOL)pushFrames:(id)frames
{
  v3 = (MEMORY[0x28223BE20])(self, a2, frames);
  v50 = *MEMORY[0x277D85DE8];
  v5 = v4;
  bytes = [v5 bytes];
  v6 = [v5 length];
  v49 = 0;
  v7 = 1;
  v46[0] = 0;
  v46[1] = 0;
  if (v6)
  {
    v35 = v5;
    do
    {
      v45 = 0;
      if ((PeridotSuperFrame::loadFromBuffer(v46, bytes, v6, &v45) & 1) == 0)
      {
        v7 = 0;
        goto LABEL_31;
      }

      v8 = v6;
      v9 = 0;
      v36 = v8 - v45;
      bytes += v45;
      v41 = v46[0];
      v10 = v47;
      v44 = v47 - 8032;
      v43 = v47 + 896;
      while (v9 != v41)
      {
        v11 = v48[v9 + 224];
        if (*(v11 + 50) >= 3u)
        {
          v39 = v48[v9 + 112];
          v40 = v48[v9];
          v38 = v39[2];
          v42 = *(v11 + 36) + *(v11 + 36) * *(v11 + 3);
          v12 = *(v3 + 40);
          if (v12 && v42 != v12)
          {
            peridot_depth_log("Not all frames have same exposure time");
          }

          v13 = 0;
          *(v3 + 40) = v42;
          v14 = v40 + 4;
          v15 = v39[5];
          v16 = v40 + 32;
          v17 = v39[6];
          v18 = v40 + 60;
          v19 = v43;
          v20 = v44;
          do
          {
            v21 = v10 + 9280 * v9 + 640 * v13;
            if (v13 >= 0xE)
            {
              v28 = 0;
              v29 = 0;
              v30 = v21 - 8032;
              do
              {
                if ((*(v18 + 2 * v13) >> v29))
                {
                  v31 = v15 + *(v14 + v13) + dword_2247A5F20[v29];
                  if (v31 <= 0x53)
                  {
                    v32 = v17 + *(v16 + v13) + dword_2247A5F50[v29];
                    if (v32 <= 0x6B)
                    {
                      v33 = *(v3 + 32) + 9072 * (v38 - 1) + 84 * v32;
                      if ((*(v33 + v31) & 1) == 0)
                      {
                        *(v33 + v31) = 1;
                        *(*(v3 + 24) + 36288 * (v38 - 1) + 336 * v32 + 4 * v31) = (*(v30 + 24) >> v28) & 3 | (4 * *(v20 + 2 * v29));
                      }
                    }
                  }
                }

                ++v29;
                v28 += 2;
              }

              while (v29 != 12);
            }

            else
            {
              v22 = 0;
              v23 = 0;
              v24 = v21 + 896;
              do
              {
                if ((*(v18 + 2 * v13) >> v23))
                {
                  v25 = v15 + *(v14 + v13) + dword_2247A5F20[v23];
                  if (v25 <= 0x53)
                  {
                    v26 = v17 + *(v16 + v13) + dword_2247A5F50[v23];
                    if (v26 <= 0x6B)
                    {
                      v27 = *(v3 + 32) + 9072 * (v38 - 1) + 84 * v26;
                      if ((*(v27 + v25) & 1) == 0)
                      {
                        *(v27 + v25) = 1;
                        *(*(v3 + 24) + 36288 * (v38 - 1) + 336 * v26 + 4 * v25) = (*(v24 + 24) >> v22) & 3 | (4 * *(v19 + 2 * v23));
                      }
                    }
                  }
                }

                ++v23;
                v22 += 2;
              }

              while (v23 != 12);
            }

            ++v13;
            v20 += 640;
            v19 += 640;
          }

          while (v13 != 28);
        }

        ++v9;
        v44 += 9280;
        v43 += 9280;
      }

      v6 = v36;
    }

    while (v36);
    v7 = 1;
LABEL_31:
    v5 = v35;
  }

  if (v49)
  {
    MEMORY[0x22AA53170](v49, 0x1000C801E9FC43BLL);
  }

  return v7;
}

- (void)reset
{
  bzero([(NSMutableData *)self->_allImages mutableBytes], [(NSMutableData *)self->_allImages length]);
  bzero([(NSMutableData *)self->_allMasks mutableBytes], [(NSMutableData *)self->_allMasks length]);
  self->_exposure = 0;
}

- (PDImageReconstruct)init
{
  v8.receiver = self;
  v8.super_class = PDImageReconstruct;
  v2 = [(PDImageReconstruct *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB28] dataWithLength:290304];
    allImages = v2->_allImages;
    v2->_allImages = v3;

    v2->_bankImages = [(NSMutableData *)v2->_allImages mutableBytes];
    v5 = [MEMORY[0x277CBEB28] dataWithLength:72576];
    allMasks = v2->_allMasks;
    v2->_allMasks = v5;

    v2->_bankMasks = [(NSMutableData *)v2->_allMasks mutableBytes];
    [(PDImageReconstruct *)v2 reset];
  }

  return v2;
}

@end