id formatDataRequestKind(void *a1)
{
  v3 = 0;
  [a1 getBytes:&v3 length:8];
  v1 = GEODataRequestKindAsString();

  return v1;
}

id formatTileKey(void *a1)
{
  v12 = 0uLL;
  [a1 getBytes:&v12 length:16];
  v1 = v12 & 0x7F;
  if (v1 != *MEMORY[0x29EDC1228])
  {
    if (v1 == *MEMORY[0x29EDC1498])
    {
      if (GEOSelectionTileKeyGetXYZId())
      {
        [MEMORY[0x29EDBA0F8] stringWithFormat:@"{PolySel %u.%u.%u id=%llu}", 0, 0, 0, 0, v11];
        goto LABEL_27;
      }
    }

    else if (v1 == *MEMORY[0x29EDC14A0])
    {
      if (GEOSelectionTileKeyGetXYZId())
      {
        [MEMORY[0x29EDBA0F8] stringWithFormat:@"{TrailSel %u.%u.%u id=%llu}", 0, 0, 0, 0, v11];
        goto LABEL_27;
      }
    }

    else if (v1 == *MEMORY[0x29EDC1220])
    {
      if (GEOContourLinesTileKeyGetXYZSizeUnits())
      {
        [MEMORY[0x29EDBA0F8] stringWithFormat:@"{Contour %u.%u.%u tileSize=%u units=%llu}", 0, 0, 0, 0, 0];
        goto LABEL_27;
      }
    }

    else
    {
      if (v1 == *MEMORY[0x29EDC1230])
      {
        v2 = ((*(&v12 + 9) | (BYTE11(v12) << 16)) >> 6) & 0x3FFF;
        v3 = BYTE1(v12) & 0x3F;
        *(&v5 + 1) = *(&v12 + 9);
        *&v5 = *(&v12 + 1);
        v4 = v5 >> 6;
        if (v2 == 80)
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"{Gloria z=%u qk=%llu t=%u mcc=%u mnc=%u}", v3, v4, 80, WORD6(v12) & 0x3FF, (HIDWORD(v12) >> 10) & 0x3FF];
        }

        else
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"{Gloria z=%u qk=%llu t=%u}", v3, v4, v2, v10, v11];
        }

        goto LABEL_27;
      }

      if (v1 == *MEMORY[0x29EDC1248] || v1 == *MEMORY[0x29EDC1238] || v1 == *MEMORY[0x29EDC1240])
      {
        [MEMORY[0x29EDBA0F8] stringWithFormat:@"{Munin lod=%u pointId=%llu buildId=%u bucketId=%u cameraId=%u}", HIBYTE(v12) >> 5, *(&v12 + 1), *(&v12 + 9), *(&v12 + 13), HIBYTE(v12) & 0x1F];
        goto LABEL_27;
      }
    }

LABEL_25:
    v8 = GEOStringFromTileKey();
    goto LABEL_28;
  }

  if (!GEOSelectionTileKeyGetXYZId())
  {
    goto LABEL_25;
  }

  [MEMORY[0x29EDBA0F8] stringWithFormat:@"{Transit %u.%u.%u muid=%llu}", 0, 0, 0, 0, v11];
  v8 = LABEL_27:;
LABEL_28:

  return v8;
}

BOOL StringsCaseInsensitiveEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (StringsCaseInsensitiveEqual_onceToken != -1)
  {
    dispatch_once(&StringsCaseInsensitiveEqual_onceToken, &__block_literal_global_16);
  }

  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = [v3 length];
    v6 = v5 == [v4 length] && objc_msgSend(v3, "compare:options:range:locale:", v4, 3, 0, v5, StringsCaseInsensitiveEqual_posix) == 0;
  }

  return v6;
}

uint64_t __StringsCaseInsensitiveEqual_block_invoke()
{
  StringsCaseInsensitiveEqual_posix = [MEMORY[0x29EDB8DE0] localeWithLocaleIdentifier:@"en_US_POSIX"];

  return MEMORY[0x2A1C71028]();
}

uint64_t __protobufClassForType_block_invoke()
{
  protobufClassForType_typeToClassName = CFDictionaryCreate(0, allTypes, allClassNames, 659, MEMORY[0x29EDB8F28], MEMORY[0x29EDB9020]);

  return MEMORY[0x2A1C71028]();
}

uint64_t OSLogCopyFormattedString(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = +[GEOLogFormatter sharedFormatter];
  v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a1];
  v7 = [v5 formattedAttributedStringForType:v6 value:v3];

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t OSStateCreateStringWithData(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = +[GEOLogFormatter sharedFormatter];
  v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a1];
  v9 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:a3 length:a2 freeWhenDone:0];
  v10 = [v7 formattedStringForStateType:v8 data:v9];

  objc_autoreleasePoolPop(v6);
  return v10;
}

id decompress(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  HIDWORD(v7) = a2 - 4;
  LODWORD(v7) = a2 - 4;
  v6 = v7 >> 2;
  if (v6 > 2)
  {
    if (v6 == 7)
    {
      v8 = 4 * [v3 length];
      v9 = COMPRESSION_LZMA;
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_17;
      }

      v8 = 4 * [v3 length];
      v9 = COMPRESSION_ZLIB;
    }
  }

  else if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_17;
    }

    v8 = (5 * [v3 length]) >> 1;
    v9 = COMPRESSION_LZ4;
  }

  else
  {
    v8 = 4 * [v3 length];
    v9 = COMPRESSION_LZFSE;
  }

  v10 = [MEMORY[0x29EDB8DF8] dataWithLength:v8];
  v11 = 3;
  while (1)
  {
    v12 = compression_decode_buffer([v10 mutableBytes], v8, objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"), 0, v9);
    if (!v12)
    {
LABEL_14:
      v5 = 0;
      goto LABEL_16;
    }

    if (v12 < v8)
    {
      break;
    }

    v8 += 2 * [v4 length];
    [v10 setLength:v8];
    if (!--v11)
    {
      goto LABEL_14;
    }
  }

  [v10 setLength:v12];
  v5 = v10;
LABEL_16:

LABEL_17:

  return v5;
}

id formattedStringFromProtobuf(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc(NSClassFromString(v3));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 initWithData:v4];
    if (!v6)
    {
      v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unable to parse protobuf %@) %@", v3, v4];
      goto LABEL_26;
    }

    v5 = v6;
    v7 = objc_autoreleasePoolPush();
    if (getOutputMode_onceToken != -1)
    {
      dispatch_once(&getOutputMode_onceToken, &__block_literal_global_78);
    }

    if (getOutputMode_mode == 2)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_22;
      }

      v8 = [v5 dictionaryRepresentation];
      v10 = [v8 description];
    }

    else
    {
      if (getOutputMode_mode != 1)
      {
        v10 = [v5 formattedText];
        if (!v10)
        {
LABEL_22:
          v10 = [v5 formattedText];
          if (!v10)
          {
            v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unable to format protobuf %@) %@", v3, v4];
          }
        }

LABEL_24:
        objc_autoreleasePoolPop(v7);
        goto LABEL_25;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_22;
      }

      v8 = [v5 jsonRepresentation];
      if (v8)
      {
        v9 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v8 options:3 error:0];
        if ([v9 length])
        {
          v10 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:v9 encoding:4];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(not a protobuf %@)", v3];
LABEL_25:

LABEL_26:

  return v10;
}

id scanDict(void *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = MEMORY[0x29EDBA0F8];
          v11 = objc_opt_class();
          v7 = NSStringFromClass(v11);
          v8 = [v10 stringWithFormat:@"%@ is actually a %@", v6, v7, v17];
LABEL_20:
          v9 = v8;
LABEL_21:

          goto LABEL_22;
        }

        v7 = [v1 objectForKeyedSubscript:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = scanDict(v7);
          if (v8)
          {
            goto LABEL_20;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = scanArr(v7);
            if (v8)
            {
              goto LABEL_20;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v14 = MEMORY[0x29EDBA0F8];
                v15 = objc_opt_class();
                v16 = NSStringFromClass(v15);
                v9 = [v14 stringWithFormat:@"value for %@ is actually a %@", v6, v16, v17];

                goto LABEL_21;
              }
            }
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v9 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_22:

  v12 = *MEMORY[0x29EDCA608];

  return v9;
}

id scanArr(void *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = scanDict(v6);
          if (v7)
          {
            goto LABEL_17;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = scanArr(v6);
            if (v7)
            {
LABEL_17:
              v8 = v7;
              goto LABEL_18;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v11 = MEMORY[0x29EDBA0F8];
                v12 = objc_opt_class();
                v13 = NSStringFromClass(v12);
                v8 = [v11 stringWithFormat:@"value %@ is actually a %@", v6, v13, v14];

                goto LABEL_18;
              }
            }
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_18:

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

char *__getOutputMode_block_invoke()
{
  v0 = getenv("GEO_RR_Log_Formatter_Mode");
  result = getenv("GEO_RR_Log_Formatter_PBText");
  if (!v0 || !*v0)
  {
    if (!result || *result != 49)
    {
      return result;
    }

LABEL_10:
    v2 = 1;
    goto LABEL_11;
  }

  result = strncmp(v0, "json", 4uLL);
  if (!result)
  {
    goto LABEL_10;
  }

  result = strncmp(v0, "dictionary", 0xAuLL);
  if (!result || (result = strncmp(v0, "description", 0xBuLL), !result) || (result = strncmp(v0, "formattedText", 0xDuLL), !result))
  {
    v2 = 2;
LABEL_11:
    getOutputMode_mode = v2;
  }

  return result;
}

BOOL getNameAndRemainderAtOffset(void *a1, unint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  if ([v7 length] <= a2 || (v16 = 0, objc_msgSend(MEMORY[0x29EDB8DA0], "dataWithBytes:length:", &v16, 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "rangeOfData:options:range:", v8, 0, a2, objc_msgSend(v7, "length") - a2), v11 = v10, v8, v9 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = 0;
  }

  else
  {
    v13 = [v7 subdataWithRange:{a2, v9 - a2}];
    v14 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:v13 encoding:4];
    *a3 = v14;
    v12 = v14 != 0;
    if (v14)
    {
      *a4 = [v7 subdataWithRange:{v9 + v11, objc_msgSend(v7, "length") - (v9 + v11)}];
    }
  }

  return v12;
}

void sub_2999DB1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *formattedGEOTileSetStyleForNumber(void *a1)
{
  v1 = [a1 unsignedIntegerValue];
  v2 = @"RASTER_STANDARD";
  switch(v1)
  {
    case 0:
      break;
    case 1:
      v2 = @"VECTOR_STANDARD";
      break;
    case 2:
      v2 = @"VECTOR_TRAFFIC_SEGMENTS_FOR_RASTER";
      break;
    case 3:
      v2 = @"VECTOR_TRAFFIC_INCIDENTS_FOR_RASTER";
      break;
    case 4:
      v2 = @"VECTOR_TRAFFIC_SEGMENTS_AND_INCIDENTS_FOR_RASTER";
      break;
    case 5:
      v2 = @"RASTER_STANDARD_BACKGROUND";
      break;
    case 6:
      v2 = @"RASTER_HYBRID";
      break;
    case 7:
      v2 = @"RASTER_SATELLITE";
      break;
    case 8:
      v2 = @"RASTER_TERRAIN";
      break;
    case 11:
      v2 = @"VECTOR_BUILDINGS";
      break;
    case 12:
      v2 = @"VECTOR_TRAFFIC";
      break;
    case 13:
      v2 = @"VECTOR_POI";
      break;
    case 14:
      v2 = @"SPUTNIK_METADATA";
      break;
    case 15:
      v2 = @"SPUTNIK_C3M";
      break;
    case 16:
      v2 = @"SPUTNIK_DSM";
      break;
    case 17:
      v2 = @"SPUTNIK_DSM_GLOBAL";
      break;
    case 18:
      v2 = @"VECTOR_REALISTIC";
      break;
    case 19:
      v2 = @"VECTOR_LEGACY_REALISTIC";
      break;
    case 20:
      v2 = @"VECTOR_ROADS";
      break;
    case 21:
      v2 = @"RASTER_VEGETATION";
      break;
    case 22:
      v2 = @"VECTOR_TRAFFIC_SKELETON";
      break;
    case 23:
      v2 = @"RASTER_COASTLINE_MASK";
      break;
    case 24:
      v2 = @"RASTER_HILLSHADE";
      break;
    case 25:
      v2 = @"VECTOR_TRAFFIC_WITH_GREEN";
      break;
    case 26:
      v2 = @"VECTOR_TRAFFIC_STATIC";
      break;
    case 27:
      v2 = @"RASTER_COASTLINE_DROP_MASK";
      break;
    case 28:
      v2 = @"VECTOR_TRAFFIC_SKELETON_WITH_HISTORICAL";
      break;
    case 29:
      v2 = @"VECTOR_SPEED_PROFILES";
      break;
    case 30:
      v2 = @"VECTOR_VENUES";
      break;
    case 31:
      v2 = @"RASTER_DOWN_SAMPLED";
      break;
    case 32:
      v2 = @"RASTER_COLOR_BALANCED";
      break;
    case 33:
      v2 = @"RASTER_SATELLITE_NIGHT";
      break;
    case 34:
      v2 = @"SPUTNIK_VECTOR_BORDER";
      break;
    case 35:
      v2 = @"RASTER_SATELLITE_DIGITIZE";
      break;
    case 36:
      v2 = @"RASTER_HILLSHADE_PARKS";
      break;
    case 37:
      v2 = @"VECTOR_TRANSIT";
      break;
    case 38:
      v2 = @"RASTER_STANDARD_BASE";
      break;
    case 39:
      v2 = @"RASTER_STANDARD_LABELS";
      break;
    case 40:
      v2 = @"RASTER_HYBRID_ROADS";
      break;
    case 41:
      v2 = @"RASTER_HYBRID_LABELS";
      break;
    case 42:
      v2 = @"FLYOVER_C3M_MESH";
      break;
    case 43:
      v2 = @"FLYOVER_C3M_JPEG_TEXTURE";
      break;
    case 44:
      v2 = @"FLYOVER_C3M_ASTC_TEXTURE";
      break;
    case 45:
      v2 = @"RASTER_SATELLITE_ASTC";
      break;
    case 46:
      v2 = @"RASTER_HYBRID_ROADS_AND_LABELS";
      break;
    case 47:
      v2 = @"VECTOR_TRANSIT_SELECTION";
      break;
    case 48:
      v2 = @"VECTOR_COVERAGE";
      break;
    case 52:
      v2 = @"FLYOVER_METADATA";
      break;
    case 53:
      v2 = @"VECTOR_ROAD_NETWORK";
      break;
    case 54:
      v2 = @"VECTOR_LAND_COVER";
      break;
    case 55:
      v2 = @"VECTOR_DEBUG";
      break;
    case 56:
      v2 = @"VECTOR_STREET_POI";
      break;
    case 57:
      v2 = @"MUNIN_METADATA";
      break;
    case 58:
      v2 = @"VECTOR_SPR_MERCATOR";
      break;
    case 59:
      v2 = @"VECTOR_SPR_MODELS";
      break;
    case 60:
      v2 = @"VECTOR_SPR_MATERIALS";
      break;
    case 61:
      v2 = @"VECTOR_SPR_METADATA";
      break;
    case 62:
      v2 = @"VECTOR_TRACKS";
      break;
    case 63:
      v2 = @"VECTOR_RESERVED_2";
      break;
    case 64:
      v2 = @"VECTOR_STREET_LANDMARKS";
      break;
    case 65:
      v2 = @"COARSE_LOCATION_POLYGONS";
      break;
    case 66:
      v2 = @"VECTOR_SPR_ROADS";
      break;
    case 67:
      v2 = @"VECTOR_SPR_STANDARD";
      break;
    case 68:
      v2 = @"VECTOR_POI_V2";
      break;
    case 69:
      v2 = @"VECTOR_POLYGON_SELECTION";
      break;
    case 70:
      v2 = @"VL_METADATA";
      break;
    case 71:
      v2 = @"VL_DATA";
      break;
    case 72:
      v2 = @"PROACTIVE_APP_CLIP";
      break;
    case 73:
      v2 = @"VECTOR_BUILDINGS_V2";
      break;
    case 74:
      v2 = @"POI_BUSYNESS";
      break;
    case 75:
      v2 = @"POI_DP_BUSYNESS";
      break;
    case 76:
      v2 = @"SMART_INTERFACE_SELECTION";
      break;
    case 77:
      v2 = @"VECTOR_ASSETS";
      break;
    case 78:
      v2 = @"SPR_ASSET_METADATA";
      break;
    case 79:
      v2 = @"VECTOR_SPR_POLAR";
      break;
    case 80:
      v2 = @"SMART_DATA_MODE";
      break;
    case 81:
      v2 = @"CELLULAR_PERFORMANCE_SCORE";
      break;
    case 82:
      v2 = @"VECTOR_SPR_MODELS_OCCLUSION";
      break;
    case 83:
      v2 = @"VECTOR_TOPOGRAPHIC";
      break;
    case 84:
      v2 = @"VECTOR_POI_V2_UPDATE";
      break;
    case 85:
      v2 = @"VECTOR_LIVE_DATA_UPDATES";
      break;
    case 86:
      v2 = @"VECTOR_TRAFFIC_V2";
      break;
    case 87:
      v2 = @"VECTOR_ROAD_SELECTION";
      break;
    case 88:
      v2 = @"VECTOR_REGION_METADATA";
      break;
    case 89:
      v2 = @"RAY_TRACING";
      break;
    case 90:
      v2 = @"VECTOR_CONTOURS";
      break;
    case 91:
      v2 = @"RASTER_SATELLITE_POLAR";
      break;
    case 92:
      v2 = @"VMAP4_ELEVATION";
      break;
    case 93:
      v2 = @"VMAP4_ELEVATION_POLAR";
      break;
    case 94:
      v2 = @"CELLULAR_COVERAGE_PLMN";
      break;
    case 95:
      v2 = @"RASTER_SATELLITE_POLAR_NIGHT";
      break;
    case 96:
      v2 = @"BLUEPOI_MODEL";
      break;
    case 97:
      v2 = @"BLUEPOI_AOI";
      break;
    case 98:
      v2 = @"UNUSED_98";
      break;
    case 99:
      v2 = @"UNUSED_99";
      break;
    case 100:
      v2 = @"UNUSED_100";
      break;
    case 101:
      v2 = @"UNUSED_101";
      break;
    case 102:
      v2 = @"UNUSED_102";
      break;
    case 103:
      v2 = @"UNUSED_103";
      break;
    case 104:
      v2 = @"UNUSED_104";
      break;
    case 105:
      v2 = @"UNUSED_105";
      break;
    case 106:
      v2 = @"UNUSED_106";
      break;
    case 107:
      v2 = @"UNUSED_107";
      break;
    case 108:
      v2 = @"UNUSED_108";
      break;
    case 109:
      v2 = @"UNUSED_109";
      break;
    case 110:
      v2 = @"UNUSED_110";
      break;
    case 111:
      v2 = @"UNUSED_111";
      break;
    case 112:
      v2 = @"UNUSED_112";
      break;
    case 113:
      v2 = @"UNUSED_113";
      break;
    case 114:
      v2 = @"UNUSED_114";
      break;
    case 115:
      v2 = @"UNUSED_115";
      break;
    case 116:
      v2 = @"UNUSED_116";
      break;
    case 117:
      v2 = @"UNUSED_117";
      break;
    case 118:
      v2 = @"UNUSED_118";
      break;
    case 119:
      v2 = @"UNUSED_119";
      break;
    default:
      v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", v1];
      break;
  }

  return v2;
}

id formattedTileLoadOptionsForNumber(void *a1)
{
  v1 = MEMORY[0x29EDB8DE8];
  v2 = a1;
  v3 = [v1 array];
  v4 = [v2 unsignedIntegerValue];

  if (v4)
  {
    [v3 addObject:@"CheckDisk"];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"CheckNetwork"];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 addObject:@"Preload"];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 addObject:@"RequireWiFi"];
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 addObject:@"AllowPreliminary"];
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 addObject:@"PreliminaryOnly"];
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 addObject:@"ProactivelyLoadOnFailure"];
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  [v3 addObject:@"EnableBackpressureControl"];
  if ((v4 & 0x1000) != 0)
  {
LABEL_10:
    [v3 addObject:@"PreferStale"];
  }

LABEL_11:
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [@"{" stringByAppendingString:v5];
  v7 = [v6 stringByAppendingString:@"}"];

  return v7;
}