@interface TXRParserKTX
+ (BOOL)exportTexture:(id)a3 url:(id)a4 error:(id *)a5;
+ (BOOL)handlesData:(id)a3;
- (BOOL)parseData:(id)a3 bufferAllocator:(id)a4 options:(id)a5 error:(id *)a6;
- (id)parsedImageAtLevel:(unint64_t)a3 element:(unint64_t)a4 face:(unint64_t)a5;
- (unint64_t)determineFormatFromType:(unsigned int)a3 format:(unsigned int)a4 internalFormat:(unsigned int)a5 baseInternalFormat:(unsigned int)a6;
- (void)parseImageData:(id)a3 WithOptions:(id)a4 bufferAllocator:(id)a5;
@end

@implementation TXRParserKTX

+ (BOOL)handlesData:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  [a3 getBytes:v6 length:12];
  v3 = 0;
  result = 1;
  do
  {
    result &= *(&gKTXFileIdentifier + v3) == v6[v3];
    ++v3;
  }

  while (v3 != 12);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)parseData:(id)a3 bufferAllocator:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 bytes];
  if (v13[1].i8[4] != 1 || (v14 = v13, v13[1].i8[5] != 2) || v13[1].i8[6] != 3 || v13[1].i8[7] != 4)
  {
    if (a6)
    {
      v30 = @"Only little endian KTX files are supported";
      v31 = 10;
LABEL_15:
      _newTXRErrorWithCodeAndErrorString(v31, v30);
      *a6 = v29 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v29 = 0;
    goto LABEL_19;
  }

  v15 = objc_alloc_init(TXRTextureInfo);
  textureInfo = self->_textureInfo;
  self->_textureInfo = v15;

  v17.i32[0] = v14[4].i32[1];
  *v18.i8 = vmax_u32(v14[5], 0x100000001);
  [(TXRTextureInfo *)self->_textureInfo setDimensions:*vextq_s8(vextq_s8(v17, v17, 4uLL), v18, 0xCuLL).i64];
  v19 = v14[6].u32[0];
  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  [(TXRTextureInfo *)self->_textureInfo setArrayLength:v20];
  [(TXRTextureInfo *)self->_textureInfo setCubemap:v14[6].i32[1] > 6u];
  v21 = v14[7].u32[0];
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  [(TXRTextureInfo *)self->_textureInfo setMipmapLevelCount:v22];
  [(TXRTextureInfo *)self->_textureInfo setPixelFormat:[(TXRParserKTX *)self determineFormatFromType:v14[2].u32[0] format:v14[3].u32[0] internalFormat:v14[3].u32[1] baseInternalFormat:v14[4].u32[0]]];
  if (![(TXRTextureInfo *)self->_textureInfo pixelFormat])
  {
    if (a6)
    {
      v30 = @"Could not determine format from KTX header";
      v31 = 8;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  self->_bytesOfKeyValueData = v14[7].u32[1];
  v23 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_DEFAULT, 0);
  v24 = dispatch_queue_create("com.apple.txrtextureloaderparser", v23);
  parserQueue = self->_parserQueue;
  self->_parserQueue = v24;

  v26 = [[TXRDeferredTextureInfo alloc] initWithMipmapLevelCount:[(TXRTextureInfo *)self->_textureInfo mipmapLevelCount] arrayLength:[(TXRTextureInfo *)self->_textureInfo arrayLength] cubemap:[(TXRTextureInfo *)self->_textureInfo cubemap]];
  deferredTextureInfo = self->_deferredTextureInfo;
  self->_deferredTextureInfo = v26;

  v28 = self->_parserQueue;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __56__TXRParserKTX_parseData_bufferAllocator_options_error___block_invoke;
  v33[3] = &unk_279DBC078;
  v33[4] = self;
  v34 = v10;
  v35 = v12;
  v36 = v11;
  dispatch_async(v28, v33);

  v29 = 1;
LABEL_19:

  return v29;
}

- (void)parseImageData:(id)a3 WithOptions:(id)a4 bufferAllocator:(id)a5
{
  v57 = a3;
  v56 = a4;
  v8 = a5;
  v9 = v57;
  v10 = [v57 bytes];
  bytesOfKeyValueData = self->_bytesOfKeyValueData;
  [(TXRTextureInfo *)self->_textureInfo dimensions];
  v70 = v12;
  [(TXRTextureInfo *)self->_textureInfo dimensions];
  v69 = v13;
  [(TXRTextureInfo *)self->_textureInfo dimensions];
  v67 = v14;
  if ([(TXRTextureInfo *)self->_textureInfo mipmapLevelCount])
  {
    v15 = 0;
    v16 = 0;
    v17 = v67;
    v18.i64[0] = v70;
    v18.i64[1] = v69;
    v60 = v18;
    v19 = v10 + bytesOfKeyValueData + 64;
    v20 = 0x279DBB000uLL;
    v62 = v8;
    v72 = self;
    do
    {
      v21 = [(TXRTextureInfo *)self->_textureInfo pixelFormat];
      v22 = v21 - 130 > 0xD || ((1 << (v21 + 126)) & 0x3C3F) == 0;
      v59 = v16;
      if (v22 && v21 - 150 >= 4 && (v21 & 0xFFFFFFFFFFFFFFF8) != 0xA0 && (v21 - 170 <= 0x30 ? (v25 = ((1 << (v21 + 86)) & 0x1FF7C7FDF3F55) == 0) : (v25 = 1), v25))
      {
        v26 = [(TXRTextureInfo *)self->_textureInfo pixelFormat];
        if (v26 <= 551)
        {
          v27 = 1;
          switch(v26)
          {
            case 1:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
              goto LABEL_56;
            case 20:
            case 22:
            case 23:
            case 24:
            case 25:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 40:
            case 41:
            case 42:
            case 43:
              v27 = 2;
              goto LABEL_56;
            case 53:
            case 54:
            case 55:
            case 60:
            case 62:
            case 63:
            case 64:
            case 65:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 80:
            case 81:
            case 90:
            case 91:
            case 92:
            case 93:
              goto LABEL_18;
            case 103:
            case 104:
            case 105:
            case 110:
            case 112:
            case 113:
            case 114:
            case 115:
              goto LABEL_54;
            case 123:
            case 124:
            case 125:
              v27 = 16;
              goto LABEL_56;
            default:
              goto LABEL_61;
          }
        }

        if ((v26 - 552) < 2)
        {
LABEL_54:
          v27 = 8;
        }

        else if ((v26 - 554) < 2)
        {
LABEL_18:
          v27 = 4;
        }

        else
        {
          if ((v26 - 2147483649) >= 2)
          {
LABEL_61:
            pixelBytes_cold_1();
          }

          v27 = 3;
        }

LABEL_56:
        v29 = v27 * v60.i64[0];
        v30 = v60.i64[1] * v17 * v27 * v60.i64[0];
      }

      else
      {
        v23 = [(TXRTextureInfo *)self->_textureInfo pixelFormat];
        v24 = 17040392;
        switch(v23)
        {
          case 0x82uLL:
          case 0x83uLL:
          case 0x8CuLL:
          case 0x8DuLL:
          case 0xA2uLL:
          case 0xA3uLL:
          case 0xA6uLL:
          case 0xA7uLL:
          case 0xAAuLL:
          case 0xACuLL:
          case 0xB4uLL:
          case 0xB5uLL:
          case 0xB6uLL:
          case 0xB7uLL:
            break;
          case 0x84uLL:
          case 0x85uLL:
          case 0x86uLL:
          case 0x87uLL:
          case 0x8EuLL:
          case 0x8FuLL:
          case 0x96uLL:
          case 0x97uLL:
          case 0x98uLL:
          case 0x99uLL:
          case 0xAEuLL:
          case 0xB0uLL:
          case 0xB2uLL:
          case 0xB3uLL:
          case 0xBAuLL:
          case 0xCCuLL:
            v24 = 17040400;
            break;
          case 0xA0uLL:
          case 0xA1uLL:
          case 0xA4uLL:
          case 0xA5uLL:
            goto LABEL_33;
          case 0xBBuLL:
          case 0xCDuLL:
            v24 = 17040656;
            break;
          case 0xBCuLL:
          case 0xCEuLL:
            v24 = 17106192;
            break;
          case 0xBDuLL:
          case 0xCFuLL:
            v24 = 17106448;
            break;
          case 0xBEuLL:
          case 0xD0uLL:
            v24 = 17171984;
            break;
          case 0xC0uLL:
          case 0xD2uLL:
            v24 = 17106960;
            break;
          case 0xC1uLL:
          case 0xD3uLL:
            v28 = 17171984;
            goto LABEL_24;
          case 0xC2uLL:
          case 0xD4uLL:
            v24 = 17303568;
            break;
          case 0xC3uLL:
          case 0xD5uLL:
            v24 = 17104912;
            break;
          case 0xC4uLL:
          case 0xD6uLL:
            v24 = 17171984;
LABEL_33:
            v24 += 1024;
            break;
          case 0xC5uLL:
          case 0xD7uLL:
            v28 = 17303568;
            goto LABEL_24;
          case 0xC6uLL:
          case 0xD8uLL:
            v24 = 17435152;
            break;
          case 0xC7uLL:
          case 0xD9uLL:
            v28 = 17435152;
LABEL_24:
            v24 = v28 + 512;
            break;
          case 0xC8uLL:
          case 0xDAuLL:
            v24 = 17566736;
            break;
          default:
            +[TXRPixelFormatInfo packedMemoryLayoutForFormat:dimensions:];
        }

        v29 = (v60.i64[0] + ((v24 >> 8) & 0xF) - 1) / ((v24 >> 8) & 0xF) * (v24 & 0x18);
        v30 = v29 * ((v60.i64[1] + (HIWORD(v24) & 0xF) - 1) / (HIWORD(v24) & 0xF));
      }

      v31 = (v19 + 4);
      v58 = v17;
      if ([(TXRTextureInfo *)self->_textureInfo arrayLength])
      {
        v65 = v29;
        v32 = 0;
        v33 = 0;
        v34 = v30 * v17;
        v63 = v34;
        v64 = v30;
        do
        {
          v66 = v32;
          v61 = v33;
          v35 = [(TXRTextureInfo *)self->_textureInfo cubemap];
          v36 = 0;
          v37 = 6;
          if (!v35)
          {
            v37 = 1;
          }

          v68 = v37;
          do
          {
            v71 = v31;
            v38 = objc_alloc_init(*(v20 + 3888));
            v39 = [v8 newBufferWithLength:v34];
            [v38 setBuffer:v39];

            [v38 setOffset:0];
            [v38 setBytesPerRow:v29];
            [v38 setBytesPerImage:v30];
            v40 = [v38 buffer];
            v41 = [v40 map];

            memcpy([v41 bytes], v31, v34);
            v42 = [(TXRDeferredTextureInfo *)self->_deferredTextureInfo mipmaps];
            v43 = [v42 objectAtIndexedSubscript:v15];
            v44 = [v43 elements];
            v45 = [v44 objectAtIndexedSubscript:v66];
            v46 = [v45 faces];
            v47 = [v46 objectAtIndexedSubscript:v36];
            [v47 setInfo:v38];

            v48 = [(TXRDeferredTextureInfo *)v72->_deferredTextureInfo mipmaps];
            v49 = [v48 objectAtIndexedSubscript:v15];
            v50 = [v49 elements];
            v51 = [v50 objectAtIndexedSubscript:v66];
            v52 = [v51 faces];
            v53 = [v52 objectAtIndexedSubscript:v36];
            [v53 signalLoaded];

            v20 = 0x279DBB000;
            v30 = v64;

            v34 = v63;
            v29 = v65;

            self = v72;
            v8 = v62;
            v31 = &v71[v64];
            if ([(TXRTextureInfo *)v72->_textureInfo cubemap])
            {
              v31 = ((v31 + 3) & 0xFFFFFFFFFFFFFFFCLL);
            }

            ++v36;
          }

          while (v68 != v36);
          v32 = (v61 + 1);
          v54 = [(TXRTextureInfo *)v72->_textureInfo arrayLength];
          v33 = v61 + 1;
        }

        while (v54 > v32);
      }

      v55 = vcgtq_u64(v60, vdupq_n_s64(1uLL));
      v60 = vsubq_s64(vandq_s8(vshrq_n_u64(v60, 1uLL), v55), vmvnq_s8(v55));
      if (v58 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v58 >> 1;
      }

      v19 = (v31 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v16 = v59 + 1;
      v15 = (v59 + 1);
    }

    while ([(TXRTextureInfo *)self->_textureInfo mipmapLevelCount]> v15);
  }
}

- (unint64_t)determineFormatFromType:(unsigned int)a3 format:(unsigned int)a4 internalFormat:(unsigned int)a5 baseInternalFormat:(unsigned int)a6
{
  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (a5 == a4 && (v7 & 1) == 0)
  {
    if (a4 <= 33318)
    {
      v21 = 6403;
      v22 = 12;
      if (a3 != 5120)
      {
        v22 = 0;
      }

      if (a3 == 5121)
      {
        v22 = 10;
      }

      v23 = 70;
      if (a3 != 5121)
      {
        v23 = 0;
      }

      v24 = 80;
      if (a3 != 5121)
      {
        v24 = 0;
      }

      if (a4 != 32993)
      {
        v24 = 0;
      }

      if (a4 == 6408)
      {
        v24 = v23;
      }
    }

    else
    {
      if (a4 <= 36243)
      {
        v8 = 30;
        if (a3 != 5121)
        {
          v8 = 0;
        }

        v9 = 34;
        if (a3 != 5120)
        {
          v9 = 0;
        }

        v10 = 33;
        if (a3 != 5121)
        {
          v10 = v9;
        }

        if (a4 != 33320)
        {
          v10 = 0;
        }

        if (a4 == 33319)
        {
          return v8;
        }

        else
        {
          return v10;
        }
      }

      v21 = 36244;
      v22 = 14;
      if (a3 != 5120)
      {
        v22 = 0;
      }

      if (a3 == 5121)
      {
        v22 = 13;
      }

      v25 = 91;
      if (a3 != 33640)
      {
        v25 = 0;
      }

      if (a4 == 36249)
      {
        v24 = v25;
      }

      else
      {
        v24 = 0;
      }
    }

    if (a4 == v21)
    {
      return v22;
    }

    else
    {
      return v24;
    }
  }

  if (a5 != a4 || ((v7 ^ 1) & 1) != 0)
  {
    v19 = &word_26F0417E8;
    v20 = 115;
    while (*v19 != a5)
    {
      v19 += 8;
      if (!--v20)
      {
        return 0;
      }
    }

    return *(v19 - 1);
  }

  else
  {
    if (a4 > 36491)
    {
      v12 = 36493;
      v26 = 150;
      if (a6 != 6407)
      {
        v26 = 0;
      }

      v27 = 151;
      if (a6 != 6407)
      {
        v27 = 0;
      }

      if (a4 != 36495)
      {
        v27 = 0;
      }

      if (a4 == 36494)
      {
        v16 = v26;
      }

      else
      {
        v16 = v27;
      }

      v28 = 152;
      if (a6 != 6408)
      {
        v28 = 0;
      }

      v29 = 153;
      if (a6 != 6408)
      {
        v29 = 0;
      }

      if (a4 != 36493)
      {
        v29 = 0;
      }

      if (a4 == 36492)
      {
        v18 = v28;
      }

      else
      {
        v18 = v29;
      }
    }

    else
    {
      v12 = 36284;
      v13 = 142;
      if (a6 != 6407)
      {
        v13 = 0;
      }

      v14 = 143;
      if (a6 != 6407)
      {
        v14 = 0;
      }

      if (a4 == 36286)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      if (a4 == 36285)
      {
        v16 = v13;
      }

      else
      {
        v16 = v15;
      }

      v17 = 140;
      if (a6 != 6407)
      {
        v17 = 0;
      }

      v18 = 141;
      if (a6 != 6407)
      {
        v18 = 0;
      }

      if (a4 != 36284)
      {
        v18 = 0;
      }

      if (a4 == 36283)
      {
        v18 = v17;
      }
    }

    if (a4 <= v12)
    {
      return v18;
    }

    else
    {
      return v16;
    }
  }
}

- (id)parsedImageAtLevel:(unint64_t)a3 element:(unint64_t)a4 face:(unint64_t)a5
{
  v8 = [(TXRDeferredTextureInfo *)self->_deferredTextureInfo mipmaps];
  v9 = [v8 objectAtIndexedSubscript:a3];
  v10 = [v9 elements];
  v11 = [v10 objectAtIndexedSubscript:a4];
  v12 = [v11 faces];
  v13 = [v12 objectAtIndexedSubscript:a5];
  v14 = [v13 info];

  return v14;
}

+ (BOOL)exportTexture:(id)a3 url:(id)a4 error:(id *)a5
{
  v118 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v116 = 0u;
  v117 = 0u;
  v115 = 0u;
  v113 = 169478669;
  __ptr = 0xBB31312058544BABLL;
  v114 = 67305985;
  [v7 dimensions];
  v96 = v9;
  [v7 dimensions];
  *(&v116 + 4) = __PAIR64__(v10, v96);
  [v7 dimensions];
  if (v11 < 2)
  {
    v13 = 0;
  }

  else
  {
    [v7 dimensions];
    v13 = v12;
  }

  HIDWORD(v116) = v13;
  v14 = [v7 mipmapLevels];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [v15 elements];
  if ([v16 count] <= 1)
  {
    LODWORD(v117) = 0;
  }

  else
  {
    v17 = [v7 mipmapLevels];
    v18 = [v17 objectAtIndexedSubscript:0];
    v19 = [v18 elements];
    LODWORD(v117) = [v19 count];
  }

  if ([v7 cubemap])
  {
    v20 = 6;
  }

  else
  {
    v20 = 1;
  }

  DWORD1(v117) = v20;
  v21 = [v7 mipmapLevels];
  DWORD2(v117) = [v21 count];

  if (v13 && v117)
  {
    if (a5)
    {
      _newTXRErrorWithCodeAndErrorString(10, @"KTX does not support volume texture arrays");
      *a5 = v22 = 0;
      goto LABEL_45;
    }

LABEL_41:
    v22 = 0;
    goto LABEL_45;
  }

  v23 = [v7 pixelFormat];
  v24 = &formatEquivalenceTable;
  if (v23 != 70)
  {
    do
    {
      v25 = v24[2];
      v24 += 2;
    }

    while (v25 != v23);
  }

  v26 = *(v24 + 4);
  DWORD2(v115) = *(v24 + 6);
  HIDWORD(v115) = v26;
  LODWORD(v115) = *(v24 + 5);
  LODWORD(v116) = *(v24 + 7);
  if ((v115 - 5122) > 9)
  {
    v27 = 1;
  }

  else
  {
    v27 = dword_26F041F10[(v115 - 5122)];
  }

  DWORD1(v115) = v27;
  v105 = -559038737;
  strcpy(v111, "KTXorientation");
  strcpy(v110, "S=r,T=d,R=i");
  strcpy(v109, "File Origin");
  strcpy(v108, "Apple TextureIO");
  v103 = 28;
  v104 = 27;
  strcpy(v107, "TextureIO major verison");
  v28 = malloc_type_malloc(2uLL, 0x100004077774924uLL);
  __sprintf_chk(v28, 0, 2uLL, "%d", 3);
  v102 = 26;
  strcpy(v106, "TextureIO minor verison");
  v29 = malloc_type_malloc(3uLL, 0x100004077774924uLL);
  __sprintf_chk(v29, 0, 3uLL, "%d", 10);
  v101 = 27;
  HIDWORD(v117) = 128;
  v30 = objc_autoreleasePoolPush();
  v31 = fopen([v8 fileSystemRepresentation], "w+");
  objc_autoreleasePoolPop(v30);
  if (!v31)
  {
    if (a5)
    {
      v82 = MEMORY[0x277CCACA8];
      v83 = [v8 absoluteString];
      v84 = [v82 stringWithFormat:@"Cannot create file at %@", v83];

      *a5 = _newTXRErrorWithCodeAndErrorString(4, v84);
    }

    goto LABEL_41;
  }

  v90 = a5;
  v91 = v8;
  fwrite(&__ptr, 0x40uLL, 1uLL, v31);
  fwrite(&v104, 4uLL, 1uLL, v31);
  fwrite(v111, 0xFuLL, 1uLL, v31);
  fwrite(v110, 0xCuLL, 1uLL, v31);
  fwrite(&v105, 1uLL, 1uLL, v31);
  fwrite(&v103, 4uLL, 1uLL, v31);
  fwrite(v109, 0xCuLL, 1uLL, v31);
  fwrite(v108, 0x10uLL, 1uLL, v31);
  fwrite(&v105, 0, 1uLL, v31);
  fwrite(&v102, 4uLL, 1uLL, v31);
  fwrite(v107, 0x18uLL, 1uLL, v31);
  fwrite(v28, 2uLL, 1uLL, v31);
  fwrite(&v105, 2uLL, 1uLL, v31);
  fwrite(&v101, 4uLL, 1uLL, v31);
  fwrite(v106, 0x18uLL, 1uLL, v31);
  fwrite(v29, 3uLL, 1uLL, v31);
  fwrite(&v105, 1uLL, 1uLL, v31);
  [v7 dimensions];
  v98 = v32;
  v33 = [v7 mipmapLevels];
  v34 = [v33 count];

  if (v34)
  {
    v35 = 0;
    v36 = 0;
    v37 = v98;
    v92 = v7;
    while (1)
    {
      v93 = v36;
      v38 = [v7 mipmapLevels];
      v39 = [v38 objectAtIndexedSubscript:v35];

      v40 = [v39 elements];
      v41 = [v40 objectAtIndexedSubscript:0];
      v42 = [v41 faces];
      v43 = [v42 objectAtIndexedSubscript:0];
      v44 = [v43 bytesPerImage];

      v94 = v37;
      v45 = [v39 elements];
      v46 = v37 * v44 * [v45 count];
      v47 = [v39 elements];
      v48 = [v47 objectAtIndexedSubscript:0];
      v49 = [v48 faces];
      v50 = v46 * [v49 count];

      v100 = v50;
      fwrite(&v100, 4uLL, 1uLL, v31);
      v51 = [v39 elements];
      v52 = [v51 count];
      v53 = v117;

      if (v52 != v53)
      {
        break;
      }

      v54 = [v39 elements];
      v55 = [v54 count];

      if (v55)
      {
        v56 = 0;
        v57 = 0;
        v97 = v39;
        do
        {
          v95 = v57;
          v58 = [v39 elements];
          v59 = [v58 objectAtIndexedSubscript:v56];

          v60 = [v59 faces];
          v61 = [v60 count];

          if (v61)
          {
            v62 = 0;
            v63 = 1;
            do
            {
              v64 = [v59 faces];
              v65 = [v64 objectAtIndexedSubscript:v62];

              v66 = [v65 buffer];
              v67 = [v66 map];

              v68 = [v67 bytes];
              v69 = [v65 bytesPerImage];
              v70 = v69 * v94;
              fwrite(v68, v69 * v94, 1uLL, v31);
              v71 = [v59 faces];
              if ([v71 count] <= 1)
              {
              }

              else
              {
                v72 = [v97 elements];
                v73 = [v72 count];

                if (v73 == 1)
                {
                  v74 = (v70 - 1) & 3;
                  v99 = v74 ^ 3;
                  if (v74 != 3)
                  {
                    fwrite(&v99, 1uLL, 1uLL, v31);
                  }
                }
              }

              v62 = v63;
              v75 = [v59 faces];
              v76 = [v75 count];
            }

            while (v76 > v63++);
          }

          v56 = (v95 + 1);
          v39 = v97;
          v78 = [v97 elements];
          v79 = [v78 count];

          v57 = v95 + 1;
        }

        while (v79 > v56);
      }

      if (v94 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v94 >> 1;
      }

      v7 = v92;
      v35 = (v93 + 1);
      v80 = [v92 mipmapLevels];
      v81 = [v80 count];

      v36 = v35;
      if (v81 <= v35)
      {
        goto LABEL_38;
      }
    }

    v8 = v91;
    if (v90)
    {
      v85 = [v39 elements];
      v86 = [v85 count];

      v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid TXRTexture object: Level 0 has %d array elments but level %d has %d elements", v117, v93, v86];
      *v90 = _newTXRErrorWithCodeAndErrorString(5, v87);
    }

    fclose(v31);

    v22 = 0;
    v7 = v92;
  }

  else
  {
LABEL_38:
    fclose(v31);
    v22 = 1;
    v8 = v91;
  }

LABEL_45:

  v88 = *MEMORY[0x277D85DE8];
  return v22;
}

@end