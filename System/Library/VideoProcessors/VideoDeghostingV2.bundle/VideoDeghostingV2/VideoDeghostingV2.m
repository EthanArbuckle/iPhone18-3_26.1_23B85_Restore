uint64_t sub_44A8(void *a1, void *a2, float a3)
{
  v5 = a1;
  v6 = a2;
  [v6 dist2ghost];
  v8 = v7;
  [v5 dist2ghost];
  if (v8 > (v9 + a3))
  {
    goto LABEL_5;
  }

  [v6 dist2ghost];
  if (v10 != INFINITY)
  {
    [v6 dist2ghost];
    v12 = v11;
    [v5 dist2ghost];
    if (vabds_f32(v12, v13) > a3)
    {
      goto LABEL_8;
    }
  }

  [v6 area];
  v15 = v14;
  [v5 area];
  if (v15 < (v16 + -256.0) || ([v6 area], v19 = v18, objc_msgSend(v5, "area"), vabds_f32(v19, v20) <= 256.0) && (objc_msgSend(v6, "dist2opticalCenter"), v22 = v21, objc_msgSend(v5, "dist2opticalCenter"), v22 > v23))
  {
LABEL_5:
    v17 = 1;
  }

  else
  {
LABEL_8:
    v17 = 0;
  }

  return v17;
}

id sub_4B48()
{

  return [v0 setDifferenceOfGaussianAndLumaFeature:v2];
}

void sub_B4A0(uint64_t a1)
{
  v2 = *(a1 + 104);
}

uint64_t sub_B578()
{

  return kdebug_trace();
}

uint64_t sub_B5C0()
{

  return fig_log_get_emitter();
}

uint64_t sub_B5D8()
{
  result = *(v0 + 8);
  v3 = *(v1 - 168);
  return result;
}

id sub_B5F0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [[RawMetaDataReader alloc] initWithMetaBuffer:v1];

    v3 = [(RawMetaDataReader *)v2 readMetaDataInfoFromSimulation:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_B674(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (v9)
  {
    if ([RawMetaDataReader isOpticalCenterKeyV2Present:v9])
    {
      [RawMetaDataReader readMetaDataFromDictionary:v9 andValidWidth:a2 andValidHeight:a3 andLightSource:a4 andKeyPoints:a5];
    }

    else
    {
      sub_B5F0(v9);
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_B724(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = v2;
  if (v2)
  {
    [v2 setObject:&off_41338 forKeyedSubscript:@"LightMode"];
    [v3 setObject:&off_41350 forKeyedSubscript:@"HomographyType"];
    [v3 setObject:&off_41368 forKeyedSubscript:@"RepairFrameDelay"];
    if (v1)
    {
      [v3 setObject:v1 forKeyedSubscript:@"TuningParameters"];
    }
  }

  else
  {
    sub_21F08();
  }

  return v3;
}

id sub_B7EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = v4;
  if (v4)
  {
    [v4 setObject:&off_41338 forKeyedSubscript:@"LightMode"];
    [v5 setObject:&off_41350 forKeyedSubscript:@"HomographyType"];
    v6 = [NSNumber numberWithBool:a1];
    [v5 setObject:v6 forKeyedSubscript:@"DrawBoundingBox"];

    if (v3)
    {
      [v5 setObject:v3 forKeyedSubscript:@"TuningParameters"];
    }
  }

  else
  {
    sub_21F80();
  }

  return v5;
}

CVImageBufferRef sub_B8D8(const void *a1)
{
  v1 = sub_B920(a1, kFigCaptureSampleBufferAttachedMediaKey_LightSourceMask);
  if (v1)
  {

    return CMSampleBufferGetImageBuffer(v1);
  }

  else
  {
    sub_21FF8();
    return 0;
  }
}

void *sub_B920(const void *a1, void *a2)
{
  v3 = a2;
  v4 = CMGetAttachment(a1, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:v3];

    if (!v6)
    {
      sub_22070();
    }
  }

  else
  {
    sub_220E4();
    v6 = 0;
  }

  return v6;
}

CFTypeRef sub_B9B0(const void *a1)
{
  v1 = sub_B920(a1, kFigCaptureSampleBufferAttachedMediaKey_KeypointDescriptorData);
  if (!v1)
  {
    sub_2224C();
    return 0;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(v1);
  if (!DataBuffer)
  {
    sub_221D4();
    return 0;
  }

  v3 = CMGetAttachment(DataBuffer, kCMBlockBufferAttachmentKey_CVDataBuffer, 0);
  if (v3)
  {
    IOSurface = CVDataBufferGetIOSurface();
    IOSurfaceLock(IOSurface, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(IOSurface);
    if (*BaseAddress == 1000)
    {
      v6 = *(BaseAddress + 2);
      v7 = *(BaseAddress + 3);
      *BaseAddress = 1;
      *(BaseAddress + 4) = 0uLL;
      *(BaseAddress + 20) = v6;
      *(BaseAddress + 7) = 0;
      *(BaseAddress + 4) = v7;
      *(BaseAddress + 40) = 0uLL;
    }

    IOSurfaceUnlock(IOSurface, 0, 0);
  }

  else
  {
    sub_2215C();
  }

  return v3;
}

uint64_t sub_BA98(__CVBuffer **a1, CMSampleBufferRef sbuf)
{
  if (!a1)
  {
    sub_2242C();
    return 2;
  }

  if (!sbuf)
  {
    sub_223B4();
    return 4294954516;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (!ImageBuffer)
  {
    sub_2233C();
    return 4294954516;
  }

  v5 = ImageBuffer;
  v6 = CMGetAttachment(sbuf, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (v6)
  {
    v7 = v6;
    v8 = sub_B920(sbuf, kFigCaptureSampleBufferAttachedMediaKey_LightSourceMask);
    v9 = sub_B920(sbuf, kFigCaptureSampleBufferAttachedMediaKey_KeypointDescriptorData);
    Width = CVPixelBufferGetWidth(v5);
    Height = CVPixelBufferGetHeight(v5);
    v12 = sub_B674(v7, Width, Height, v8, v9);
    v13 = a1[1];
    a1[1] = v12;

    *a1 = v5;
    return 0;
  }

  else
  {
    sub_222C4();
    return 4294954513;
  }
}

uint64_t sub_BBAC(uint64_t a1, uint64_t *a2, int a3)
{
  obj = 0;
  if (!a1 || (*(a1 + 12) = 0, !a2) || (v5 = *(a1 + 8), v5 >= 3))
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    v13 = 2;
    goto LABEL_21;
  }

  if (*(a2 + 3) - 1 < v5)
  {
    v5 = *(a2 + 3) - 1;
  }

  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16 * v5;
    do
    {
      v10 = *a2;
      v11 = *a2 + v7;
      v12 = *(v11 + 24);
      if (!v12)
      {
        fig_log_get_emitter();
LABEL_24:
        FigDebugAssert3();
        v13 = 4294954516;
        goto LABEL_21;
      }

      if (a3)
      {
        v13 = sub_BA98(&v20, v12);
        if (v13)
        {
          fig_log_get_emitter();
          FigDebugAssert3();
          goto LABEL_21;
        }

        ImageBuffer = v20;
      }

      else
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(*(v11 + 24));
        if (!ImageBuffer)
        {
          fig_log_get_emitter();
          FigDebugAssert3();
          v19 = obj;
          obj = 0;

          v20 = 0;
          fig_log_get_emitter();
          goto LABEL_24;
        }

        v15 = *(v10 + v7 + 32);
        if (v15)
        {
          if (*(v10 + v7 + 40) == 1)
          {
            v15 = CFDictionaryGetValue(v15, @"MetaData");
          }

          else
          {
            v15 = 0;
          }
        }

        v16 = obj;
        obj = v15;

        v20 = ImageBuffer;
        if (!obj)
        {
          break;
        }
      }

      v17 = *a1 + v8;
      *v17 = ImageBuffer;
      objc_storeStrong((v17 + 8), obj);
      ++*(a1 + 12);
      v8 += 16;
      v7 += 24;
    }

    while (v9 != v8);
  }

  v13 = 0;
LABEL_21:

  return v13;
}

uint64_t sub_BF58(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = *a1;
    if (v4)
    {
      *a1 = 0;
      free(v4);
    }

    *(a1 + 8) = 0;
    v5 = malloc_type_calloc(a2, 0x10uLL, 0xA0040AFF93C70uLL);
    *a1 = v5;
    if (v5)
    {
      result = 0;
      *(a1 + 8) = a2;
    }

    else
    {
      sub_224A4();
      return 4294954510;
    }
  }

  else
  {
    sub_2251C();
    return 2;
  }

  return result;
}

void sub_BFD8(char **a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    v3 = *a1;
    if (v2 < 1)
    {
      if (!v3)
      {
LABEL_8:
        a1[1] = 0;
        return;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *&v3[v4 + 8];
        *&v3[v4 + 8] = 0;

        v3 = *a1;
        *&(*a1)[v4] = 0;
        ++v5;
        v4 += 16;
      }

      while (v5 < *(a1 + 2));
    }

    *a1 = 0;
    free(v3);
    goto LABEL_8;
  }
}

id sub_C068(__CVBuffer *a1, void *a2, unsigned int a3, int a4)
{
  v7 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v9 = 0;
  if (PixelFormatType > 1278226533)
  {
    if (PixelFormatType <= 1380401728)
    {
      switch(PixelFormatType)
      {
        case 1278226534:
          v10 = 55;
          break;
        case 1278226536:
          v10 = 25;
          break;
        case 1278226742:
          v10 = 20;
          break;
        default:
          goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (PixelFormatType != 1380401729)
    {
      if (PixelFormatType == 2016686640 || PixelFormatType == 2019963440)
      {
        v14 = a4 == 0;
        v15 = 23;
        if (a4)
        {
          v15 = 20;
        }

        v16 = 63;
        v17 = 60;
LABEL_23:
        if (!v14)
        {
          v16 = v17;
        }

        if (a3)
        {
          v10 = v16;
        }

        else
        {
          v10 = v15;
        }

        goto LABEL_35;
      }

      goto LABEL_36;
    }

    v11 = a4 == 0;
    v12 = 73;
    v13 = 70;
LABEL_32:
    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = v13;
    }

LABEL_35:
    v9 = [v7 bindPixelBufferToMTL2DTexture:a1 pixelFormat:v10 usage:7 plane:a3];
    goto LABEL_36;
  }

  if (PixelFormatType > 1111970368)
  {
    if (PixelFormatType == 1111970369)
    {
      v11 = a4 == 0;
      v12 = 73;
      v13 = 80;
    }

    else
    {
      if (PixelFormatType != 1278226481 && PixelFormatType != 1278226488)
      {
        goto LABEL_36;
      }

      v11 = a4 == 0;
      v12 = 13;
      v13 = 10;
    }

    goto LABEL_32;
  }

  if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
  {
    v14 = a4 == 0;
    v15 = 13;
    if (a4)
    {
      v15 = 10;
    }

    v16 = 33;
    v17 = 30;
    goto LABEL_23;
  }

LABEL_36:

  return v9;
}

__CVBuffer *sub_C254(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelBuffer = CreatePixelBuffer();
  if (PixelBuffer)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v6 = CVPixelBufferGetBytesPerRow(PixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    CVPixelBufferLockBaseAddress(PixelBuffer, 0);
    v8 = CVPixelBufferGetBaseAddress(PixelBuffer);
    if (Height)
    {
      for (i = 0; i != Height; ++i)
      {
        v10 = Width;
        v11 = BaseAddress;
        for (j = v8; v10; --v10)
        {
          v13 = *v11++;
          *j++ = v13;
        }

        v8 += v6;
        BaseAddress += BytesPerRow;
      }
    }

    CVPixelBufferUnlockBaseAddress(PixelBuffer, 0);
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  else
  {
    sub_22820();
  }

  return PixelBuffer;
}

uint64_t sub_C360(__CVBuffer *a1, int a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  result = 0;
  if (PixelFormatType <= 796423729)
  {
    if (PixelFormatType > 762865199)
    {
      if (PixelFormatType > 792225327)
      {
        if (PixelFormatType > 796419631)
        {
          if (PixelFormatType != 796419632)
          {
            if (PixelFormatType != 796419634)
            {
              v5 = 796423728;
              goto LABEL_43;
            }

LABEL_49:
            v12 = a2 == 0;
            v13 = 547;
            v14 = 529;
            goto LABEL_59;
          }

          goto LABEL_50;
        }

        if (PixelFormatType == 792225328)
        {
          goto LABEL_58;
        }

        v7 = 792229424;
        goto LABEL_57;
      }

      if (PixelFormatType > 762869295)
      {
        if (PixelFormatType == 762869296)
        {
          goto LABEL_50;
        }

        v8 = 30258;
      }

      else
      {
        if (PixelFormatType == 762865200)
        {
          goto LABEL_50;
        }

        v8 = 26162;
      }

      v6 = v8 | 0x2D780000;
LABEL_48:
      if (PixelFormatType != v6)
      {
        return result;
      }

      goto LABEL_49;
    }

    if (PixelFormatType <= 645428783)
    {
      if (PixelFormatType <= 645424687)
      {
        if (PixelFormatType != 641230384)
        {
          v7 = 641234480;
          goto LABEL_57;
        }

LABEL_58:
        v12 = a2 == 0;
        v13 = 540;
        v14 = 520;
        goto LABEL_59;
      }

      if (PixelFormatType == 645424688)
      {
        goto LABEL_50;
      }

      v10 = 26162;
LABEL_47:
      v6 = v10 | 0x26780000;
      goto LABEL_48;
    }

    if (PixelFormatType <= 758670895)
    {
      if (PixelFormatType == 645428784)
      {
        goto LABEL_50;
      }

      v10 = 30258;
      goto LABEL_47;
    }

    if (PixelFormatType == 758670896)
    {
      goto LABEL_58;
    }

    v7 = 758674992;
LABEL_57:
    if (PixelFormatType != v7)
    {
      return result;
    }

    goto LABEL_58;
  }

  if (PixelFormatType > 2016686641)
  {
    if (PixelFormatType > 2084075055)
    {
      if (PixelFormatType <= 2088265265)
      {
        if (PixelFormatType != 2084075056)
        {
          v5 = 2088265264;
LABEL_43:
          if (PixelFormatType != v5)
          {
            return result;
          }

          goto LABEL_50;
        }

        goto LABEL_58;
      }

      if (PixelFormatType == 2088265266)
      {
        goto LABEL_49;
      }

      if (PixelFormatType == 2088269360)
      {
LABEL_50:
        v12 = a2 == 0;
        v13 = 546;
        v14 = 528;
        goto LABEL_59;
      }

      v6 = 2088269362;
      goto LABEL_48;
    }

    if (PixelFormatType > 2019963441)
    {
      if (PixelFormatType != 2019963442)
      {
        v7 = 2084070960;
        goto LABEL_57;
      }
    }

    else if (PixelFormatType != 2016686642)
    {
      v9 = 2019963440;
LABEL_65:
      if (PixelFormatType != v9)
      {
        return result;
      }

      v12 = a2 == 0;
      v13 = 543;
      v14 = 525;
      goto LABEL_59;
    }

    v12 = a2 == 0;
    v13 = 544;
    v14 = 526;
LABEL_59:
    if (v12)
    {
      return v13;
    }

    else
    {
      return v14;
    }
  }

  if (PixelFormatType > 1882468913)
  {
    if (PixelFormatType > 1885745713)
    {
      if (PixelFormatType != 1885745714)
      {
        v9 = 2016686640;
        goto LABEL_65;
      }
    }

    else if (PixelFormatType != 1882468914)
    {
      v11 = 1885745712;
      goto LABEL_53;
    }

    return 547;
  }

  if (PixelFormatType <= 875704437)
  {
    if (PixelFormatType == 796423730)
    {
      goto LABEL_49;
    }

    v7 = 875704422;
    goto LABEL_57;
  }

  if (PixelFormatType == 875704438)
  {
    goto LABEL_58;
  }

  v11 = 1882468912;
LABEL_53:
  if (PixelFormatType == v11)
  {
    return 546;
  }

  return result;
}

char *sub_C6CC(__CVBuffer *a1, void *a2, int a3, char a4)
{
  v7 = a2;
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    v9 = IOSurface;
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = sub_C360(a1, a3);
    if (v10)
    {
      WidthOfPlane = IOSurfaceGetWidthOfPlane(v9, 0);
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v9, 0);
      ElementWidth = IOSurfaceGetElementWidth(v9);
      ElementHeight = IOSurfaceGetElementHeight(v9);
      if (a4)
      {
        v15 = 1;
      }

      else if ((v10 - 540) > 6)
      {
        v15 = 3;
      }

      else
      {
        v15 = qword_2DE30[(v10 - 540)];
      }

      sub_C864(v9, &v17, 1);
      v10 = [v7 bindIOSurfaceToMTL2DTexture:v9 pixelFormat:v10 usage:v15 width:WidthOfPlane / ElementWidth height:HeightOfPlane / ElementHeight plane:0];
      v32 = v23;
      v33 = v24;
      v34 = v25;
      v28 = v19;
      v29 = v20;
      v30 = v21;
      v31 = v22;
      v26 = v17;
      v27 = v18;
      IOSurfaceSetBulkAttachments2();
    }

    else
    {
      sub_22898();
    }
  }

  else
  {
    sub_22910();
    v10 = 0;
  }

  return v10;
}

uint64_t sub_C864(uint64_t a1, __int128 *a2, int a3)
{
  if (!a1)
  {
    return sub_22988();
  }

  if (a3)
  {
    IOSurfaceGetBulkAttachments();
    v17 = a2[6];
    v19 = a2[7];
    v21 = *(a2 + 32);
    v9 = a2[2];
    v11 = a2[3];
    v13 = a2[4];
    v15 = a2[5];
    v5 = *a2;
    v7 = a2[1];
  }

  else
  {
    v18 = a2[6];
    v20 = a2[7];
    v22 = *(a2 + 32);
    v10 = a2[2];
    v12 = a2[3];
    v14 = a2[4];
    v16 = a2[5];
    v6 = *a2;
    v8 = a2[1];
  }

  return IOSurfaceSetBulkAttachments2();
}

uint64_t sub_D1B0()
{

  return CreatePixelBuffer();
}

FILE *sub_E01C(const char *a1)
{
  v2 = [NSString stringWithFormat:@"%s", a1];
  v3 = [v2 stringByDeletingLastPathComponent];
  v4 = +[NSFileManager defaultManager];
  v14 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = fopen(a1, "wb");
  }

  else
  {
    if (qword_49CD8 != -1)
    {
      sub_233F4();
    }

    v8 = qword_49CD0;
    if (os_log_type_enabled(qword_49CD0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

FILE *sub_E620(unsigned int a1, int a2, unsigned int a3, _BYTE *a4, const char *a5)
{
  result = sub_E01C(a5);
  if (result)
  {
    v10 = result;
    v11 = malloc_type_malloc(3 * a1, 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      fprintf(v10, "P6 %u %u 255\n", a1, a2);
      if (a2)
      {
        v13 = 0;
        do
        {
          v14 = a1;
          v15 = v12;
          for (i = a4; v14; --v14)
          {
            *v15 = *i;
            v15[1] = i[1];
            v15[2] = i[2];
            i += 4;
            v15 += 3;
          }

          fwrite(v12, 3uLL, a1, v10);
          a4 += a3;
          ++v13;
        }

        while (v13 != a2);
      }

      free(v12);
    }

    return fclose(v10);
  }

  return result;
}

void sub_12978(id a1)
{
  qword_49CD0 = os_log_create("com.apple.cameracapture", "legacyLog");

  _objc_release_x1();
}

uint64_t sub_129BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      a1 = 0;
    }

    else
    {
      v5 = [v3 objectForKeyedSubscript:@"ExposureInfo"];
      v6 = v5;
      a1 = 0;
      if (v4 && v5)
      {
        [v5 floatValue];
        a1 = v7 > 0.0083;
      }
    }
  }

  return a1;
}

double sub_12A50(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *&result = 0xF00000000;
  *(a1 + 44) = 0xF00000000;
  *(a1 + 36) = 0;
  *(a1 + 55) = 1;
  *(a1 + 56) = 256;
  return result;
}

id sub_12A8C(void *a1, void *a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void *a9, CMTime *a10)
{
  v16 = a1;
  v17 = a2;
  v18 = a9;
  v19 = &CreatePixelBuffer_ptr;
  v20 = +[NSMutableDictionary dictionary];
  time = *a10;
  v21 = CMTimeCopyAsDictionary(&time, kCFAllocatorDefault);
  [v20 setObject:v21 forKeyedSubscript:@"IspTimestamp"];

  v22 = v17;
  v23 = v16;
  v24 = v18;
  v25 = objc_alloc_init(NSMutableDictionary);
  [v25 setObject:&off_41398 forKeyedSubscript:@"GhostInfoVersion"];
  v47.x = a3;
  v47.y = a4;
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v47);
  [v25 setObject:DictionaryRepresentation forKeyedSubscript:@"EstimatedOpticalCenter"];
  [v25 setObject:v24 forKeyedSubscript:@"MetaData"];
  [v25 setObject:&__kCFBooleanFalse forKeyedSubscript:@"PipeReset"];
  [v25 setObject:v23 forKeyedSubscript:@"RepairMeta"];
  if (a8)
  {
    v41 = DictionaryRepresentation;
    v42 = v24;
    v43 = v23;
    v44 = v20;
    v27 = objc_alloc_init(NSMutableArray);
    if ([v22 count])
    {
      v28 = 0;
      do
      {
        v29 = [v22 objectAtIndexedSubscript:v28];
        v30 = objc_alloc_init(v19[175]);
        [v29 roi];
        v31 = v19;
        v32 = CGRectCreateDictionaryRepresentation(v48);
        v33 = [[NSDictionary alloc] initWithDictionary:v32];

        [v30 setObject:v33 forKeyedSubscript:@"GhostRect"];
        [v29 confidence];
        v34 = [NSNumber numberWithFloat:?];
        [v30 setObject:v34 forKeyedSubscript:@"GhostConfidence"];

        v35 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v29 trackID]);
        [v30 setObject:v35 forKeyedSubscript:@"GhostTrackID"];

        v36 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v29 trackedCnt]);
        [v30 setObject:v36 forKeyedSubscript:@"GhostTrackCount"];

        [v29 ROIWSpatial];
        v37 = [NSNumber numberWithFloat:?];
        [v30 setObject:v37 forKeyedSubscript:@"GhostBlendingWeightsROIWSpatial"];

        [v29 ROIWStrongRepairInSpatial];
        v38 = [NSNumber numberWithFloat:?];
        [v30 setObject:v38 forKeyedSubscript:@"GhostBlendingWeightsROIWStrongRepairInSpatial"];

        [v29 ROIWOriginal];
        v39 = [NSNumber numberWithFloat:?];
        [v30 setObject:v39 forKeyedSubscript:@"GhostBlendingWeightsROIWOriginal"];

        v19 = v31;
        [v27 addObject:v30];

        ++v28;
      }

      while ([v22 count] > v28);
    }

    [v25 setObject:v27 forKeyedSubscript:@"GhostsArray"];

    v23 = v43;
    v20 = v44;
    v24 = v42;
    DictionaryRepresentation = v41;
  }

  [v20 setObject:v25 forKeyedSubscript:@"GhostsInfoMetaData"];

  return v20;
}

void sub_12EEC(void *a1)
{
  v39 = a1;
  if ([v39 count])
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
    v4 = v39;
    do
    {
      v5 = v2;
      v2 = [v4 objectAtIndexedSubscript:v1];

      v6 = [v2 trackIDsAfterMerge];

      if (!v6)
      {
        v7 = +[NSMutableArray array];
        [v2 setTrackIDsAfterMerge:v7];

        v8 = [v2 trackIDsAfterMerge];
        v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 trackID]);
        [v8 addObject:v9];
      }

      v1 = v3;
      v10 = [v39 count] > v3++;
      v4 = v39;
    }

    while (v10);
  }

  else
  {
    v2 = 0;
    v4 = v39;
  }

  v11 = 0;
  do
  {
    v12 = [v4 count];
    if (!v12)
    {
      break;
    }

    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v2;
      v2 = [v39 objectAtIndexedSubscript:v13];

      [v2 bbox];
      v18 = *(&v16 + 1);
      if (++v13 >= v12)
      {
        v37 = v12;
      }

      else
      {
        *&v38[16] = *&v17;
        *&v38[24] = *(&v17 + 1);
        v19 = v13;
        *v38 = *&v16;
        *&v38[8] = *(&v16 + 1);
        v20 = v39;
        do
        {
          v21 = v11;
          v22 = v19;
          v11 = [v20 objectAtIndexedSubscript:v19];

          [v11 bbox];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v47.origin.x = v23;
          v47.origin.y = v25;
          v47.size.width = v27;
          v47.size.height = v29;
          v45 = CGRectIntersection(*v38, v47);
          y = v45.origin.y;
          x = v45.origin.x;
          height = v45.size.height;
          width = v45.size.width;
          v48.origin.x = v24;
          v48.origin.y = v26;
          v48.size.width = v28;
          v48.size.height = v30;
          v46 = CGRectUnion(*v38, v48);
          v31 = v46.origin.x;
          v32 = v46.origin.y;
          v33 = v46.size.width;
          v34 = v46.size.height;
          v46.origin.y = y;
          v46.origin.x = x;
          v46.size.height = height;
          v46.size.width = width;
          if (!CGRectIsNull(v46))
          {
            --v19;
            [v39 removeObjectAtIndex:v22];
            --v12;
            v35 = [v2 trackIDsAfterMerge];
            v36 = [v11 trackIDsAfterMerge];
            [v35 addObjectsFromArray:v36];

            v14 = 1;
            *&v38[16] = v33;
            *&v38[24] = v34;
            *v38 = v31;
            *&v38[8] = v32;
          }

          ++v19;
          v20 = v39;
        }

        while (v19 < v12);
        v37 = v12;
        *&v16 = *v38;
        v18 = *&v38[8];
      }

      *(&v16 + 1) = v18;
      [v2 setBbox:v16];
    }

    while (v13 < v37);
    v4 = v39;
  }

  while ((v14 & 1) != 0);
}

void sub_13220(void *a1, int a2)
{
  v3 = a1;
  [v3 commit];
  if (a2)
  {
    [v3 waitUntilCompleted];
  }

  else
  {
    [v3 waitUntilScheduled];
  }
}

BOOL sub_13280(void *a1, int a2, float a3)
{
  v5 = a1;
  if ([v5 count] >= 2 * a2)
  {
    v17 = 1;
  }

  else
  {
    v6 = a3 * 4.0;
    if ([v5 count])
    {
      v7 = 0;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:{v7, v19}];
        [v8 bbox];
        v19 = v9;

        _V1.S[2] = DWORD2(v19);
        _S0 = HIDWORD(v19);
        __asm { FMLA            S9, S0, V1.S[2] }

        ++v7;
      }

      while (v7 < [v5 count]);
    }

    else
    {
      _S9 = 0.0;
    }

    v17 = _S9 >= v6;
  }

  return v17;
}

float *sub_14EE4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9)
{
  v17 = malloc_type_malloc(0x18uLL, 0x10200405AF6BDC9uLL);
  if (a2 < 0)
  {
    sub_24860();
  }

  if (a3 < 0)
  {
    sub_24834();
  }

  if (a4 < 0)
  {
    sub_24808();
  }

  if (a5 < 0)
  {
    sub_247DC();
  }

  if (a6 < 0)
  {
    sub_247B0();
  }

  if (a7 < 0)
  {
    sub_24784();
  }

  v18 = a2 * a1;
  v19 = (a2 * a1 / 100);
  v20 = a3 * a1;
  v21 = a3 * a1 / 100;
  v110[0] = v19;
  v110[1] = v21;
  v22 = a4 * a1;
  v23 = a4 * a1 / 100;
  v24 = a5 * a1;
  v25 = a5 * a1 / 100;
  v110[2] = v23;
  v110[3] = v25;
  v26 = a6 * a1;
  v27 = a6 * a1 / 100;
  v28 = a7 * a1;
  v29 = a7 * a1 / 100;
  v110[4] = v27;
  v110[5] = v29;
  v30 = v21 + v19 + v23 + v25;
  v31 = v30 + v27 + v29;
  if (v31 <= 0)
  {
    sub_24758();
  }

  v32 = v17;
  v107 = v24;
  v108 = v22;
  v105 = v28;
  v106 = v26;
  *(v17 + 2) = v31;
  v33 = v30 + v27 + v29;
  *v17 = malloc_type_malloc(3 * v33, 0x100004033FC2DF1uLL);
  *(v32 + 3) = a8;
  if (v18 < 100)
  {
    v39 = 0;
    v37 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 1;
    v37 = v33;
    do
    {
      if (v35 >= *(v32 + 2))
      {
        sub_2472C();
      }

      ++v35;
      v38 = (*v32 + v36);
      *(v38 - 1) = 0;
      *v38 = v34 / v19;
      v38[1] = -1;
      v36 += 3;
      v34 += 255;
    }

    while (v19 != v35);
    v39 = v18 / 100;
  }

  if (v20 >= 100)
  {
    v40 = 0;
    v41 = v39;
    v42 = v20 / 100;
    v43 = 3 * v39;
    do
    {
      if (v41 >= *(v32 + 2))
      {
        sub_2472C();
      }

      ++v41;
      v44 = *v32 + v43;
      *v44 = -256;
      *(v44 + 2) = ~(v40 / v21);
      v43 += 3;
      v40 += 255;
      --v42;
    }

    while (v42);
    v39 = v41;
  }

  if (v108 >= 100)
  {
    v45 = 0;
    v46 = v39;
    v47 = 3 * v39;
    v48 = v23;
    do
    {
      if (v46 >= *(v32 + 2))
      {
        sub_2472C();
      }

      ++v46;
      v49 = *v32 + v47;
      *v49 = v45 / v23;
      *(v49 + 1) = 255;
      v47 += 3;
      v45 += 255;
      --v48;
    }

    while (v48);
    v39 = v46;
  }

  if (v107 >= 100)
  {
    v50 = 0;
    v51 = v39;
    v52 = 3 * v39;
    v53 = v25;
    do
    {
      if (v51 >= *(v32 + 2))
      {
        sub_2472C();
      }

      ++v51;
      v54 = *v32 + v52;
      *v54 = -1;
      *(v54 + 1) = ~(v50 / v25);
      v52 += 3;
      v50 += 255;
      --v53;
    }

    while (v53);
    v39 = v51;
  }

  if (v106 >= 100)
  {
    v55 = 0;
    v56 = v39;
    v57 = 3 * v39;
    v58 = v27;
    do
    {
      if (v56 >= *(v32 + 2))
      {
        sub_2472C();
      }

      ++v56;
      v59 = *v32 + v57;
      *v59 = 255;
      *(v59 + 2) = v55 / v27;
      v57 += 3;
      v55 += 255;
      --v58;
    }

    while (v58);
    v39 = v56;
  }

  if (v105 >= 100)
  {
    v60 = 0;
    v61 = v39;
    v62 = 3 * v39;
    v63 = v29;
    do
    {
      if (v61 >= *(v32 + 2))
      {
        sub_2472C();
      }

      ++v61;
      v64 = *v32 + v62;
      *v64 = ~(v60 / v29);
      *(v64 + 1) = -256;
      v62 += 3;
      v60 += 255;
      --v63;
    }

    while (v63);
  }

  if (a8 < 0 && v37 != 1)
  {
    v65 = 0;
    LODWORD(v66) = v37 >> 1;
    if (v37 >> 1 <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = v66;
    }

    v67 = v66 + 2 * v66;
    v68 = 3 * v37 - 3;
    do
    {
      v69 = (*v32 + v65);
      v70 = *v32 + v68;
      v71 = *(v69 + 2);
      v72 = *v69;
      v73 = *(v70 + 2);
      *v69 = *v70;
      *(v69 + 2) = v73;
      *v70 = v72;
      *(v70 + 2) = v71;
      v65 += 3;
      v68 -= 3;
    }

    while (v67 != v65);
  }

  if (a8 >= 0)
  {
    v74 = a8;
  }

  else
  {
    v74 = -a8;
  }

  v75 = v74 - 1;
  LODWORD(v76) = 6 - v74;
  if (a8 < 0)
  {
    v76 = v76;
  }

  else
  {
    v76 = v75;
  }

  if (v76 >= 1)
  {
    v77 = 0;
    v78 = v110;
    do
    {
      v79 = v77;
      v81 = *v78++;
      v80 = v81;
      v77 += v81;
      --v76;
    }

    while (v76);
    if (v77 > 0)
    {
      v82 = *v32;
      v83 = v37 - 1;
      if (v77 != 1)
      {
        v84 = 0;
        v85 = (v82 + 3 * (v77 - 1));
        v86 = v79 + v80 - 2;
        v87 = *v32;
        do
        {
          v88 = *(v87 + 2);
          v89 = *v87;
          v90 = *(v85 + 2);
          *v87 = *v85;
          *(v87 + 2) = v90;
          *v85 = v89;
          *(v85 + 2) = v88;
          v87 = (v87 + 3);
          v85 = (v85 - 3);
          v91 = ++v84 < v86--;
        }

        while (v91);
      }

      if (v77 < v83)
      {
        v92 = (v82 + 3 * v83);
        v93 = (v82 + 3 * v77);
        v94 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v95 = *(v93 + 2);
          v96 = *v93;
          v97 = *(v92 + 2);
          *v93 = *v92;
          *(v93 + 2) = v97;
          *v92 = v96;
          *(v92 + 2) = v95;
          v93 = (v93 + 3);
          v92 = (v92 - 3);
          v91 = ++v77 < v94--;
        }

        while (v91);
      }

      if (v37 != 1)
      {
        v98 = 0;
        v99 = (v82 + 3 * (v37 - 1));
        v100 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v101 = *(v82 + 2);
          v102 = *v82;
          v103 = *(v99 + 2);
          *v82 = *v99;
          *(v82 + 2) = v103;
          *v99 = v102;
          *(v99 + 2) = v101;
          v82 = (v82 + 3);
          v99 = (v99 - 3);
          v91 = ++v98 < v100--;
        }

        while (v91);
      }
    }
  }

  v32[4] = a9;
  return v32;
}

void sub_154DC(void ***a1)
{
  if (a1)
  {
    free(**a1);
    free(*a1);
    *a1 = 0;
  }
}

uint64_t sub_1551C(uint64_t a1, int a2, float a3, double a4, double a5, float a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    sub_2488C();
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 != 0.0)
  {
    v9 = v8 / 6.28318531;
    a3 = v9 + a3;
    v10 = 1.0;
    if (a3 < 0.0)
    {
LABEL_9:
      a3 = a3 + v10;
      goto LABEL_10;
    }

    if (a3 > 1.0)
    {
      v10 = -1.0;
      goto LABEL_9;
    }
  }

LABEL_10:
  v11 = a3 * (v7 - 1);
  v12 = v11;
  v13 = (v11 + 1) % v7;
  *&v14 = v11;
  v15 = v11 - *&v14;
  LOBYTE(v14) = *(*a1 + 3 * v12 + a2);
  LOBYTE(a6) = *(*a1 + 3 * v13 + a2);
  return (((v15 * (LODWORD(a6) / 255.0)) + ((1.0 - v15) * (v14 / 255.0))) * 255.0);
}

uint64_t sub_15600(uint64_t result, int a2, int a3, float *a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, float a12, int a13)
{
  if (a3 >= 1)
  {
    v13 = a4;
    v14 = result;
    v15 = 0;
    v16 = a6;
    v17 = 1.1755e-38;
    v18 = 3.4028e38;
    v19 = a4;
    v20 = a2;
    do
    {
      v21 = a2;
      v22 = v19;
      if (a2 >= 1)
      {
        do
        {
          *&a10 = *v22;
          if (*v22 < v18)
          {
            v18 = *v22;
          }

          if (*&a10 > v17)
          {
            v17 = *v22;
          }

          v22 = (v22 + a6);
          --v21;
        }

        while (v21);
      }

      ++v15;
      v19 = (v19 + a5);
    }

    while (v15 != a3);
    v23 = 0;
    v24 = v17 - v18;
    v35 = a8;
    v25 = (a7 + 1);
    v36 = a3;
    v37 = a5;
    do
    {
      v26 = v13;
      v27 = v25;
      if (a2 >= 1)
      {
        do
        {
          v28 = fmaxf(fminf((*v26 - v18) / v24, 1.0), 0.0);
          *(v27 - 1) = sub_1551C(v14, 0, v28, a10, a11, a12);
          *v27 = sub_1551C(v14, 1, v28, v29, v30, v31);
          result = sub_1551C(v14, 2, v28, v32, v33, v34);
          v27[1] = result;
          v27[2] = -1;
          v27 += a13;
          v26 = (v26 + v16);
          --v20;
        }

        while (v20);
      }

      ++v23;
      v20 = a2;
      v25 += v35;
      v13 = (v13 + v37);
    }

    while (v23 != v36);
  }

  return result;
}

void sub_16CA0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

_BYTE *sub_19DA0(uint64_t a1)
{
  result = [*(a1 + 32) contents];
  result[9536] = 1;
  return result;
}

BOOL sub_1BEC8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      [v3 extendBBox];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = [v4 objectAtIndexedSubscript:v5];
      [v14 extendBBox];
      v22.origin.x = v15;
      v22.origin.y = v16;
      v22.size.width = v17;
      v22.size.height = v18;
      v21.origin.x = v7;
      v21.origin.y = v9;
      v21.size.width = v11;
      v21.size.height = v13;
      v19 = CGRectIntersectsRect(v21, v22);

      if (v19)
      {
        break;
      }

      ++v5;
    }

    while ([v4 count] > v5);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id sub_1EA50()
{

  return [v0 setBuffer:v1 offset:0 atIndex:0];
}

id sub_1EA70(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, char a12)
{
  a11 = a1;

  return [v12 dispatchThreadgroups:&a12 threadsPerThreadgroup:&a10];
}

uint64_t sub_1EA90()
{

  return fig_log_get_emitter();
}

void sub_1EFB8(void *a1, void *a2)
{
  v6 = a2;
  if ([v6 status] == &dword_4)
  {
    [v6 GPUEndTime];
    [v6 GPUStartTime];
  }

  else
  {
    [v6 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    kdebug_trace();
  }
}

void sub_1F214(void *a1, void *a2)
{
  v6 = a2;
  if ([v6 status] == &dword_4)
  {
    [v6 GPUEndTime];
    [v6 GPUStartTime];
  }

  else
  {
    [v6 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    kdebug_trace();
  }
}

uint64_t sub_1FE14()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_1FE8C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

id sub_1FF04(void *a1)
{
  fig_log_get_emitter();
  sub_4B30();
  FigDebugAssert3();

  return [a1 removeAllObjects];
}

id sub_1FF94(void *a1)
{
  fig_log_get_emitter();
  sub_4B30();
  FigDebugAssert3();

  return [a1 removeAllObjects];
}

uint64_t sub_21340()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_213EC()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_21498()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_21544()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_215F0()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_2169C()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_21748()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_217F4()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_218A0()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_2194C()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_219F8()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_21AA4()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_21B50()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

uint64_t sub_21BFC()
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  v0 = FigSignalErrorAtGM();
  return sub_B5A4(v0);
}

__n128 sub_21CA8(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 504), a2);
  v3 = *(a1 + 240);
  *(a1 + 288) = *(a1 + 224);
  *(a1 + 304) = v3;
  result = *(a1 + 256);
  v5 = *(a1 + 272);
  *(a1 + 320) = result;
  *(a1 + 336) = v5;
  *(a1 + 416) = 1;
  return result;
}

uint64_t sub_21D08()
{
  fig_log_get_emitter();
  sub_B568();
  return FigDebugAssert3();
}

uint64_t sub_21D88()
{
  fig_log_get_emitter();
  sub_B568();
  return FigDebugAssert3();
}

uint64_t sub_21E08()
{
  fig_log_get_emitter();
  sub_B568();
  return FigDebugAssert3();
}

uint64_t sub_21E88()
{
  fig_log_get_emitter();
  sub_B568();
  return FigDebugAssert3();
}

uint64_t sub_21F08()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_21F80()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_21FF8()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_22070()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_220E4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_2215C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_221D4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_2224C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_222C4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_2233C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_223B4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_2242C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_224A4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_2251C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

__CVBuffer *sub_22594(__CVBuffer *a1, __CVMetalTextureCache *a2, void *a3, int a4, char a5)
{
  v9 = a3;
  image = 0;
  bzero(__src, 0x84uLL);
  if (!a1)
  {
    v18 = 0;
    goto LABEL_13;
  }

  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface && (v11 = IOSurface, (v12 = sub_C360(a1, a4)) != 0))
  {
    v13 = v12;
    v14 = 1;
    sub_C864(v11, __src, 1);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    if ((a5 & 1) == 0)
    {
      if (v13 - 540 > 6)
      {
        v14 = 3;
      }

      else
      {
        v14 = qword_2DE30[v13 - 540];
      }
    }

    v20 = kCVMetalTextureUsage;
    v17 = [NSNumber numberWithUnsignedInteger:v14];
    v21 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

    if (!CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, a2, a1, v18, v13, WidthOfPlane, HeightOfPlane, 0, &image))
    {
      a1 = CVMetalTextureGetTexture(image);
      if (a1)
      {
        memcpy(__dst, __src, sizeof(__dst));
        IOSurfaceSetBulkAttachments2();
      }

      goto LABEL_11;
    }
  }

  else
  {
    fig_log_get_emitter();
    sub_C930();
    FigDebugAssert3();
    v18 = 0;
  }

  a1 = 0;
LABEL_11:
  if (image)
  {
    CFRelease(image);
  }

LABEL_13:

  return a1;
}

uint64_t sub_22820()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_22898()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_22910()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_22988()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_22E30(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22EE0(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_22F90()
{
  fig_log_get_emitter();
  sub_B53C();
  FigDebugAssert3();
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sub_231A0()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_23218()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_23290()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_23308()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_23380()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

void sub_23C18(uint64_t a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_13BD8();
  FigDebugAssert3();
}

uint64_t sub_23CB8()
{
  fig_log_get_emitter();
  sub_13BD8();
  return FigDebugAssert3();
}

void sub_23F04(void *a1)
{
  fig_log_get_emitter();
  sub_4B30();
  FigDebugAssert3();
}

void sub_23F84(void *a1)
{
  fig_log_get_emitter();
  sub_4B30();
  FigDebugAssert3();
}

void sub_24004(void *a1)
{
  fig_log_get_emitter();
  sub_4B30();
  FigDebugAssert3();
}

uint64_t sub_24084()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

void sub_240FC(void *a1)
{
  fig_log_get_emitter();
  sub_4B30();
  FigDebugAssert3();
}

uint64_t sub_2418C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_24204()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_2427C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_242F4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_2436C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_243E4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_2445C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_244D4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_2454C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_245C4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_2463C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_246B4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_248B8(float32x2_t *a1)
{
  if (!a1)
  {
    return 5;
  }

  v1 = a1->i16[0];
  if (v1 >= 1)
  {
    for (i = 0; i != v1; ++i)
    {
      v3 = 1.0 - a1[515].f32[i];
      v4 = a1[1072].f32[i];
      v5 = 1.0 - a1[622].f32[i];
      v6 = a1[592].f32[i];
      v7 = v1;
      v8 = a1;
      v9 = a1 + 7;
      do
      {
        v10 = *v9;
        v9 += 4;
        v11 = vsub_f32(a1[4 * i + 7], v10);
        v12 = 1.0 - fminf(fmaxf(sqrtf(vaddv_f32(vmul_f32(v11, v11))) * 0.0078125, 0.0), 1.0);
        if (v6 < (v8[1184] * v12))
        {
          v6 = v8[1184] * v12;
        }

        if (v4 < (v8[2144] * v12))
        {
          v4 = v8[2144] * v12;
        }

        if (v5 < ((1.0 - v8[1244]) * v12))
        {
          v5 = (1.0 - v8[1244]) * v12;
        }

        v13 = (1.0 - v8[1030]) * v12;
        if (v3 < v13)
        {
          v3 = v13;
        }

        ++v8;
        --v7;
      }

      while (v7);
      a1[245].f32[i] = v6;
      a1[1042].f32[i] = v4;
      a1[395].f32[i] = 1.0 - v5;
      a1[485].f32[i] = 1.0 - v3;
    }
  }

  return 0;
}

uint64_t sub_249EC()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_24A64()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_24B68()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_24BE0()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_24C58()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_24F20()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_24F98()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25010()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25088()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25100()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25178()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_251F0()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

void sub_25310(void *a1)
{
  fig_log_get_emitter();
  sub_4B30();
  FigDebugAssert3();
}

void sub_253A0(void *a1)
{
  fig_log_get_emitter();
  sub_4B30();
  FigDebugAssert3();
}

uint64_t sub_25420()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25498()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25510()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25588()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25600()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25678()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_256F0()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25768()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_257E0()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25858()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_258D0()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25948()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_259C0()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25A38()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25AB0()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25B28()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25BA0()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25C18()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25C90()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25D08()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25D80()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25DF8()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25E70()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_25EE8()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_26084()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_260FC()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_26174()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_261EC()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_26264()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_262DC()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_26354()
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  return FigSignalErrorAtGM();
}

void sub_26418(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_1B110();
  FigDebugAssert3();
}

uint64_t sub_264AC(uint64_t a1, uint64_t a2)
{
  fig_log_get_emitter();
  sub_1B110();
  result = FigDebugAssert3();
  *(a2 + 224) = 0;
  return result;
}

uint64_t sub_26538(uint64_t a1, uint64_t a2)
{
  fig_log_get_emitter();
  sub_1B110();
  result = FigDebugAssert3();
  *(a2 + 224) = 0;
  return result;
}

uint64_t sub_265C4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_2663C()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_266B4()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_26BE8(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_26C94(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_26D40(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_26DEC(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_26E98(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_26F44(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_26FF0(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2709C(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_27148(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_271F4(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_272A0(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2734C(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_273F8(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_274A4(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_27550(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_275FC(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_276A8(_DWORD *a1)
{
  sub_B5C0();
  sub_B53C();
  FigDebugAssert3();
  sub_B5C0();
  sub_B598();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_27754(void *a1)
{
  fig_log_get_emitter();
  sub_B568();
  FigDebugAssert3();
}

uint64_t sub_277E8()
{
  fig_log_get_emitter();
  sub_B568();
  return FigDebugAssert3();
}

uint64_t sub_27868()
{
  fig_log_get_emitter();
  sub_B568();
  return FigDebugAssert3();
}

uint64_t sub_278E8()
{
  sub_1EA90();
  sub_B53C();
  FigDebugAssert3();
  sub_1EA90();
  sub_B598();

  return FigSignalErrorAtGM();
}

uint64_t sub_27998()
{
  sub_1EA90();
  sub_B53C();
  FigDebugAssert3();
  sub_1EA90();
  sub_B598();

  return FigSignalErrorAtGM();
}

uint64_t sub_27A48()
{
  sub_1EA90();
  sub_B53C();
  FigDebugAssert3();
  sub_1EA90();
  sub_B598();

  return FigSignalErrorAtGM();
}

uint64_t sub_27AF8()
{
  sub_1EA90();
  sub_B53C();
  FigDebugAssert3();
  sub_1EA90();
  sub_B598();

  return FigSignalErrorAtGM();
}

uint64_t sub_27BA8()
{
  sub_1EA90();
  sub_B53C();
  FigDebugAssert3();
  sub_1EA90();
  sub_B598();

  return FigSignalErrorAtGM();
}

uint64_t sub_27C58()
{
  sub_1EA90();
  sub_B53C();
  FigDebugAssert3();
  sub_1EA90();
  sub_B598();

  return FigSignalErrorAtGM();
}

uint64_t sub_27EEC()
{
  fig_log_get_emitter();
  sub_1B110();
  return FigDebugAssert3();
}

void sub_27F6C()
{
  sub_1F840();
  fig_log_get_emitter();
  sub_1B110();
  FigDebugAssert3();
}

void sub_27FF8()
{
  sub_1F840();
  fig_log_get_emitter();
  sub_1B110();
  FigDebugAssert3();
}

void sub_28084(void *a1)
{
  fig_log_get_emitter();
  sub_4B30();
  FigDebugAssert3();
}

void sub_28104(void *a1)
{
  fig_log_get_emitter();
  sub_4B30();
  FigDebugAssert3();
}

uint64_t sub_28184()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_281FC()
{
  fig_log_get_emitter();
  sub_1B110();
  return FigDebugAssert3();
}

uint64_t sub_2827C()
{
  sub_1F840();
  fig_log_get_emitter();
  sub_4B30();
  result = FigDebugAssert3();
  *v0 = v1 & 1;
  return result;
}

uint64_t sub_28308()
{
  sub_1F840();
  fig_log_get_emitter();
  sub_4B30();
  result = FigDebugAssert3();
  *v0 = v1 & 1;
  return result;
}

uint64_t sub_28394()
{
  fig_log_get_emitter();
  sub_1B110();
  return FigDebugAssert3();
}

uint64_t sub_28414(char *a1, _BYTE *a2)
{
  v3 = *a1;
  fig_log_get_emitter();
  sub_4B30();
  result = FigDebugAssert3();
  *a2 = v3;
  return result;
}

uint64_t sub_284A0()
{
  fig_log_get_emitter();
  sub_1B110();
  return FigDebugAssert3();
}

uint64_t sub_28520()
{
  fig_log_get_emitter();
  sub_1B110();
  return FigDebugAssert3();
}

uint64_t sub_285A0()
{
  fig_log_get_emitter();
  sub_4B30();
  return FigDebugAssert3();
}

uint64_t sub_28618(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}