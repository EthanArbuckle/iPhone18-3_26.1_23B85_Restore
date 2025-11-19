@interface BilateralGridHash
- (BOOL)_hashMapFindKey:(unint64_t)a3 to:(unsigned int *)a4;
- (BilateralGridHash)initWithWidth:(unsigned int)a3 height:(unsigned int)a4 maxHashTableSize:(unint64_t)a5;
- (const)blur_indices:(int)a3 n_blur_indices:(int *)a4;
- (int)_addHashKeyAtX:(unsigned int)a3 Y:(unsigned int)a4 key:(unint64_t)a5;
- (int)_computeBilateralSpace:(__CVBuffer *)a3 sigma_s:(unsigned int)a4 sigma_r_luma:(unsigned int)a5 sigma_r_chroma:(unsigned int)a6;
- (void)blur:(const float *)a3 pout:(float *)a4;
- (void)blur_n:(float *)a3;
- (void)blur_ones:(float *)a3;
- (void)clear;
- (void)computeBlurIndices;
- (void)computeCoordIndices;
- (void)computeInterpIndices;
- (void)dealloc;
- (void)normalize:(const float *)a3 pout:(float *)a4;
- (void)normalize_blur:(const float *)a3 pout:(float *)a4;
- (void)releaseResources;
- (void)slice:(const float *)a3 outPixelBuffer:(__CVBuffer *)a4;
- (void)slice_trilinear:(__CVBuffer *)a3 pin:(const float *)a4 pout:(__CVBuffer *)a5;
- (void)splat:(__CVBuffer *)a3 pout:(float *)a4;
- (void)splat_ones:(float *)a3;
- (void)splat_w_mul_x:(__CVBuffer *)a3 inPixelBuffer:(__CVBuffer *)a4 pout:(float *)a5;
@end

@implementation BilateralGridHash

- (BilateralGridHash)initWithWidth:(unsigned int)a3 height:(unsigned int)a4 maxHashTableSize:(unint64_t)a5
{
  v23.receiver = self;
  v23.super_class = BilateralGridHash;
  v8 = [(BilateralGridHash *)&v23 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  v8->_n_dims = 0;
  v8->_width = a3;
  v10 = a4 * a3;
  v8->_height = a4;
  v8->_sigma_s = 0;
  *&v8->_sigma_r_luma = 0;
  v8->_max_hash_table_size = a5;
  v8->_hash_table_size = 0;
  v11 = malloc_type_calloc(v10, 4uLL, 0x100004052888210uLL);
  v9->_hash_matrix_data = v11;
  if (!v11)
  {
    sub_295733798();
LABEL_24:
    v21 = 0;
    goto LABEL_13;
  }

  v12 = malloc_type_malloc(24 * a5, 0x1000040504FFAC1uLL);
  v9->_hash_table = v12;
  if (!v12)
  {
    sub_295733718();
    goto LABEL_24;
  }

  v13 = malloc_type_malloc(40 * a5, 0x100004052888210uLL);
  v9->_blur_indices = v13;
  if (!v13)
  {
    sub_295733698();
    goto LABEL_24;
  }

  v14 = malloc_type_malloc(4 * a5 + 4, 0x100004052888210uLL);
  v9->_coord_indices = v14;
  if (!v14)
  {
    sub_295733618();
    goto LABEL_24;
  }

  v15 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  v9->_coord_table = v15;
  if (!v15)
  {
    sub_295733598();
    goto LABEL_24;
  }

  v16 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
  v9->_coord_indices_off = v16;
  if (!v16)
  {
    sub_295733518();
    goto LABEL_24;
  }

  v17 = malloc_type_malloc(4 * a5 + 4, 0x100004052888210uLL);
  v9->_interp_indices = v17;
  if (!v17)
  {
    sub_295733498();
    goto LABEL_24;
  }

  v18 = malloc_type_malloc(20 * a5, 0x100004052888210uLL);
  v9->_interp_table = v18;
  if (!v18)
  {
    sub_295733418();
    goto LABEL_24;
  }

  v19 = malloc_type_malloc(5 * a5, 0x100004077774924uLL);
  v9->_interp_pad = v19;
  if (!v19)
  {
    sub_295733398();
    goto LABEL_24;
  }

  v20 = sub_29571B244(a5);
  v9->_hash_map = v20;
  if (!v20)
  {
    sub_295733318();
    goto LABEL_24;
  }

LABEL_12:
  v21 = v9;
LABEL_13:

  return v21;
}

- (void)releaseResources
{
  hash_matrix_data = self->_hash_matrix_data;
  if (hash_matrix_data)
  {
    self->_hash_matrix_data = 0;
    free(hash_matrix_data);
  }

  hash_table = self->_hash_table;
  if (hash_table)
  {
    self->_hash_table = 0;
    free(hash_table);
  }

  blur_indices = self->_blur_indices;
  if (blur_indices)
  {
    self->_blur_indices = 0;
    free(blur_indices);
  }

  coord_indices = self->_coord_indices;
  if (coord_indices)
  {
    self->_coord_indices = 0;
    free(coord_indices);
  }

  coord_table = self->_coord_table;
  if (coord_table)
  {
    self->_coord_table = 0;
    free(coord_table);
  }

  coord_indices_off = self->_coord_indices_off;
  if (coord_indices_off)
  {
    self->_coord_indices_off = 0;
    free(coord_indices_off);
  }

  interp_indices = self->_interp_indices;
  if (interp_indices)
  {
    self->_interp_indices = 0;
    free(interp_indices);
  }

  interp_table = self->_interp_table;
  if (interp_table)
  {
    self->_interp_table = 0;
    free(interp_table);
  }

  interp_pad = self->_interp_pad;
  if (interp_pad)
  {
    self->_interp_pad = 0;
    free(interp_pad);
  }

  hash_map = self->_hash_map;

  sub_29571B4E0(hash_map);
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = BilateralGridHash;
  [(BilateralGridHash *)&v7 dealloc];
}

- (void)clear
{
  *&self->_sigma_r_luma = 0;
  self->_sigma_s = 0;
  self->_hash_table_size = 0;
  sub_29571B534(self->_hash_map);
}

- (void)splat:(__CVBuffer *)a3 pout:(float *)a4
{
  if (a3)
  {
    if (a4)
    {
      if (self->_hash_matrix_data)
      {
        v9 = objc_msgSend_hashTableSize(self, a2, a3, a4, v4, v5);
        v15 = objc_msgSend_width(self, v10, v11, v12, v13, v14);
        v21 = objc_msgSend_height(self, v16, v17, v18, v19, v20);
        CVPixelBufferLockBaseAddress(a3, 1uLL);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
        v23 = CVPixelBufferGetBytesPerRow(a3);
        bzero(a4, 4 * v9);
        if (v21)
        {
          v24 = 0;
          for (i = 0; i != v21; ++i)
          {
            if (v15)
            {
              v26 = 0;
              hash_matrix_data = self->_hash_matrix_data;
              v28 = v24;
              do
              {
                v29 = hash_matrix_data[v28];
                a4[v29] = *(v23 + v26) + a4[v29];
                v26 += 4;
                ++v28;
              }

              while (4 * v15 != v26);
            }

            v23 += BytesPerRow;
            v24 += v15;
          }
        }

        CVPixelBufferUnlockBaseAddress(a3, 1uLL);
      }

      else
      {
        sub_295733A44();
      }
    }

    else
    {
      sub_295733AD0();
    }
  }

  else
  {
    sub_295733B5C();
  }
}

- (void)splat_w_mul_x:(__CVBuffer *)a3 inPixelBuffer:(__CVBuffer *)a4 pout:(float *)a5
{
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        if (self->_hash_matrix_data)
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
          if (PixelFormatType == 1278226534 || PixelFormatType == 1717855600 || PixelFormatType == 1717856627)
          {
            v37 = objc_msgSend_hashTableSize(self, v10, v11, v12, v13, v14);
            v20 = objc_msgSend_width(self, v15, v16, v17, v18, v19);
            v26 = objc_msgSend_height(self, v21, v22, v23, v24, v25);
            CVPixelBufferLockBaseAddress(a3, 0);
            CVPixelBufferLockBaseAddress(a4, 0);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
            v28 = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
            v30 = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
            bzero(a5, 4 * v37);
            if (v26)
            {
              v31 = 0;
              for (i = 0; i != v26; ++i)
              {
                if (v20)
                {
                  v33 = 0;
                  hash_matrix_data = self->_hash_matrix_data;
                  v35 = v31;
                  do
                  {
                    v36 = hash_matrix_data[v35];
                    a5[v36] = a5[v36] + (*&BaseAddressOfPlane[v33] * *&v30[v33]);
                    v33 += 4;
                    ++v35;
                  }

                  while (4 * v20 != v33);
                }

                BaseAddressOfPlane += BytesPerRowOfPlane;
                v30 += v28;
                v31 += v20;
              }
            }

            CVPixelBufferUnlockBaseAddress(a3, 0);

            CVPixelBufferUnlockBaseAddress(a4, 0);
          }

          else
          {

            FigSignalErrorAtGM();
          }
        }

        else
        {
          sub_295733BE8();
        }
      }

      else
      {
        sub_295733C74();
      }
    }

    else
    {
      sub_295733D00();
    }
  }

  else
  {
    sub_295733D8C();
  }
}

- (void)slice:(const float *)a3 outPixelBuffer:(__CVBuffer *)a4
{
  if (a3)
  {
    if (a4)
    {
      if (self->_hash_matrix_data)
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
        if (PixelFormatType == 1278226534 || PixelFormatType == 1717855600 || PixelFormatType == 1717856627)
        {
          v13 = objc_msgSend_width(self, v8, v9, v10, v11, v12);
          v19 = objc_msgSend_height(self, v14, v15, v16, v17, v18);
          CVPixelBufferLockBaseAddress(a4, 0);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
          if (v19)
          {
            v22 = 0;
            for (i = 0; i != v19; ++i)
            {
              if (v13)
              {
                v24 = 0;
                hash_matrix_data = self->_hash_matrix_data;
                v26 = v22;
                do
                {
                  *&BaseAddressOfPlane[v24] = a3[hash_matrix_data[v26]];
                  v24 += 4;
                  ++v26;
                }

                while (4 * v13 != v24);
              }

              BaseAddressOfPlane += BytesPerRowOfPlane;
              v22 += v13;
            }
          }

          CVPixelBufferUnlockBaseAddress(a4, 0);
        }

        else
        {

          FigSignalErrorAtGM();
        }
      }

      else
      {
        sub_295733E18();
      }
    }

    else
    {
      sub_295733EA4();
    }
  }

  else
  {
    sub_295733F30();
  }
}

- (void)slice_trilinear:(__CVBuffer *)a3 pin:(const float *)a4 pout:(__CVBuffer *)a5
{
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        if (self->_hash_matrix_data)
        {
          if (self->_interp_indices)
          {
            if (self->_interp_table)
            {
              if (self->_interp_pad)
              {
                v10 = objc_msgSend_width(self, a2, a3, a4, a5, v5);
                v16 = objc_msgSend_height(self, v11, v12, v13, v14, v15);
                CVPixelBufferLockBaseAddress(a3, 0);
                CVPixelBufferLockBaseAddress(a5, 0);
                BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
                v18 = CVPixelBufferGetBytesPerRowOfPlane(a5, 0);
                BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
                v20 = CVPixelBufferGetBaseAddressOfPlane(a5, 0);
                if (v16)
                {
                  v22 = 0;
                  __asm { FMOV            V1.2S, #1.0 }

                  do
                  {
                    if (v10)
                    {
                      v28 = 0;
                      v29 = vcvt_f32_u32(*&self->_sigma_s);
                      v30 = (v22 / v29.f32[0]) - (v22 / v29.f32[0]);
                      hash_matrix_data = self->_hash_matrix_data;
                      interp_indices = self->_interp_indices;
                      do
                      {
                        v33.f32[0] = v28;
                        LOBYTE(v21) = BaseAddressOfPlane[v28];
                        v34 = hash_matrix_data[v22 * v10 + v28];
                        v35 = interp_indices[v34];
                        v36 = interp_indices[(v34 + 1)];
                        v33.f32[1] = LODWORD(v21);
                        v37 = vdiv_f32(v33, v29);
                        v38 = vsub_f32(v37, vcvt_f32_s32(vcvt_s32_f32(v37)));
                        v39 = vsub_f32(_D1, v38);
                        v40 = vmuls_lane_f32((1.0 - v30) * v39.f32[0], v39, 1);
                        v21 = a4[v34] * v40;
                        if (v35 < v36)
                        {
                          v41 = &self->_interp_table[v35];
                          v42 = &self->_interp_pad[v35];
                          v43 = v36 - v35;
                          do
                          {
                            v45 = *v41++;
                            v44 = v45;
                            LOBYTE(v45) = *v42++;
                            v46 = v45;
                            if (v45)
                            {
                              v47 = v38.f32[0];
                            }

                            else
                            {
                              v47 = v39.f32[0];
                            }

                            if ((v46 & 2) != 0)
                            {
                              v48 = (v22 / v29.f32[0]) - (v22 / v29.f32[0]);
                            }

                            else
                            {
                              v48 = 1.0 - v30;
                            }

                            v49 = v47 * v48;
                            if ((v46 & 4) != 0)
                            {
                              v50 = v38.f32[1];
                            }

                            else
                            {
                              v50 = v39.f32[1];
                            }

                            v51 = v50 * v49;
                            v21 = v21 + (v51 * a4[v44]);
                            v40 = v40 + v51;
                            --v43;
                          }

                          while (v43);
                        }

                        v20[v28++] = v21 / v40;
                      }

                      while (v28 != v10);
                    }

                    BaseAddressOfPlane += BytesPerRowOfPlane;
                    v20 = (v20 + v18);
                    ++v22;
                  }

                  while (v22 != v16);
                }

                CVPixelBufferUnlockBaseAddress(a3, 0);

                CVPixelBufferUnlockBaseAddress(a5, 0);
              }

              else
              {
                sub_295733FBC();
              }
            }

            else
            {
              sub_295734048();
            }
          }

          else
          {
            sub_2957340D4();
          }
        }

        else
        {
          sub_295734160();
        }
      }

      else
      {
        sub_2957341EC();
      }
    }

    else
    {
      sub_295734278();
    }
  }

  else
  {
    sub_295734304();
  }
}

- (void)blur:(const float *)a3 pout:(float *)a4
{
  if (a3)
  {
    if (a4)
    {
      if (self->_hash_table)
      {
        if (self->_blur_indices)
        {
          v9 = objc_msgSend_countDims(self, a2, a3, a4, v4, v5);
          v15 = objc_msgSend_hashTableSize(self, v10, v11, v12, v13, v14);
          if (v15)
          {
            v16 = v15;
            v17 = a4;
            v18 = a3;
            do
            {
              v19 = *v18++;
              *v17++ = v19 * (2 * v9);
              --v16;
            }

            while (v16);
            hash_table = self->_hash_table;
            do
            {
              if (v16)
              {
                var4 = hash_table[v16 - 1].var4;
              }

              else
              {
                var4 = 0;
              }

              v22 = hash_table[v16].var4;
              if (var4 < v22)
              {
                v23 = a4[v16];
                v24 = &self->_blur_indices[var4];
                v25 = v22 - var4;
                do
                {
                  v26 = *v24++;
                  v23 = a3[v26] + v23;
                  a4[v16] = v23;
                  --v25;
                }

                while (v25);
              }

              ++v16;
            }

            while (v16 != v15);
          }
        }

        else
        {
          sub_295734390();
        }
      }

      else
      {
        sub_29573441C();
      }
    }

    else
    {
      sub_2957344A8();
    }
  }

  else
  {
    sub_295734534();
  }
}

- (void)normalize:(const float *)a3 pout:(float *)a4
{
  if (a3)
  {
    v6 = a4;
    if (a4)
    {
      if (self->_hash_table)
      {
        v8 = a3;
        v9 = objc_msgSend_hashTableSize(self, a2, a3, a4, v4, v5);
        if (v9)
        {
          v10 = v9;
          p_var1 = &self->_hash_table->var1;
          do
          {
            v12 = *v8++;
            v13 = v12;
            v14 = *p_var1;
            p_var1 += 6;
            *v6++ = v13 / v14;
            --v10;
          }

          while (v10);
        }
      }

      else
      {
        sub_2957345C0();
      }
    }

    else
    {
      sub_29573464C();
    }
  }

  else
  {
    sub_2957346D8();
  }
}

- (void)normalize_blur:(const float *)a3 pout:(float *)a4
{
  if (a3)
  {
    v6 = a4;
    if (a4)
    {
      if (self->_hash_table)
      {
        v8 = a3;
        v9 = objc_msgSend_hashTableSize(self, a2, a3, a4, v4, v5);
        if (v9)
        {
          v10 = v9;
          p_var2 = &self->_hash_table->var2;
          do
          {
            v12 = *v8++;
            v13 = v12;
            v14 = *p_var2;
            p_var2 += 6;
            *v6++ = v13 / v14;
            --v10;
          }

          while (v10);
        }
      }

      else
      {
        sub_295734764();
      }
    }

    else
    {
      sub_2957347F0();
    }
  }

  else
  {
    sub_29573487C();
  }
}

- (void)splat_ones:(float *)a3
{
  if (a3)
  {
    if (self->_hash_table)
    {
      v7 = a3;
      v8 = objc_msgSend_hashTableSize(self, a2, a3, v3, v4, v5);
      if (v8)
      {
        v9 = v8;
        p_var1 = &self->_hash_table->var1;
        do
        {
          v11 = *p_var1;
          p_var1 += 6;
          *v7++ = v11;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      sub_295734908();
    }
  }

  else
  {
    sub_295734994();
  }
}

- (void)blur_ones:(float *)a3
{
  if (a3)
  {
    if (self->_hash_table)
    {
      v7 = a3;
      v8 = objc_msgSend_hashTableSize(self, a2, a3, v3, v4, v5);
      if (v8)
      {
        v9 = v8;
        p_var2 = &self->_hash_table->var2;
        do
        {
          v11 = *p_var2;
          p_var2 += 6;
          *v7++ = v11;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      sub_295734A20();
    }
  }

  else
  {
    sub_295734AAC();
  }
}

- (void)blur_n:(float *)a3
{
  if (a3)
  {
    if (self->_hash_table)
    {
      v7 = a3;
      v8 = objc_msgSend_hashTableSize(self, a2, a3, v3, v4, v5);
      if (v8)
      {
        v9 = v8;
        p_var3 = &self->_hash_table->var3;
        do
        {
          v11 = *p_var3;
          p_var3 += 6;
          *v7++ = v11;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      sub_295734B38();
    }
  }

  else
  {
    sub_295734BC4();
  }
}

- (const)blur_indices:(int)a3 n_blur_indices:(int *)a4
{
  if (!a4)
  {
    sub_295734D68();
    return 0;
  }

  hash_table = self->_hash_table;
  if (!hash_table)
  {
    sub_295734CDC();
    return 0;
  }

  blur_indices = self->_blur_indices;
  if (!blur_indices)
  {
    sub_295734C50();
    return 0;
  }

  if (a3 < 1)
  {
    var4 = 0;
  }

  else
  {
    var4 = hash_table[a3 - 1].var4;
  }

  *a4 = hash_table[a3].var4 - var4;
  return &blur_indices[var4];
}

- (int)_computeBilateralSpace:(__CVBuffer *)a3 sigma_s:(unsigned int)a4 sigma_r_luma:(unsigned int)a5 sigma_r_chroma:(unsigned int)a6
{
  if (a3)
  {
    v6 = a6;
    v8 = a4;
    v9 = a3;
    self->_n_dims = 5;
    self->_sigma_s = a4;
    self->_sigma_r_luma = a5;
    self->_sigma_r_chroma = a6;
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(v9);
    CVPixelBufferLockBaseAddress(v9, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v9, 0);
    v49 = CVPixelBufferGetBytesPerRowOfPlane(v9, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v9, 0);
    v57 = CVPixelBufferGetBaseAddressOfPlane(v9, 1uLL);
    if (Height >= 2)
    {
      v51 = 0;
      v52 = v8;
      LODWORD(v16) = Width >> 1;
      v47 = 2 * BytesPerRowOfPlane;
      if (Width >> 1 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v16;
      }

      v45 = v9;
      v46 = v16;
      v50 = &BaseAddressOfPlane[BytesPerRowOfPlane];
      v17 = BaseAddressOfPlane;
      v48 = Width;
      v53 = v6;
      while (Width < 2)
      {
LABEL_15:
        v17 += v47;
        Width = v48;
        v57 += v49;
        v50 += v47;
        if (++v51 == Height >> 1)
        {
          v15 = 0;
          goto LABEL_17;
        }
      }

      v18 = 0;
      v19 = (2 * v51);
      v20 = v50;
      v21 = v46;
      v55 = (v19 | 1) / v8;
      v56 = v19 / v8;
      v54 = v17;
      while (1)
      {
        v58 = v21;
        v22 = &v17[v18];
        v23 = v17[v18];
        LODWORD(v22) = v22[1];
        v24 = *v20;
        v25 = v20[1];
        v26 = v57[v18] / v6;
        v27 = v57[v18 + 1] / v6;
        LOBYTE(v59) = v18 / v8;
        BYTE1(v59) = v56;
        BYTE2(v59) = v23 / a5;
        HIBYTE(v59) = v26;
        v60 = v27;
        v61[0] = (v18 + 1) / v8;
        v61[1] = v56;
        v61[2] = v22 / a5;
        v61[3] = v26;
        v61[4] = v27;
        v62[0] = v59;
        v62[1] = v55;
        v62[2] = v24 / a5;
        v62[3] = v26;
        v62[4] = v27;
        v63[0] = v61[0];
        v63[1] = v55;
        v63[2] = v25 / a5;
        v63[3] = v26;
        v63[4] = v27;
        v28 = sub_2957285EC(&v59, 5);
        v31 = objc_msgSend__addHashKeyAtX_Y_key_(self, v29, v18, v19, v28, v30);
        if (v31)
        {
          v15 = v31;
          sub_295734DF4();
          goto LABEL_17;
        }

        v32 = sub_2957285EC(v61, 5);
        v35 = objc_msgSend__addHashKeyAtX_Y_key_(self, v33, v18 + 1, v19, v32, v34);
        if (v35)
        {
          v15 = v35;
          sub_295734E54();
          goto LABEL_17;
        }

        v36 = sub_2957285EC(v62, 5);
        v39 = objc_msgSend__addHashKeyAtX_Y_key_(self, v37, v18, v19 | 1, v36, v38);
        if (v39)
        {
          v15 = v39;
          sub_295734EB4();
          goto LABEL_17;
        }

        v40 = sub_2957285EC(v63, 5);
        v43 = objc_msgSend__addHashKeyAtX_Y_key_(self, v41, v18 + 1, v19 | 1, v40, v42);
        if (v43)
        {
          break;
        }

        v20 += 2;
        v18 += 2;
        v21 = v58 - 1;
        v8 = v52;
        v6 = v53;
        v17 = v54;
        if (v58 == 1)
        {
          goto LABEL_15;
        }
      }

      v15 = v43;
      sub_295734F14();
LABEL_17:
      v9 = v45;
    }

    else
    {
      v15 = 0;
    }

    CVPixelBufferUnlockBaseAddress(v9, 0);
  }

  else
  {
    sub_295734F74(&v59);
    return v59;
  }

  return v15;
}

- (void)computeBlurIndices
{
  if (self->_hash_table)
  {
    if (self->_blur_indices)
    {
      v7 = objc_msgSend_countDims(self, a2, v2, v3, v4, v5);
      v13 = objc_msgSend_hashTableSize(self, v8, v9, v10, v11, v12);
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        v29 = v13;
        do
        {
          v31 = v14;
          v16 = &self->_hash_table[v14];
          v17 = 2 * v7 * v16->var1;
          v30 = v16;
          if (v7)
          {
            v18 = 0;
            v19 = 0;
            var0 = v16->var0.var0;
            do
            {
              v21 = 0;
              v22 = 1;
              do
              {
                v23 = v22;
                v24 = sub_295728618(var0, v18, dword_295743030[v21]);
                if (v24 != -1)
                {
                  v32 = 0;
                  if (objc_msgSend__hashMapFindKey_to_(self, v25, v24, &v32, v26, v27))
                  {
                    v28 = v32;
                    self->_blur_indices[v15] = v32;
                    v17 += self->_hash_table[v28].var1;
                    ++v19;
                    ++v15;
                  }
                }

                v22 = 0;
                v21 = 1;
              }

              while ((v23 & 1) != 0);
              ++v18;
            }

            while (v18 != v7);
          }

          else
          {
            v19 = 0;
          }

          v30->var2 = v17;
          v30->var3 = v19;
          v30->var4 = v15;
          v14 = v31 + 1;
        }

        while (v31 + 1 != v29);
      }
    }

    else
    {
      sub_295734FFC();
    }
  }

  else
  {
    sub_295735088();
  }
}

- (void)computeCoordIndices
{
  v7 = objc_msgSend_width(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_height(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_hashTableSize(self, v14, v15, v16, v17, v18);
  if (self->_hash_matrix_data)
  {
    v20 = v19;
    coord_indices_off = self->_coord_indices_off;
    if (coord_indices_off)
    {
      if (self->_coord_indices)
      {
        if (self->_hash_table)
        {
          bzero(coord_indices_off, 4 * v20);
          coord_indices = self->_coord_indices;
          v23 = 0;
          if (v20)
          {
            p_var1 = &self->_hash_table->var1;
            v25 = v20;
            v26 = self->_coord_indices;
            do
            {
              *v26++ = v23;
              v27 = *p_var1;
              p_var1 += 6;
              v23 += v27;
              --v25;
            }

            while (v25);
          }

          coord_indices[v20] = v23;
          if (v13)
          {
            v28 = 0;
            for (i = 0; i != v13; ++i)
            {
              if (v7)
              {
                v30 = 0;
                hash_matrix_data = self->_hash_matrix_data;
                coord_table = self->_coord_table;
                v32 = self->_coord_indices_off;
                do
                {
                  v34 = hash_matrix_data[(v28 + v30)];
                  coord_table[v32[v34] + coord_indices[v34]] = v30 | (i << 16);
                  ++v32[v34];
                  ++v30;
                }

                while (v7 != v30);
              }

              v28 += v7;
            }
          }
        }

        else
        {
          sub_295735114();
        }
      }

      else
      {
        sub_2957351A0();
      }
    }

    else
    {
      sub_29573522C();
    }
  }

  else
  {
    sub_2957352B8();
  }
}

- (void)computeInterpIndices
{
  v7 = objc_msgSend_hashTableSize(self, a2, v2, v3, v4, v5);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = v7;
    do
    {
      self->_interp_indices[v8] = v9;
      var0 = self->_hash_table[v8].var0.var0;
      for (i = 1; i != 8; ++i)
      {
        v13 = sub_295728650(i);
        v18 = 0;
        if (objc_msgSend__hashMapFindKey_to_(self, v14, v13 + var0, &v18, v15, v16))
        {
          interp_pad = self->_interp_pad;
          self->_interp_table[v9] = v18;
          interp_pad[v9++] = i;
        }
      }

      ++v8;
    }

    while (v8 != v10);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  self->_interp_indices[v10] = v9;
}

- (BOOL)_hashMapFindKey:(unint64_t)a3 to:(unsigned int *)a4
{
  if (a4)
  {
    hash_map = self->_hash_map;

    return sub_29571B59C(hash_map, a3, a4);
  }

  else
  {
    sub_295735344();
    return 0;
  }
}

- (int)_addHashKeyAtX:(unsigned int)a3 Y:(unsigned int)a4 key:(unint64_t)a5
{
  if (self->_hash_matrix_data)
  {
    if (self->_hash_table)
    {
      v19 = 0;
      if (objc_msgSend__hashMapFindKey_to_(self, a2, a5, &v19, a5, v5))
      {
        result = 0;
        v14 = v19;
        hash_table = self->_hash_table;
        self->_hash_matrix_data[a3 + self->_width * a4] = v19;
        ++hash_table[v14].var1;
      }

      else
      {
        hash_table_size = self->_hash_table_size;
        if (self->_max_hash_table_size <= hash_table_size)
        {
          return -12786;
        }

        else
        {
          v17 = self->_hash_table;
          self->_hash_table_size = hash_table_size + 1;
          v18 = &v17[hash_table_size];
          v18->var0.var0 = a5;
          *&v18->var1 = xmmword_295743020;
          self->_hash_matrix_data[a3 + self->_width * a4] = hash_table_size;
          objc_msgSend__hashMapAddKey_andValue_(self, v10, a5, hash_table_size, v11, v12);
          return 0;
        }
      }
    }

    else
    {
      sub_2957353D0(&v20);
      return v20;
    }
  }

  else
  {
    sub_295735458(&v21);
    return v21;
  }

  return result;
}

@end