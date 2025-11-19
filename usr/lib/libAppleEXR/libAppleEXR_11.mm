unint64_t CalculatePXR24RowSize(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  if (((CalculatePXR24RowSize(ChannelDescription::ChannelDescriptionLocationInfo const&,unsigned int,unsigned int,unsigned int,axr_type_t)::kTypeSize[a5] * a4) & 0xFFFFFFFF00000000) != 0)
  {
    v5 = 0x100000000;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 0xFFFFFFFF00000000 | (CalculatePXR24RowSize(ChannelDescription::ChannelDescriptionLocationInfo const&,unsigned int,unsigned int,unsigned int,axr_type_t)::kTypeSize[a5] * a4);
}

uint64_t CalculateB44RowSize(uint64_t a1, uint64_t a2, char a3, int a4)
{
  if ((a3 & 3) != 0)
  {
    return 0;
  }

  v5 = 14 * ((a4 + 3) >> 2);
  v6 = 0x100000000;
  if ((v5 & 0xFFFFFFFF00000000) == 0)
  {
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t CalculateB44aRowSize(void *a1, unsigned int a2, char a3, unsigned int a4)
{
  if ((a3 & 3) != 0)
  {
    goto LABEL_19;
  }

  v4 = a1[1];
  if (v4 < a2)
  {
    goto LABEL_19;
  }

  v5 = v4 - a2;
  v6 = -1;
  if (a4 < 0xFFFFFFFD)
  {
    if (v5 < 0xFFFFFFFF)
    {
      v6 = v5;
    }

    if (a4)
    {
      v7 = (a4 + 3) >> 2;
      goto LABEL_8;
    }

LABEL_19:
    v8 = 0;
    v13 = 0;
    return v13 | v8;
  }

  if (v5 < 0xFFFFFFFF)
  {
    v6 = v5;
  }

  v7 = 0x40000000;
LABEL_8:
  v8 = 0;
  v9 = 0;
  while (v8 < 0xFFFFFFFD && v8 + 3 < v6)
  {
    if (*(*a1 + a2 + v8 + 2) == 252)
    {
      v10 = 3;
    }

    else
    {
      v10 = 14;
    }

    v11 = __CFADD__(v8, v10);
    v8 += v10;
    v12 = v11;
    v9 |= v12;
    if (!--v7)
    {
      v13 = v9 << 32;
      return v13 | v8;
    }
  }

  v13 = 0;
  v8 = v6;
  return v13 | v8;
}

uint64_t AXRChunkHeader::GetTilePosition(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 != 1)
    {
      if (a2 != 0x80000000)
      {
        return result;
      }

LABEL_11:
      __break(1u);
      return result;
    }

LABEL_8:
    result += 4;
    return result;
  }

  switch(a2)
  {
    case 2:
      return result;
    case 3:
      goto LABEL_8;
    case 4:
      goto LABEL_11;
  }

  return result;
}

void Part::~Part(Part *this)
{
  *(this + 1) = 0;
  v2 = *(this + 2);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 1);
      ChannelDescription::~ChannelDescription(v2);
      MEMORY[0x29C25E8F0]();
      v2 = v3;
    }

    while (v3);
  }

  free(*(this + 3));
  v4 = *(this + 24);
  if (v4)
  {
    free(v4);
    *(this + 24) = 0;
  }

  v5 = *(this + 25);
  if (v5)
  {
    free(v5);
    *(this + 25) = 0;
  }

  v6 = *(this + 23);
  if (v6)
  {
    free(v6);
    *(this + 23) = 0;
  }

  v7 = *(this + 35);
  if (v7)
  {
    v8 = (*(this + 73) * *(this + 72));
    if (v8)
    {
      v9 = 0;
      v10 = 8 * v8;
      do
      {
        v11 = *(*(this + 35) + v9);
        if (v11)
        {
          free(v11);
        }

        v9 += 8;
      }

      while (v10 != v9);
      v7 = *(this + 35);
    }

    free(v7);
  }

  for (i = *(this + 30); i; i = *(this + 30))
  {
    *(this + 30) = *(i + 40);
    MEMORY[0x29C25E8F0]();
  }

  free(*(this + 18));
  *(this + 18) = 0;
}

unint64_t Part::Print(Part *this, char *a2, size_t a3, char *a4, unint64_t a5)
{
  v73 = *MEMORY[0x29EDCA608];
  ChunkLayout_Print(v72, 0x100uLL, *(this + 52));
  v68 = a2;
  if ((*(this + 164) & 0xF) == 2)
  {
    snprintf(__str, 0x100uLL, "{x: %u, y: %u}");
  }

  else
  {
    snprintf(__str, 0x100uLL, "%u");
  }

  name = axr_compression_get_name(*(this + 9));
  v66 = *(this + 10);
  v64 = *(this + 11);
  v65 = *(this + 12);
  v63 = *(this + 13);
  v62 = *(this + 14);
  v60 = *(this + 15);
  v61 = *(this + 16);
  v59 = *(this + 17);
  v8 = *(this + 39);
  v9 = *(this + 40);
  v10 = axr_line_order_get_name(*(this + 18));
  v57 = COERCE_FLOAT(HIDWORD(*(this + 10)));
  v58 = COERCE_FLOAT(*(this + 10));
  v55 = (*(this + 24) * *(this + 25));
  v56 = *(this + 22);
  v54 = *(this + 23);
  v11 = *(this + 26);
  v12 = *(this + 27);
  v13 = *(this + 28);
  v14 = *(this + 29);
  v15 = *(this + 30);
  v16 = *(this + 31);
  v17 = *(this + 32);
  v18 = *(this + 33);
  v19 = a4;
  v20 = &a4[*(this + 34)];
  v21 = *(this + 66);
  v22 = *(this + 67);
  v23 = *(this + 8);
  v24 = *(this + 38);
  v25 = axr_level_mode_get_name(*(this + 164));
  v53 = v21;
  v26 = a3;
  v27 = snprintf(v68, a3, "\tcompression method:    %s\n\tdata window:           {X: [%d, %d], Y: [%d, %d]}\n\tdisplay window:        {X: [%d, %d], Y: [%d, %d]}\n\tlayout:                %s\n\ttile size:             { w: %u, h: %u }\n\tline order:            %s\n\tscreen window center:  {%f, %f}\n\tpixel aspect ratio:    %f\n\txDensity:              %f pixels per inch\n\tscreen window width:   %f\n\tchromaticities:        r: {%f, %f}     (x, y)\n\t                       g: {%f, %f}\n\t                       b: {%f, %f}\n\t                       w: {%f, %f}\n\tpreview:               {%u x %u} @ %p\n\tchannel count:         %u\n\tlayer count:           %u\n\tlevel mode:            %s\n\tmip levels:            %s\n", name, v66, v65, v64, v63, v62, v61, v60, v59, v72, v8, v9, v10, v58, v57, v56, v55, v54, v11, v12, v13, v14, v15, v16, v17, v18, v53, v22, v20, v23, v24, v25, __str);
  v28 = v27;
  if (*(this + 23))
  {
    v28 = v27 + snprintf(&v68[v27], a3 - v27, "\tview:                  %s\n", *(this + 23));
  }

  if (a3 > v28)
  {
    v29 = v19;
    if (*(this + 24))
    {
      v28 += snprintf(&v68[v28], a3 - v28, "\tname:                  %s\n", *(this + 24));
    }

    if (a3 > v28)
    {
      if (*(this + 25))
      {
        v28 += snprintf(&v68[v28], a3 - v28, "\ttype:                  %s\n", *(this + 25));
      }

      if (v28 < a3)
      {
        if (*(this + 38))
        {
          v30 = 0;
          while (1)
          {
            v28 += snprintf(&v68[v28], v26 - v28, "\n\tLayer %lu:\n", v30);
            if (v26 <= v28)
            {
              break;
            }

            v28 += snprintf(&v68[v28], v26 - v28, "\t\tname:    %s\n", *(*(this + 18) + 24 * v30));
            if (v26 <= v28)
            {
              break;
            }

            v28 += snprintf(&v68[v28], v26 - v28, "\t\tchannels: ");
            if (v26 <= v28)
            {
              break;
            }

            v36 = *(this + 18) + 24 * v30;
            v37 = *(v36 + 16);
            if (v37)
            {
              Channel = Part::GetChannel(this, **(v36 + 8), a5, v31, v32, v33, v34, v35);
              v28 += snprintf(&v68[v28], v26 - v28, "%s", &v29[*Channel]);
              if (v28 >= a3)
              {
                return v28;
              }

              if (v37 != 1)
              {
                v44 = 1;
                do
                {
                  v45 = Part::GetChannel(this, *(*(*(this + 18) + 24 * v30 + 8) + 4 * v44), a5, v39, v40, v41, v42, v43);
                  v28 += snprintf(&v68[v28], a3 - v28, ", %s", &v29[*v45]);
                  if (v28 >= a3)
                  {
                    return v28;
                  }
                }

                while (v37 != ++v44);
              }

              v28 += snprintf(&v68[v28], a3 - v28, "\n");
              if (v28 >= a3)
              {
                return v28;
              }
            }

            ++v30;
            v26 = a3;
            if (v30 >= *(this + 38))
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          if (*(this + 8))
          {
            v46 = 0;
            while (1)
            {
              v28 += snprintf(&v68[v28], v26 - v28, "\n\tChannel %lu:\n", v46);
              if (v26 <= v28)
              {
                break;
              }

              v28 += ChannelDescription::Print(*(*(this + 3) + 8 * v46), &v68[v28], v26 - v28, v29, a5);
              if (v28 >= v26)
              {
                break;
              }

              if (++v46 >= *(this + 8))
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
LABEL_31:
            v28 += snprintf(&v68[v28], v26 - v28, "\n\tEXR attributes found:\n");
            if (v26 > v28)
            {
              if (*(this + 31))
              {
                for (i = *(this + 30); i; i = i[5])
                {
                  v48 = i[3];
                  v49 = &v29[*i];
                  if (*i == v48)
                  {
                    v49 = 0;
                    v51 = 0;
                  }

                  else
                  {
                    v51 = &v29[i[1]];
                  }

                  if (*i == v48)
                  {
                    v50 = 0;
                  }

                  else
                  {
                    v50 = &v29[v48];
                  }

                  v28 += snprintf(&v68[v28], a3 - v28, "\t\t%s %s  %lu bytes @ %p\n", v49, v51, i[2], v50);
                  if (v28 >= a3)
                  {
                    break;
                  }
                }
              }

              else
              {
                v28 += snprintf(&v68[v28], v26 - v28, "\t\t<None>\n");
              }
            }
          }
        }
      }
    }
  }

  return v28;
}

uint64_t Part::CreateColorSpace(Part *this, const axr_decoder *a2, uint64_t a3, axr_flags_t a4, int a5, double a6, double a7, __n128 a8)
{
  v8 = a4;
  v9 = *(a2 + 3);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v9 + 20);
      if ((v10 & (1 << v11) & 0xFFFFFFFFFFFFFF0FLL) != 0)
      {
        break;
      }

      v10 |= 1 << v11;
      v9 = *(v9 + 8);
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v8) & 2) != 0)
    {
      name = axr_channel_type_get_name(v11);
      AXRLogDebug("Colorspace determination failed because the decoder contained channels with duplicate channel types (%s)", v17, v18, v19, v20, v21, v22, v23, name);
    }

    return 0;
  }

  else
  {
    v10 = 0;
LABEL_7:
    if ((*(this + 29) & 0x8000) != 0)
    {
      a8.n128_u32[0] = *(this + 34);
    }

    else
    {
      a8.n128_f32[0] = NAN;
    }

    v12.i32[0] = *(this + 26);
    v13.n128_u32[0] = *(this + 27);
    v12.i32[1] = *(this + 28);
    v12.i32[2] = *(this + 30);
    v12.i32[3] = *(this + 32);
    v13.n128_u32[1] = *(this + 29);
    v13.n128_u32[2] = *(this + 31);
    v13.n128_u32[3] = *(this + 33);
    v14 = vandq_s8(vceqq_f32(v13, xmmword_296B8FBC0), vceqq_f32(v12, xmmword_296B8FBB0));
    v14.i32[0] = vminvq_u32(v14);

    return AXRCreateColorSpace(v12, v13, a8, v14, v14.i32[0] >> 31, v10, a3, a4, a5);
  }
}

uint64_t ReadChannels(uint64_t a1, Part *a2, Attribute *a3, uint64_t a4)
{
  v7 = a3 + 16;
  v5 = *(a3 + 2);
  v6 = *(v7 + 1);
  v8 = *(a2 + 164);
  v10 = 0;
  ChannelDescription::ParseChList(a1, v6, v5, a4, v8, a2 + 18, a2 + 2, a2 + 8, &v10);
  result = v10;
  if (!v10)
  {
    *(a3 + 4) = 256;
  }

  return result;
}

uint64_t ReadCompression(char *a1, Part *a2, Attribute *a3, axr_flags_t a4)
{
  if (!*(a3 + 2))
  {
    return -4;
  }

  v4 = a4;
  v8 = *(a3 + 3);
  if (*a3 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = &a1[*a3];
  }

  if (*a3 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = &a1[*(a3 + 1)];
  }

  v11 = strlen(v9);
  if (strncmp(v9, v10, v11))
  {
    return -6;
  }

  v20 = a1[v8];
  if (v20 < 8)
  {
    result = 0;
    *(a2 + 9) = v20;
    *(a3 + 4) = 1;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v4) & 2) != 0)
    {
      AXRLogError("compression method too new: %u", v12, v13, v14, v15, v16, v17, v18, v20);
    }

    return -3;
  }

  return result;
}

uint64_t ReadDataWindow(char *a1, Part *a2, Attribute *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 2) < 0x10uLL)
  {
    return -4;
  }

  v9 = *(a3 + 3);
  if (*a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = &a1[v9];
  }

  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = *(v10 + 3);
  if (v11 <= v13 && v12 <= v14)
  {
    result = 0;
    *(a2 + 10) = v11;
    *(a2 + 11) = v12;
    *(a2 + 12) = v13;
    *(a2 + 13) = v14;
    *(a3 + 4) = 1;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      v17 = a4;
      [OS_axr_data debugDescription];
      a4 = v17;
    }

    if (((kDefaultAXRLogFlags | a4) & 2) != 0)
    {
      AXRLogError("data window xMin > xMax or yMin > yMax", a2, a3, a4, a5, a6, a7, a8, v16);
    }

    return -6;
  }

  return result;
}

uint64_t ReadDisplayWindow(char *a1, Part *a2, Attribute *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 2) < 0x10uLL)
  {
    return -4;
  }

  v9 = *(a3 + 3);
  if (*a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = &a1[v9];
  }

  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = *(v10 + 3);
  if (v11 <= v13 && v12 <= v14)
  {
    result = 0;
    *(a2 + 14) = v11;
    *(a2 + 15) = v12;
    *(a2 + 16) = v13;
    *(a2 + 17) = v14;
    *(a3 + 4) = 1;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      v17 = a4;
      [OS_axr_data debugDescription];
      a4 = v17;
    }

    if (((kDefaultAXRLogFlags | a4) & 2) != 0)
    {
      AXRLogError("display window xMin > xMax or yMin > yMax", a2, a3, a4, a5, a6, a7, a8, v16);
    }

    return -6;
  }

  return result;
}

uint64_t ReadLineOrder(unsigned __int8 *a1, Part *a2, Attribute *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a3 + 2))
  {
    return -4;
  }

  v8 = a1[*(a3 + 3)];
  if (v8 < 3)
  {
    result = 0;
    *(a2 + 18) = v8;
    *(a3 + 4) = 1;
  }

  else
  {
    v9 = a4;
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v9) & 2) != 0)
    {
      AXRLogError("line order > RANDOM_Y", a2, a3, a4, a5, a6, a7, a8, v11);
    }

    return -6;
  }

  return result;
}

uint64_t ReadPixelAspectRatio(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < 4uLL)
  {
    return -4;
  }

  v4 = *(a3[3] + a1);
  result = 0;
  *(a2 + 88) = v4;
  a3[4] = 1;
  return result;
}

uint64_t ReadScreenWindowCenter(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < 8uLL)
  {
    return -4;
  }

  v4 = *(a3[3] + a1);
  result = 0;
  *(a2 + 80) = v4;
  a3[4] = 1;
  return result;
}

uint64_t ReadScreenWindowWidth(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < 4uLL)
  {
    return -4;
  }

  v4 = *(a3[3] + a1);
  result = 0;
  *(a2 + 92) = v4;
  a3[4] = 1;
  return result;
}

uint64_t ReadViewName(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[2];
  v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
  if (!v7)
  {
    return -5;
  }

  v8 = v7;
  v9 = a3[3];
  if (*a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9 + a1);
  }

  memcpy(v7, v10, v6);
  v8[v6] = 0;
  v11 = *(a2 + 192);
  if (v11)
  {
    free(v11);
  }

  result = 0;
  *(a2 + 192) = v8;
  a3[4] = 1;
  return result;
}

uint64_t ReadViewType(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[2];
  v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
  if (!v7)
  {
    return -5;
  }

  v8 = v7;
  v9 = a3[3];
  if (*a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9 + a1);
  }

  memcpy(v7, v10, v6);
  v8[v6] = 0;
  v11 = a3[2];
  if (!strncmp(v8, "scanlineimage", v11))
  {
    *(a2 + 208) = 0;
  }

  else
  {
    if (!strncmp(v8, "tiledimage", v11))
    {
      v12 = 1;
    }

    else if (!strncmp(v8, "deepscanline", v11))
    {
      v12 = 2;
    }

    else if (!strncmp(v8, "deeptile", v11))
    {
      v12 = 3;
    }

    else
    {
      v12 = 0x80000000;
    }

    *(a2 + 208) = v12;
  }

  v14 = *(a2 + 200);
  if (v14)
  {
    free(v14);
  }

  result = 0;
  *(a2 + 200) = v8;
  a3[4] = 1;
  return result;
}

uint64_t ReadChunkCount(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < 4uLL)
  {
    return -4;
  }

  v4 = *(a3[3] + a1);
  if (v4 < 1)
  {
    return -6;
  }

  result = 0;
  *(a2 + 176) = v4;
  a3[4] = 1;
  return result;
}

uint64_t ReadMaxSamplesPerPixel(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < 4uLL)
  {
    return -4;
  }

  v4 = *(a3[3] + a1);
  if (v4 < 1)
  {
    return -6;
  }

  result = 0;
  *(a2 + 216) = v4;
  a3[4] = 1;
  return result;
}

uint64_t ReadViewVersion(char *a1, Part *a2, Attribute *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 2) < 4uLL)
  {
    return -4;
  }

  if (*&a1[*(a3 + 3)] == 1)
  {
    result = 0;
    *(a2 + 53) = 1;
    *(a3 + 4) = 1;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      v10 = a4;
      [OS_axr_data debugDescription];
      a4 = v10;
    }

    if (((kDefaultAXRLogFlags | a4) & 2) != 0)
    {
      AXRLogDebug("EXR view type > 1 not supported", a2, a3, a4, a5, a6, a7, a8, v9);
    }

    return -3;
  }

  return result;
}

uint64_t ReadTiles(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < 9uLL)
  {
    return -4;
  }

  v4 = a3[3];
  v5 = (v4 + a1);
  if (*a3 == v4)
  {
    v5 = 0;
  }

  v6 = *v5;
  v7 = v5[1];
  if (*v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return -6;
  }

  v9 = *(v5 + 8);
  if ((v9 & 0xE4) != 0 || (v9 & 3) == 3)
  {
    return -6;
  }

  result = 0;
  *(a2 + 156) = v6;
  *(a2 + 160) = v7;
  *(a2 + 164) = v9 & 0xF3;
  a3[4] = 1;
  return result;
}

uint64_t ReadView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[2];
  v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
  if (!v7)
  {
    return -5;
  }

  v8 = v7;
  v9 = a3[3];
  if (*a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9 + a1);
  }

  memcpy(v7, v10, v6);
  v8[v6] = 0;
  v11 = *(a2 + 184);
  if (v11)
  {
    free(v11);
  }

  result = 0;
  *(a2 + 184) = v8;
  a3[4] = 1;
  return result;
}

uint64_t ReadWhiteLuminance(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < 4uLL)
  {
    return -4;
  }

  result = 0;
  *(a2 + 136) = *(a3[3] + a1);
  a3[4] = 1;
  return result;
}

uint64_t ReadXDensity(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < 4uLL)
  {
    return -4;
  }

  result = 0;
  *(a2 + 96) = *(a3[3] + a1);
  a3[4] = 1;
  return result;
}

uint64_t ReadResolution(char *a1, Part *a2, Attribute *a3, axr_flags_t a4)
{
  v4 = *(a3 + 2);
  if (v4 < 2)
  {
    return -4;
  }

  v6 = a4;
  v9 = *(a3 + 3);
  if (*a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = &a1[v9];
  }

  if (!strncasecmp(v10, "in", *(a3 + 2)) || !strncasecmp(v10, "inch", v4))
  {
    result = 0;
    v18 = 1065353216;
LABEL_15:
    *(a2 + 25) = v18;
    *(a3 + 4) = 1;
    return result;
  }

  if (!strncasecmp(v10, "cm", v4))
  {
    result = 0;
    v18 = 1053397798;
    goto LABEL_15;
  }

  if (GetFlagsOnceToken != -1)
  {
    [OS_axr_data debugDescription];
  }

  if (((kDefaultAXRLogFlags | v6) & 2) != 0)
  {
    AXRLogDebug("Unhandled ResolutionUnit attribute %s", v11, v12, v13, v14, v15, v16, v17, v10);
  }

  return 0;
}

void ChannelDescription::~ChannelDescription(ChannelDescription *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 8);
    if (v4 * v3)
    {
      v5 = 0;
      do
      {
        v6 = *(*(this + 5) + 8 * v5);
        if (v6)
        {
          free(v6);
          v3 = *(this + 7);
          v4 = *(this + 8);
        }

        ++v5;
      }

      while (v5 < (v4 * v3));
      v2 = *(this + 5);
    }

    free(v2);
  }
}

uint64_t PrintChannel(char *a1, ReadChannel *a2, ReadChannel *a3, int *a4, const AXRData *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a2 + 1);
  if (v13)
  {
    v14 = PrintChannel(a1, v13, a3, a4, a5, a6);
  }

  else
  {
    v14 = 0;
  }

  ++*a3;
  v15 = ReadChannel::Print(a2, &a1[v14], 4096 - v14, a4, a4, a5, a7, a8);
  if ((v15 + v14) >= 0x1000)
  {
    return 4096;
  }

  else
  {
    return v15 + v14;
  }
}

axr_decoder_t axr_decoder_copy(axr_decoder_t decoder)
{
  if (!decoder)
  {
    return 0;
  }

  v2 = axr_decoder_create(decoder[2].isa, LODWORD(decoder[5].isa), HIDWORD(decoder[5].isa), axr_flags_default);
  v3 = v2;
  if (v2)
  {
    v2[4].isa = decoder[4].isa;
    *(&v2[5].isa + 4) = *(&decoder[5].isa + 4);
    HIDWORD(v2[7].isa) = HIDWORD(decoder[7].isa);
    *&v2[8].isa = *&decoder[8].isa;
    v2[10].isa = decoder[10].isa;
    isa = decoder[3].isa;
    if (isa)
    {
      ReadChannel::CreateCopy(isa);
    }
  }

  return v3;
}

axr_decoder_t axr_decoder_create(axr_data_t fileData, unint64_t partIndex, unint64_t levelIndex, axr_flags_t flags)
{
  if (!fileData)
  {
    return 0;
  }

  if (fileData[12].isa <= partIndex)
  {
    if (GetFlagsOnceToken == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  if (axr_data_get_level_count(fileData, partIndex) <= levelIndex)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | flags) & 2) != 0)
    {
      AXRLogError("axr_decoder_create: the level index %lu is out of bounds. [0, %lu]", v12, v13, v14, v15, v16, v17, v18, levelIndex);
    }

    while (1)
    {
      __break(1u);
LABEL_24:
      [OS_axr_data debugDescription];
LABEL_17:
      if (((kDefaultAXRLogFlags | flags) & 2) != 0)
      {
        AXRLogError("axr_decoder_create: image index %lu out of bounds [0, %lu]", partIndex, levelIndex, flags, v4, v5, v6, v7, partIndex);
      }
    }
  }

  objc_opt_class();
  v19 = _os_object_alloc();
  if (v19)
  {
    v20 = fileData;
    *(v19 + 40) = partIndex;
    *(v19 + 44) = levelIndex;
    *(v19 + 32) = 0;
    *(v19 + 16) = v20;
    *(v19 + 24) = 0;
    *(v19 + 80) = flags;
    memset(&v24, 0, sizeof(v24));
    axr_data_get_part_info(&v24, fileData, partIndex, axr_part_info_current);
    *(v19 + 48) = 0;
    if (levelIndex)
    {
      level_size = axr_data_get_level_size(fileData, partIndex, levelIndex);
      v22 = HIDWORD(level_size);
    }

    else
    {
      if (v24.dataWindow.xMax >= v24.dataWindow.xMin)
      {
        LODWORD(level_size) = v24.dataWindow.xMax - v24.dataWindow.xMin + 1;
      }

      else
      {
        LODWORD(level_size) = 0;
      }

      if (v24.dataWindow.yMax >= v24.dataWindow.yMin)
      {
        LODWORD(v22) = v24.dataWindow.yMax - v24.dataWindow.yMin + 1;
      }

      else
      {
        LODWORD(v22) = 0;
      }
    }

    *(v19 + 56) = level_size;
    *(v19 + 60) = v22;
    *(v19 + 64) = v24.dataWindow;
    *(v19 + 36) = axr_data_get_channel_count(fileData, partIndex);
  }

  return v19;
}

axr_decoder_t axr_decoder_create_rgba(axr_data_t fileData, const char *layerName, unint64_t partIndex, unint64_t levelIndex, axr_flags_t flags)
{
  v88 = *MEMORY[0x29EDCA608];
  if (layerName)
  {
    v9 = layerName;
    v10 = 0;
    v11 = 0;
    channel_count = 0;
  }

  else
  {
    layer_count = axr_data_get_layer_count(fileData, partIndex);
    if (!layer_count)
    {
      goto LABEL_54;
    }

    v50 = layer_count;
    v51 = 0;
    while (1)
    {
      memset(&v87, 0, 24);
      axr_data_get_layer_info(&v87, fileData, partIndex, v51, axr_layer_info_current);
      v9 = *&v87.sampleType;
      if (!*&v87.sampleType || !**&v87.sampleType)
      {
        break;
      }

      if (v50 == ++v51)
      {
        goto LABEL_52;
      }
    }

    v11 = *&v87.sampleBits;
    channel_count = *&v87.ySampling;
    if (*&v87.sampleBits)
    {
      goto LABEL_53;
    }

LABEL_52:
    axr_data_get_layer_info(&v87, fileData, partIndex, 0, axr_layer_info_current);
    v9 = *&v87.sampleType;
    v11 = *&v87.sampleBits;
    channel_count = *&v87.ySampling;
LABEL_53:
    v10 = v9;
    if (!v9)
    {
LABEL_54:
      channel_count = axr_data_get_channel_count(fileData, partIndex);
      v53 = malloc_type_malloc(4 * channel_count, 0x100004052888210uLL);
      if (!v53)
      {
        if (GetFlagsOnceToken != -1)
        {
          AXRLogicalImageList::AXRLogicalImageList();
        }

        if (((kDefaultAXRLogFlags | flags) & 2) != 0)
        {
          AXRLogDebug("axr_decoder_create_rgba: out of memory\n", v14, v15, v16, v17, v18, v19, v20, v77);
        }

        return 0;
      }

      v24 = v53;
      if (channel_count)
      {
        v54 = 0;
        do
        {
          v53[v54] = v54;
          ++v54;
        }

        while (channel_count > v54);
        v11 = v53;
        goto LABEL_14;
      }

LABEL_73:
      if (GetFlagsOnceToken != -1)
      {
        AXRLogicalImageList::AXRLogicalImageList();
      }

      if (((kDefaultAXRLogFlags | flags) & 2) == 0)
      {
        goto LABEL_78;
      }

      v77 = partIndex;
      v52 = "axr_decoder_create_rgba: no channels found for part %lu, layerName: %s\n";
      goto LABEL_77;
    }
  }

  v13 = axr_data_get_layer_count(fileData, partIndex);
  if (v13)
  {
    v21 = 0;
    v22 = v13 - 1;
    do
    {
      axr_data_get_layer_info(&v87, fileData, partIndex, v21, axr_layer_info_current);
      v10 = *&v87.sampleType;
      v11 = *&v87.sampleBits;
      channel_count = *&v87.ySampling;
    }

    while (strcmp(*&v87.sampleType, v9) && v22 != v21++);
  }

  if (!v10 && !*v9)
  {
    axr_data_get_layer_info(&v87, fileData, partIndex, 0, axr_layer_info_current);
    v11 = *&v87.sampleBits;
    channel_count = *&v87.ySampling;
  }

  v24 = 0;
  if (!channel_count)
  {
    goto LABEL_73;
  }

LABEL_14:
  v84 = v11;
  levelIndexa = levelIndex;
  v25 = 0;
  v26 = v11;
  v27 = channel_count;
  do
  {
    v28 = *v26++;
    axr_data_get_channel_info(&v87, fileData, partIndex, v28, axr_channel_info_current);
    v25 |= 1 << SLOBYTE(v87.channelType);
    --v27;
  }

  while (v27);
  v79 = v25;
  decoder = axr_decoder_create(fileData, partIndex, levelIndexa, flags);
  if (!decoder)
  {
    if (GetFlagsOnceToken != -1)
    {
      AXRLogicalImageList::AXRLogicalImageList();
    }

    if (((kDefaultAXRLogFlags | flags) & 2) == 0)
    {
      goto LABEL_78;
    }

    v52 = "axr_decoder_create_rgba:  failed to create decoder\n";
LABEL_77:
    AXRLogDebug(v52, v14, v15, v16, v17, v18, v19, v20, v77);
LABEL_78:
    v48 = v24;
    goto LABEL_79;
  }

  v78 = v24;
  v29 = 0;
  v30 = v79;
  v83 = channel_count;
  do
  {
    v31 = (&axr_decoder_create_rgba::kColorModels + 24 * v29);
    if ((*v31 & ~v30) != 0)
    {
      goto LABEL_35;
    }

    axr_decoder_clear_channel_list(decoder);
    v32 = 0;
    v82 = 0;
    v80 = v29;
    v33 = 3;
    if (v29 == 3)
    {
      v33 = 1;
    }

    levelIndexb = v33;
    sampleType = -1;
    do
    {
      v35 = v84;
      v36 = channel_count;
      while (1)
      {
        v38 = *v35++;
        v37 = v38;
        memset(&v87, 0, sizeof(v87));
        axr_data_get_channel_info(&v87, fileData, partIndex, v38, axr_channel_info_current);
        if (*(v31 + v32 + 2) == v87.channelType)
        {
          break;
        }

LABEL_30:
        if (!--v36)
        {
          goto LABEL_33;
        }
      }

      if (sampleType != -1 && v87.sampleType != sampleType)
      {
        if (GetFlagsOnceToken != -1)
        {
          AXRLogicalImageList::AXRLogicalImageList();
        }

        if (((kDefaultAXRLogFlags | flags) & 2) != 0)
        {
          name = axr_channel_type_get_name(v87.channelType);
          axr_type_get_name(v87.sampleType);
          axr_type_get_name(sampleType);
          AXRLogDebug("axr_decoder_create_rgba: type of %s channel %s doesn't match other channels %s. Skipping...\n", v40, v41, v42, v43, v44, v45, v46, name);
        }

        goto LABEL_30;
      }

      axr_decoder_append_channel(decoder, v37, flags);
      sampleType = v87.sampleType;
      ++v82;
LABEL_33:
      ++v32;
      channel_count = v83;
    }

    while (v32 != levelIndexb);
    v47 = v84;
    v30 = v79;
    v29 = v80;
    if (v82 == levelIndexb)
    {
      if ((v79 & 0xF0) != 0)
      {
        v55 = v83;
        do
        {
          v57 = *v47++;
          v56 = v57;
          memset(&v87, 0, sizeof(v87));
          axr_data_get_channel_info(&v87, fileData, partIndex, v57, axr_channel_info_current);
          if (v87.channelType == axr_channel_type_alpha)
          {
            if (sampleType == v87.sampleType)
            {
LABEL_90:
              axr_decoder_append_channel(decoder, v56, flags);
              goto LABEL_91;
            }

            if (GetFlagsOnceToken != -1)
            {
              AXRLogicalImageList::AXRLogicalImageList();
            }

            if (((kDefaultAXRLogFlags | flags) & 2) != 0)
            {
              v58 = axr_channel_type_get_name(v87.channelType);
              AXRLogDebug("axr_decoder_create_rgba: Skipping %s channel. Non-matching data type\n", v59, v60, v61, v62, v63, v64, v65, v58);
            }
          }

          --v55;
        }

        while (v55);
        v67 = v84;
        do
        {
          v68 = *v67++;
          v56 = v68;
          memset(&v87, 0, sizeof(v87));
          axr_data_get_channel_info(&v87, fileData, partIndex, v68, axr_channel_info_current);
          if ((v87.channelType & 0xF0) != 0)
          {
            if (sampleType == v87.sampleType)
            {
              goto LABEL_90;
            }

            if (GetFlagsOnceToken != -1)
            {
              AXRLogicalImageList::AXRLogicalImageList();
            }

            if (((kDefaultAXRLogFlags | flags) & 2) != 0)
            {
              v69 = axr_channel_type_get_name(v87.channelType);
              AXRLogDebug("axr_decoder_create_rgba: Skipping %s channel. Non-matching data type\n", v70, v71, v72, v73, v74, v75, v76, v69);
            }
          }

          --channel_count;
        }

        while (channel_count);
      }

LABEL_91:
      free(v78);
      return decoder;
    }

LABEL_35:
    ++v29;
  }

  while (v29 != 4);
  if (GetFlagsOnceToken != -1)
  {
    AXRLogicalImageList::AXRLogicalImageList();
  }

  if (((kDefaultAXRLogFlags | flags) & 2) != 0)
  {
    AXRLogDebug("axr_decoder_create_rgba: no channels found for part %lu, layerName: %s matching recognized colorModels\n", v14, v15, v16, v17, v18, v19, v20, partIndex);
  }

  v48 = v78;
LABEL_79:
  free(v48);
  return 0;
}

axr_error_t axr_decoder_clear_channel_list(axr_decoder_t decoder)
{
  for (i = decoder[3].isa; i; i = decoder[3].isa)
  {
    decoder[3].isa = *(i + 8);
    MEMORY[0x29C25E8F0]();
  }

  LODWORD(decoder[4].isa) = 0;
  return 0;
}

axr_error_t axr_decoder_append_channel(axr_decoder_t decoder, uint32_t channelIndex, axr_flags_t flags)
{
  isa = decoder[2].isa;
  isa_low = LODWORD(decoder[5].isa);
  v13 = *(isa + 11);
  if (isa_low)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = 1;
    do
    {
      v13 = *(v13 + 1);
      if (v15 >= isa_low)
      {
        break;
      }

      ++v15;
    }

    while (v13);
  }

  if (v13)
  {
    LOBYTE(isa_low) = channelIndex;
    Part::GetChannel(v13, channelIndex, flags, v3, v4, v5, v6, v7);
    v23 = LODWORD(decoder[5].isa);
    v24 = *(isa + 11);
    if (v23 && v24)
    {
      v25 = 1;
      do
      {
        v24 = *(v24 + 1);
        if (v25 >= v23)
        {
          break;
        }

        ++v25;
      }

      while (v24);
    }

    if (v24)
    {
      Part::GetChannel(v24, channelIndex, flags, v18, v19, v20, v21, v22);
      operator new();
    }

    v26 = decoder[5].isa;
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    AXRLogError("Error: image index %lu out of range [0,%lu]", v16, v17, v18, v19, v20, v21, v22, v26);
    while (1)
    {
      __break(1u);
LABEL_22:
      [OS_axr_data debugDescription];
LABEL_17:
      AXRLogError("Error: image index %lu out of range [0,%lu]", *&channelIndex, flags, v3, v4, v5, v6, v7, isa_low);
    }
  }

  if (GetFlagsOnceToken != -1)
  {
    goto LABEL_22;
  }

  goto LABEL_17;
}

axr_error_t axr_decoder_set_subregion(axr_decoder_t d, uint32_t xOrigin, uint32_t yOrigin, uint32_t xSize, uint32_t ySize, axr_flags_t flags)
{
  v8 = flags;
  isa = d[2].isa;
  isa_low = LODWORD(d[5].isa);
  v16 = *(isa + 11);
  if (isa_low)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v18 = 1;
    do
    {
      v16 = *(v16 + 1);
      if (v18 >= isa_low)
      {
        break;
      }

      ++v18;
    }

    while (v16);
  }

  if (!v16)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", *&xOrigin, *&yOrigin, *&xSize, *&ySize, flags, v6, v7, isa_low);
      __break(1u);
LABEL_23:
      [OS_axr_data debugDescription];
    }
  }

  ImageSize = Part::GetImageSize(v16, HIDWORD(d[5].isa), *(isa + 5), *&xSize, *&ySize, flags, v6, v7);
  if (xSize + xOrigin > ImageSize)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v8) & 2) != 0)
    {
      AXRLogError("ROI x:[%d, %d] extends off right edge of data window. (width = %u)", v20, v21, v22, v23, v24, v25, v26, LODWORD(d[8].isa) + xOrigin);
    }

    return -1;
  }

  if (ySize + yOrigin > HIDWORD(ImageSize))
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v8) & 2) != 0)
    {
      AXRLogError("ROI y:[%d, %d] extends off bottom edge of data window. (height = %u)", v20, v21, v22, v23, v24, v25, v26, LODWORD(d[9].isa) + yOrigin);
    }

    return -1;
  }

  result = axr_error_success;
  LODWORD(d[6].isa) = xOrigin;
  HIDWORD(d[6].isa) = yOrigin;
  LODWORD(d[7].isa) = xSize;
  HIDWORD(d[7].isa) = ySize;
  return result;
}

uint32_t axr_decoder_get_channel_count(axr_decoder_t decoder)
{
  if (decoder)
  {
    LODWORD(decoder) = decoder[4].isa;
  }

  return decoder;
}

void *__cdecl axr_decoder_create_colorspace(void *decoder, axr_flags_t flags, void *options)
{
  if (decoder)
  {
    v13 = decoder;
    if (!*(decoder + 8))
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | flags) & 2) != 0)
      {
        AXRLogDebug("axr_decoder_create_colorspace: no channels have been appended", flags, options, v3, v4, v5, v6, v7, v15);
      }
    }

    v14 = (*(v13 + 2) + 16);

    return AXRData::CreateColorSpaceForImage(v14, v13, options, flags, 0, v5, v6, v7, v8, v9, v10);
  }

  return decoder;
}

uint64_t AXRData::CreateColorSpaceForImage(AXRData *this, axr_decoder *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, __n128 a11)
{
  v11 = *(a2 + 10);
  v12 = *(this + 9);
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = 1;
    do
    {
      v12 = *(v12 + 1);
      if (v14 >= v11)
      {
        break;
      }

      ++v14;
    }

    while (v12);
  }

  if (!v12)
  {
    v16 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, a3, a4, a5, a6, a7, a8, v16);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  return Part::CreateColorSpace(v12, a2, a3, a4, a5, a9, a10, a11);
}

void *__cdecl axr_decoder_create_rgba_colorspace(void *decoder, axr_flags_t flags, void *options)
{
  if (decoder)
  {
    v13 = decoder;
    if (!*(decoder + 8))
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | flags) & 2) != 0)
      {
        AXRLogDebug("axr_decoder_create_colorspace: no channels have been appended", flags, options, v3, v4, v5, v6, v7, v15);
      }
    }

    v14 = (*(v13 + 2) + 16);

    return AXRData::CreateColorSpaceForImage(v14, v13, options, flags, 1, v5, v6, v7, v8, v9, v10);
  }

  return decoder;
}

uint64_t axr_decoder_translate_channel_index(axr_decoder_t decoder, unint64_t channelIndex)
{
  if (!decoder)
  {
    return -1;
  }

  isa = decoder[3].isa;
  if (!isa)
  {
    return -1;
  }

  for (i = (LODWORD(decoder[4].isa) - 1); i < channelIndex; --i)
  {
    isa = *(isa + 1);
    if (!isa)
    {
      return -1;
    }
  }

  if (*(isa + 24))
  {
    return -1;
  }

  else
  {
    return i;
  }
}

axr_decoder_info_t *__cdecl axr_decoder_get_info(axr_decoder_info_t *__return_ptr retstr, axr_decoder_info_t *decoder, axr_decoder_info_struct_version_t version)
{
  if (!decoder)
  {
LABEL_7:
    *&retstr->levelIndex = 0u;
    *(&retstr->subregion + 4) = 0u;
    *&retstr->data = 0u;
    return decoder;
  }

  v10 = decoder;
  if (version >= 2)
  {
    v11 = *&decoder[1].subregion.origin.y;
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v11) & 2) != 0)
    {
      AXRLogError("Error: axr_decoder_get_info: You must pass axr_decoder_info_current here.", *&version, v3, v4, v5, v6, v7, v8, v19);
    }

    goto LABEL_7;
  }

  v12 = *&decoder->levelIndex;
  retstr->data = v12;
  width = v10[2].size.width;
  retstr->partIndex = width;
  v14 = *(v12 + 11);
  if (width)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = 1;
    do
    {
      v14 = *(v14 + 8);
      if (v16 >= width)
      {
        break;
      }

      ++v16;
    }

    while (v14);
  }

  if (!v14)
  {
    v18 = width;
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", width, v3, v4, v5, v6, v7, v8, v18);
      __break(1u);
LABEL_19:
      [OS_axr_data debugDescription];
    }
  }

  height = v10[2].size.height;
  retstr->levelMode = *(v14 + 164);
  retstr->levelIndex = height;
  decoder = axr_data_get_level_size(v12, width, height);
  retstr->levelSize = decoder;
  retstr->subregion = v10[3];
  return decoder;
}

axr_channel_info_t *__cdecl axr_decoder_get_channel_info(axr_channel_info_t *__return_ptr retstr, axr_channel_info_t *decoder, unint64_t channelIndex, axr_channel_info_struct_version_t version)
{
  if (!decoder)
  {
    goto LABEL_18;
  }

  v10 = decoder;
  v11 = *&decoder->name[56];
  v12 = *&decoder->name[8];
  if (v12 <= channelIndex)
  {
    LOBYTE(retstr) = channelIndex;
    if (GetFlagsOnceToken == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if (version != axr_channel_info_current)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v11) & 2) != 0)
    {
      AXRLogError("axr_decoder_get_channel_info: version must be set to axr_channel_info_current", channelIndex, *&version, v4, v5, v6, v7, v8, v30);
    }

    while (1)
    {
      __break(1u);
LABEL_35:
      [OS_axr_data debugDescription];
LABEL_28:
      if (((kDefaultAXRLogFlags | v11) & 2) != 0)
      {
        AXRLogError("axr_decoder_get_channel_info: channelIndex %lu out of bounds [0, %u]", channelIndex, *&version, v4, v5, v6, v7, v8, retstr);
      }
    }
  }

  v13 = (v12 - 1);
  v14 = *decoder->name;
  if (v13 > channelIndex && v14 != 0)
  {
    v16 = v13 - 1;
    do
    {
      v14 = *(v14 + 1);
      if (v16 <= channelIndex)
      {
        break;
      }

      --v16;
    }

    while (v14);
  }

  if (v14)
  {
    if (*(v14 + 24))
    {
      *&retstr->name[224] = 0u;
      *&retstr->name[208] = 0u;
      *&retstr->name[192] = 0u;
      *&retstr->name[176] = 0u;
      *&retstr->name[160] = 0u;
      *&retstr->name[144] = 0u;
      *&retstr->name[128] = 0u;
      *&retstr->name[112] = 0u;
      *&retstr->name[96] = 0u;
      *&retstr->name[80] = 0u;
      *&retstr->name[64] = 0u;
      *&retstr->name[48] = 0u;
      *&retstr->name[32] = 0u;
      *&retstr->name[16] = 0u;
      *&retstr->sampleBits = 0u;
      *&retstr->name[240] = 0u;
      *retstr->name = 0u;
      v17 = *(v14 + 2);
      *&retstr->sampleType = v17;
      retstr->sampleBits = axr_type_get_size(v17);
      *&retstr->xSampling = 0x100000001;
      name = axr_channel_type_get_name(retstr->channelType);
      decoder = strncpy(retstr->name, name, 0x100uLL);
      v23 = *v10->name;
      if (v23)
      {
        v24 = *v10->name;
        while (*(v14 + 24))
        {
          v24 = *(v24 + 8);
          if (!v24)
          {
            return decoder;
          }
        }

        if (*(v23 + 24))
        {
          v28 = -1;
        }

        else
        {
          v28 = *v23;
        }

        decoder = AXRData::GetChannel((*&v10->ySampling + 16), *&v10->name[16], v28, v11, v19, v20, v21, v22);
        v29 = *&decoder->name[80];
        retstr->xSampling = *&decoder->name[56];
        retstr->ySampling = v29;
      }
    }

    else
    {
      v25 = *v14;
      v26 = *&decoder->ySampling;
      v27 = *&v10->name[16];

      return axr_data_get_channel_info(retstr, v26, v27, v25, axr_channel_info_current);
    }
  }

  else
  {
LABEL_18:
    *&retstr->name[248] = 0;
    *&retstr->name[216] = 0u;
    *&retstr->name[232] = 0u;
    *&retstr->name[184] = 0u;
    *&retstr->name[200] = 0u;
    *&retstr->name[152] = 0u;
    *&retstr->name[168] = 0u;
    *&retstr->name[120] = 0u;
    *&retstr->name[136] = 0u;
    *&retstr->name[88] = 0u;
    *&retstr->name[104] = 0u;
    *&retstr->name[56] = 0u;
    *&retstr->name[72] = 0u;
    *&retstr->name[24] = 0u;
    *&retstr->name[40] = 0u;
    *&retstr->ySampling = 0u;
    *&retstr->name[8] = 0u;
    *&retstr->sampleType = 0u;
  }

  return decoder;
}

uint64_t AXRData::GetChannel(AXRData *this, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 9);
  if (a2 && v8)
  {
    v9 = 1;
    do
    {
      v8 = *(v8 + 1);
      if (v9 >= a2)
      {
        break;
      }

      ++v9;
    }

    while (v8);
  }

  if (!v8)
  {
    v11 = a2;
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, a3, a4, a5, a6, a7, a8, v11);
      __break(1u);
LABEL_12:
      [OS_axr_data debugDescription];
    }
  }

  return Part::GetChannel(v8, a3, a4, a4, a5, a6, a7, a8);
}

axr_data_t axr_decoder_get_data(axr_data_t data)
{
  if (data)
  {
    return data[2].isa;
  }

  return data;
}

uint64_t ReadChannel::Print(ReadChannel *this, char *a2, size_t a3, int a4, const AXRData *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x29EDCA608];
  if (*(this + 24))
  {
    axr_channel_type_get_name(*(this + 5));
    axr_type_get_name(*(this + 4));
    LODWORD(result) = snprintf(a2, a3, "\tRead Channel %p\n\t\tvalue:     %f\t(%s)\n\t\ttype:      %s\n");
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__str = 0u;
    v15 = 0u;
    Channel = AXRData::GetChannel(a5, a6, *this, 0, a5, a6, a7, a8);
    ChannelDescription::CopyName(Channel, a5, __str, 0x100uLL);
    axr_channel_type_get_name(*(this + 5));
    axr_type_get_name(*(this + 4));
    LODWORD(result) = snprintf(a2, a3, "\tRead Channel %p\n\t\tchannel:   %u\t(%s, %s)\n\t\ttype:      %s\n");
  }

  return result;
}

uint64_t RowCompressor::ReadData(void *a1, uint64_t a2)
{
  if (!*(a2 + 88))
  {
    return 0;
  }

  v4 = *(a2 + 32);
  v5 = *(a2 + 72) * *(a2 + 36);
  v6 = (v5 * *(a2 + 24) + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a2 + 176) = v6;
  *(a2 + 192) = v6;
  *(a2 + 200) = v5 * v4;
  (*(*a1 + 56))(a1);
  v7 = (*(*a1 + 48))(a1, a2);
  v8 = ((v7 + 63) & 0xFFFFFFFFFFFFFFC0);
  *(a2 + 144) = v8;
  *(a2 + 160) = -1;
  LODWORD(v9) = *(a2 + 12) >> 3;
  if (v9 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v9;
  }

  v10 = *(a2 + 192);
  if (v10 <= v8)
  {
    v10 = (v7 + 63) & 0xFFFFFFFFFFFFFFC0;
  }

  if (v10 <= *(a2 + 176))
  {
    v10 = *(a2 + 176);
  }

  v11 = a1[1];
  v11[6] = v10 * v9;
  *(a2 + 136) = EncoderStream::GetBytes<char>(v11, v8);
  v12 = EncoderStream::GetBytes<char>(a1[1], *(a2 + 192));
  *(a2 + 184) = v12;
  v13 = *(a2 + 176);
  if (v13)
  {
    v14 = EncoderStream::GetBytes<char>(a1[1], v13);
    v15 = *(a2 + 184);
  }

  else
  {
    v15 = v12;
    v14 = 0;
  }

  *(a2 + 168) = v14;
  v17 = *(a2 + 88);
  if (!v17)
  {
    return 0;
  }

  while (1)
  {
    v18 = *(v17 + 16);
    size = axr_type_get_size(*(v17 + 56));
    v20 = size;
    v21 = size * v18;
    v22 = size * v18 * (*(a2 + 24) * *(a2 + 36));
    result = EncoderLayer::CompressTileRow(v17, v15, v22, a2);
    if (result <= 0)
    {
      break;
    }

    if (v22 > result)
    {
      bzero((result + v15), v22 - result);
    }

    if (v14)
    {
      v23 = *(&RowCompressor::ReadData(CompressionInfo &)const::FuncList[(v20 & 4) - 1] + v18);
      v26 = v15;
      v27 = v14;
      v24 = (*(a2 + 72) >> 1) * *(a2 + 32);
      if (*(a2 + 8))
      {
        v25 = 0;
        do
        {
          v23(&v26, &v27, *(a2 + 32), v21 * *(a2 + 24), v24, v17);
          ++v25;
        }

        while (v25 < *(a2 + 8));
      }

      v14 += v24;
    }

    v15 += v22;
    v17 = *v17;
    if (!v17)
    {
      return 0;
    }
  }

  if (!result)
  {
    return -10;
  }

  return result;
}

uint64_t *Deinterleave<unsigned short,1>(uint64_t *result, __n128 **a2, unint64_t a3, uint64_t a4, uint64_t a5, int8x16_t a6)
{
  v6 = *result;
  if (HIDWORD(a3))
  {
    v7 = 0;
    v8 = HIDWORD(a3) * a5;
    v9 = *a2;
    do
    {
      v10 = v9;
      v11 = v6;
      v12 = a3;
      if (a3 >= 0x10)
      {
        v12 = a3;
        v11 = v6;
        v10 = v9;
        do
        {
          *a6.i8 = vld2q_s8(v11);
          v11 += 32;
          *v10 = a6;
          *(v10++ + v8) = v13;
          v12 -= 16;
        }

        while (v12 > 0xF);
      }

      if (v12 >= 4)
      {
        do
        {
          v14 = *v11;
          v11 += 8;
          a6.i64[0] = v14;
          v10->n128_u32[0] = vmovn_s16(a6).u32[0];
          a6 = vrev16q_s8(a6);
          *(v10->n128_u32 + v8) = vmovn_s16(a6).u32[0];
          v10 = (v10 + 4);
          v12 -= 4;
        }

        while (v12 > 3);
      }

      for (; v12; --v12)
      {
        v15 = *v11;
        v16 = *(v11 + 1);
        v11 += 2;
        v10->n128_u8[0] = v15;
        v10->n128_u8[v8] = v16;
        v10 = (v10 + 1);
      }

      v6 += a4;
      v9 = (v9 + a5);
      ++v7;
    }

    while (v7 != HIDWORD(a3));
    v6 = *result;
  }

  v17 = 2 * a3;
  *result = v17 + v6;
  *a2 = (*a2 + (v17 >> 1));
  return result;
}

const __int16 **Deinterleave<unsigned short,2>(const __int16 **result, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, int8x16_t a8)
{
  v27[2] = *MEMORY[0x29EDCA608];
  v8 = *result;
  v9 = *a2;
  v10 = *(a6 + 8);
  v27[*(v10 + 12)] = 0;
  v27[*(v10 + 28)] = a3;
  if (HIDWORD(a3))
  {
    v11 = 0;
    v12 = HIDWORD(a3) * a5;
    v13 = v27[0];
    v14 = v27[1];
    do
    {
      v15 = v9;
      v16 = v8;
      v17 = a3;
      if (a3 >= 0x10)
      {
        v18 = (v13 + v9);
        v19 = (v14 + v9);
        v17 = a3;
        v20 = v8;
        v15 = v9;
        do
        {
          v16 = v20 + 32;
          *(&a8 - 1) = vld2q_s16(v20);
          v21 = v20 + 16;
          v28 = vld2q_s16(v21);
          *v18 = vuzp1q_s8(v22, v28.val[0]);
          *v19 = vuzp1q_s8(a8, v28.val[1]);
          *(v18 + v12) = vuzp2q_s8(v22, v28.val[0]);
          a7 = vuzp2q_s8(a8, v28.val[1]);
          *(v19 + v12) = a7;
          v15 += 16;
          v17 -= 16;
          ++v18;
          ++v19;
          v20 = v16;
        }

        while (v17 > 0xF);
      }

      if (v17 >= 4)
      {
        v23 = (v13 + v15);
        v24 = (v14 + v15);
        do
        {
          a7 = vld2_s16(v16);
          v16 += 8;
          *v23 = vuzp1_s8(a7.n128_u64[0], a7.n128_u64[0]).u32[0];
          *v24 = vuzp1_s8(*a8.i8, a7.n128_u64[0]).u32[0];
          *(v23 + v12) = vmovn_s16(vrev16q_s8(a7)).u32[0];
          a7 = vrev16q_s8(a8);
          a7.n128_u64[0] = vmovn_s16(a7);
          *(v24 + v12) = a7.n128_u32[0];
          v15 += 4;
          v17 -= 4;
          ++v23;
          ++v24;
        }

        while (v17 > 3);
      }

      if (v17)
      {
        v25 = (v13 + v15);
        v26 = (v14 + v15);
        do
        {
          a7.n128_u16[0] = *v16;
          a7.n128_u16[2] = v16[1];
          v16 += 2;
          a8.i32[0] = a7.n128_i32[1];
          *v25 = vmovn_s16(a7).u8[0];
          *v26 = vmovn_s16(a8).u8[0];
          v25[v12] = a7.n128_u8[1];
          v26[v12] = a7.n128_u8[5];
          ++v25;
          ++v26;
          --v17;
        }

        while (v17);
      }

      v8 = (v8 + a4);
      v9 += a5;
      ++v11;
    }

    while (v11 != HIDWORD(a3));
    v8 = *result;
  }

  *result = &v8[2 * a3];
  *a2 += 2 * a3;
  return result;
}

const __int16 **Deinterleave<unsigned short,3>(const __int16 **result, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, int8x16_t a8, int8x16_t a9)
{
  v37[3] = *MEMORY[0x29EDCA608];
  v9 = *result;
  v10 = *a2;
  v11 = *(a6 + 8);
  v37[v11[3]] = 0;
  v37[v11[7]] = a3;
  v37[v11[11]] = 2 * a3;
  if (HIDWORD(a3))
  {
    v12 = 0;
    v13 = HIDWORD(a3) * a5;
    v14 = v37[0];
    v15 = v37[1];
    v16 = v37[2];
    do
    {
      v17 = v10;
      v18 = v9;
      v19 = a3;
      if (a3 >= 0x10)
      {
        v20 = (v14 + v10);
        v21 = (v15 + v10);
        v22 = (v16 + v10);
        v19 = a3;
        v23 = v9;
        v17 = v10;
        do
        {
          v18 = v23 + 48;
          *(&a8 - 1) = vld3q_s16(v23);
          v24 = v23 + 24;
          v38 = vld3q_s16(v24);
          *v20 = vuzp1q_s8(v25, v38.val[0]);
          *(v20 + v13) = vuzp2q_s8(v25, v38.val[0]);
          *v21 = vuzp1q_s8(a8, v38.val[1]);
          *(v21 + v13) = vuzp2q_s8(a8, v38.val[1]);
          *v22 = vuzp1q_s8(a9, v38.val[2]);
          a7 = vuzp2q_s8(a9, v38.val[2]);
          *(v22 + v13) = a7;
          v17 += 16;
          v19 -= 16;
          ++v20;
          ++v21;
          ++v22;
          v23 = v18;
        }

        while (v19 > 0xF);
      }

      if (v19 >= 4)
      {
        v26 = (v14 + v17);
        v27 = (v15 + v17);
        v28 = (v16 + v17);
        do
        {
          *a7.n128_u64 = vld3_s16(v18);
          v18 += 12;
          *v26 = vuzp1_s8(a7.n128_u64[0], a7.n128_u64[0]).u32[0];
          *(v26 + v13) = vmovn_s16(vrev16q_s8(a7)).u32[0];
          *v27 = vuzp1_s8(*a8.i8, a7.n128_u64[0]).u32[0];
          *(v27 + v13) = vmovn_s16(vrev16q_s8(a8)).u32[0];
          *v28 = vuzp1_s8(*a9.i8, a7.n128_u64[0]).u32[0];
          a7 = vrev16q_s8(a9);
          *(v28 + v13) = vmovn_s16(a7).u32[0];
          v17 += 4;
          v19 -= 4;
          ++v26;
          ++v27;
          ++v28;
        }

        while (v19 > 3);
      }

      if (v19)
      {
        v29 = (v14 + v17);
        v30 = (v15 + v17);
        v31 = (v16 + v17);
        do
        {
          v32 = *(v18 + 2);
          v33 = *(v18 + 3);
          v34 = *(v18 + 4);
          v35 = *(v18 + 5);
          v36 = *(v18 + 1);
          *v29 = *v18;
          v29[v13] = v36;
          *v30 = v32;
          v30[v13] = v33;
          *v31 = v34;
          v18 += 3;
          v31[v13] = v35;
          ++v29;
          ++v30;
          ++v31;
          --v19;
        }

        while (v19);
      }

      v9 = (v9 + a4);
      v10 += a5;
      ++v12;
    }

    while (v12 != HIDWORD(a3));
    v9 = *result;
  }

  *result = &v9[3 * a3];
  *a2 += 3 * a3;
  return result;
}

uint64_t *Deinterleave<unsigned short,4>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, int16x8_t a8, int16x8_t a9, double a10, int8x16_t a11, int8x16_t a12, int16x8_t a13)
{
  v13 = 0;
  v14 = 0;
  v55[4] = *MEMORY[0x29EDCA608];
  v15 = HIDWORD(a3);
  v16 = *result;
  v17 = *a2;
  v18 = *(a6 + 8) + 12;
  do
  {
    v55[*(v18 + v14)] = v13;
    v14 += 16;
    v13 += a3;
  }

  while (v14 != 64);
  if (v15)
  {
    v19 = 0;
    v20 = v15 * a5;
    v21 = v55[0];
    v22 = v55[1];
    v23 = v55[2];
    v24 = v55[3];
    do
    {
      v25 = v17;
      v26 = v16;
      v27 = a3;
      if (a3 >= 0x10)
      {
        v28 = (v21 + v17);
        v29 = (v22 + v17);
        v30 = (v23 + v17);
        v31 = (v24 + v17);
        v27 = a3;
        v26 = v16;
        v25 = v17;
        do
        {
          v32 = v26;
          v56 = vld2q_s16(v32);
          v32 += 16;
          *a9.i8 = vld2q_s16(v32);
          v33 = (v26 + 64);
          v57 = vld2q_s16(v33);
          v34 = (v26 + 96);
          *a13.i8 = vld2q_s16(v34);
          v26 += 128;
          v35 = vuzp1q_s16(v57.val[0], a13);
          v36 = vuzp1q_s16(v56.val[0], a9);
          v38 = vuzp1q_s16(v57.val[1], v37);
          v40 = vuzp1q_s16(v56.val[1], v39);
          v41 = vuzp2q_s16(v57.val[0], a13);
          *v28 = vuzp1q_s8(v36, v35);
          v42 = vuzp2q_s16(v56.val[0], a9);
          *(v28 + v20) = vuzp2q_s8(v36, v35);
          a11 = vuzp2q_s16(v57.val[1], v37);
          *v29 = vuzp1q_s8(v40, v38);
          a12 = vuzp2q_s8(v40, v38);
          *(v29 + v20) = a12;
          v56.val[0] = vuzp2q_s16(v56.val[1], v39);
          *v30 = vuzp1q_s8(v42, v41);
          *(v30 + v20) = vuzp2q_s8(v42, v41);
          a8 = vuzp1q_s8(v56.val[0], a11);
          *v31 = a8;
          a7 = vuzp2q_s8(v56.val[0], a11);
          *(v31 + v20) = a7;
          v25 += 16;
          v27 -= 16;
          ++v28;
          ++v29;
          ++v30;
          ++v31;
        }

        while (v27 > 0xF);
      }

      if (v27 >= 4)
      {
        v43 = (v21 + v25);
        v44 = (v22 + v25);
        v45 = (v23 + v25);
        v46 = (v24 + v25);
        do
        {
          v47 = v26 + 32;
          a7 = vld2_s16(v26);
          v48 = (v26 + 16);
          a9 = vld2_s16(v48);
          *a11.i8 = vuzp1_s16(a7.n128_u64[0], *a9.i8);
          *a12.i8 = vuzp1_s16(v49, v50);
          *a13.i8 = vuzp2_s16(a7.n128_u64[0], *a9.i8);
          a7.n128_u64[0] = vuzp2_s16(v49, v50);
          *v43 = vuzp1_s8(*a11.i8, a7.n128_u64[0]).u32[0];
          *(v43 + v20) = vmovn_s16(vrev16q_s8(a11)).u32[0];
          *v44 = vuzp1_s8(*a12.i8, a7.n128_u64[0]).u32[0];
          *(v44 + v20) = vmovn_s16(vrev16q_s8(a12)).u32[0];
          *v45 = vuzp1_s8(*a13.i8, a7.n128_u64[0]).u32[0];
          a8 = vrev16q_s8(a13);
          *(v45 + v20) = vmovn_s16(a8).u32[0];
          *a8.i8 = vuzp1_s8(a7.n128_u64[0], a7.n128_u64[0]);
          *v46 = a8.i32[0];
          a7 = vrev16q_s8(a7);
          a7.n128_u64[0] = vmovn_s16(a7);
          *(v46 + v20) = a7.n128_u32[0];
          v25 += 4;
          v27 -= 4;
          ++v43;
          ++v44;
          ++v45;
          ++v46;
          v26 = v47;
        }

        while (v27 > 3);
        v26 = v47;
      }

      if (v27)
      {
        v51 = (v21 + v25);
        v52 = (v22 + v25);
        v53 = (v23 + v25);
        v54 = (v24 + v25);
        do
        {
          a7.n128_u16[0] = *v26;
          a7.n128_u16[2] = *(v26 + 2);
          a8.i16[0] = *(v26 + 4);
          a8.i16[2] = *(v26 + 6);
          a9.i32[0] = a7.n128_i32[1];
          *v51 = vmovn_s16(a7).u8[0];
          v51[v20] = a7.n128_u8[1];
          *v52 = vmovn_s16(a9).u8[0];
          v52[v20] = a7.n128_u8[5];
          a7.n128_u64[0] = vmovn_s16(a8);
          *v53 = a7.n128_u8[0];
          v26 += 8;
          v53[v20] = a8.i8[1];
          a7.n128_u32[0] = a8.u32[1];
          *a8.i8 = vmovn_s16(a7);
          *v54 = a8.i8[0];
          ++v51;
          v54[v20] = a7.n128_u8[1];
          ++v52;
          ++v53;
          ++v54;
          --v27;
        }

        while (v27);
      }

      v16 += a4;
      v17 += a5;
      ++v19;
    }

    while (v19 != HIDWORD(a3));
    v16 = *result;
  }

  *result = v16 + 8 * a3;
  *a2 += 4 * a3;
  return result;
}

const char **Deinterleave<unsigned int,1>(const char **result, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v6 = *result;
  if (HIDWORD(a3))
  {
    v7 = 0;
    v8 = HIDWORD(a3) * a5;
    v9 = *a2;
    do
    {
      v10 = v9;
      v11 = v6;
      v12 = a3;
      if (a3 >= 0x10)
      {
        v12 = a3;
        v13 = v6;
        v10 = v9;
        do
        {
          v11 = v13 + 64;
          *a6.n128_u64 = vld2q_s8(v13);
          v14 = v13 + 32;
          v21 = vld2q_s8(v14);
          *v10 = a6;
          *(v10 + 16) = v21.val[0];
          v15 = v10 + v8;
          *v15 = v16;
          *(v15 + 16) = v21.val[1];
          v10 += 32;
          v12 -= 16;
          v13 = v11;
        }

        while (v12 > 0xF);
      }

      if (v12 >= 4)
      {
        do
        {
          a6 = vld2_s8(v11);
          v11 += 16;
          *v10 = a6.n128_u64[0];
          *(v10 + v8) = v17;
          v10 += 8;
          v12 -= 4;
        }

        while (v12 > 3);
      }

      for (; v12; --v12)
      {
        v18 = *v11;
        v11 += 4;
        a6.n128_u32[0] = v18;
        a6.n128_u64[0] = vmovl_u8(a6.n128_u64[0]).u64[0];
        *(v10 + 1) = a6.n128_u8[4];
        *v10 = a6.n128_u8[0];
        v19 = (v10 + v8);
        v19[1] = a6.n128_u8[6];
        *v19 = a6.n128_u8[2];
        v10 += 2;
      }

      v6 += a4;
      v9 += a5;
      ++v7;
    }

    while (v7 != HIDWORD(a3));
    v6 = *result;
  }

  v20 = 4 * a3;
  *result = &v6[v20];
  *a2 += v20 >> 1;
  return result;
}

const float **Deinterleave<unsigned int,2>(const float **result, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31[2] = *MEMORY[0x29EDCA608];
  v6 = *result;
  v7 = *a2;
  v8 = *(a6 + 8);
  v31[*(v8 + 12)] = 0;
  v31[*(v8 + 28)] = 2 * a3;
  if (HIDWORD(a3))
  {
    v9 = 0;
    v10 = HIDWORD(a3) * a5;
    v11 = v31[0];
    v12 = v31[1];
    do
    {
      v13 = v7;
      v14 = v6;
      v15 = a3;
      if (a3 >= 0x10)
      {
        v16 = (v11 + v7);
        v17 = (v12 + v7);
        v15 = a3;
        v14 = v6;
        v13 = v7;
        do
        {
          v18 = v14;
          v32 = vld2q_f32(v18);
          v18 += 8;
          v34 = vld2q_f32(v18);
          v19 = v14 + 16;
          v35 = vld2q_f32(v19);
          v20 = v14 + 24;
          v36 = vld2q_f32(v20);
          v14 += 32;
          *v16 = vuzp1q_s8(v32.val[0], v34.val[0]);
          v16[1] = vuzp1q_s8(v35.val[0], v36.val[0]);
          *v17 = vuzp1q_s8(v32.val[1], v34.val[1]);
          v17[1] = vuzp1q_s8(v35.val[1], v36.val[1]);
          v21 = (v16 + v10);
          *v21 = vuzp2q_s8(v32.val[0], v34.val[0]);
          v21[1] = vuzp2q_s8(v35.val[0], v36.val[0]);
          v22 = (v17 + v10);
          *v22 = vuzp2q_s8(v32.val[1], v34.val[1]);
          v22[1] = vuzp2q_s8(v35.val[1], v36.val[1]);
          v13 += 32;
          v15 -= 16;
          v16 += 2;
          v17 += 2;
        }

        while (v15 > 0xF);
      }

      if (v15 >= 4)
      {
        v23 = (v11 + v13);
        v24 = (v12 + v13);
        do
        {
          v33 = vld2q_f32(v14);
          v14 += 8;
          v25 = vextq_s8(v33.val[0], v33.val[0], 8uLL).u64[0];
          *v23 = vuzp1_s8(*v33.val[0].f32, v25);
          v26 = vextq_s8(v33.val[1], v33.val[1], 8uLL).u64[0];
          *v24 = vuzp1_s8(*v33.val[1].f32, v26);
          *(v23 + v10) = vuzp2_s8(*v33.val[0].f32, v25);
          *(v24 + v10) = vuzp2_s8(*v33.val[1].f32, v26);
          v13 += 8;
          v15 -= 4;
          ++v23;
          ++v24;
        }

        while (v15 > 3);
      }

      if (v15)
      {
        v27 = (v11 + v13);
        v28 = (v12 + v13);
        do
        {
          v29 = *v14;
          v14 += 2;
          v30 = vdup_lane_s32(v29, 1).u32[0];
          v27[1] = v29.i8[2];
          *v27 = v29.i8[0];
          v28[1] = BYTE2(v30);
          *v28 = v30;
          v27[v10 + 1] = v29.i8[3];
          v27[v10] = v29.i8[1];
          v28[v10 + 1] = HIBYTE(v30);
          v28[v10] = BYTE1(v30);
          v27 += 2;
          v28 += 2;
          --v15;
        }

        while (v15);
      }

      v6 = (v6 + a4);
      v7 += a5;
      ++v9;
    }

    while (v9 != HIDWORD(a3));
    v6 = *result;
  }

  *result = &v6[2 * a3];
  *a2 += 4 * a3;
  return result;
}

uint64_t *Deinterleave<unsigned int,3>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9)
{
  v43[3] = *MEMORY[0x29EDCA608];
  v9 = *result;
  v10 = *a2;
  v11 = *(a6 + 8);
  v43[v11[3]] = 0;
  v43[v11[7]] = 2 * a3;
  v43[v11[11]] = 4 * a3;
  if (HIDWORD(a3))
  {
    v12 = 0;
    v13 = HIDWORD(a3) * a5;
    v14 = v43[0];
    v15 = v43[1];
    v16 = v43[2];
    do
    {
      v17 = v10;
      v18 = v9;
      v19 = a3;
      if (a3 >= 0x10)
      {
        v20 = (v14 + v10);
        v21 = (v15 + v10);
        v22 = (v16 + v10);
        v19 = a3;
        v18 = v9;
        v17 = v10;
        do
        {
          v23 = v18;
          *(&a9 - 2) = vld3q_f32(v23);
          v23 += 12;
          v44 = vld3q_f32(v23);
          v24 = (v18 + 96);
          v45 = vld3q_f32(v24);
          v25 = (v18 + 144);
          v46 = vld3q_f32(v25);
          v18 += 192;
          *v20 = vuzp1q_s8(v26, v44.val[0]);
          v20[1] = vuzp1q_s8(v45.val[0], v46.val[0]);
          v27 = (v20 + v13);
          *v27 = vuzp2q_s8(v26, v44.val[0]);
          v27[1] = vuzp2q_s8(v45.val[0], v46.val[0]);
          *v21 = vuzp1q_s8(v28, v44.val[1]);
          v21[1] = vuzp1q_s8(v45.val[1], v46.val[1]);
          v29 = (v21 + v13);
          *v29 = vuzp2q_s8(v28, v44.val[1]);
          v29[1] = vuzp2q_s8(v45.val[1], v46.val[1]);
          *v22 = vuzp1q_s8(a9, v44.val[2]);
          v22[1] = vuzp1q_s8(v45.val[2], v46.val[2]);
          a7 = vuzp2q_s8(a9, v44.val[2]);
          a8 = vuzp2q_s8(v45.val[2], v46.val[2]);
          v30 = &v22->i8[v13];
          v17 += 32;
          v19 -= 16;
          *v30 = a7;
          v30[1] = a8;
          v20 += 2;
          v21 += 2;
          v22 += 2;
        }

        while (v19 > 0xF);
      }

      if (v19 >= 4)
      {
        v31 = (v14 + v17);
        v32 = (v15 + v17);
        v33 = (v16 + v17);
        do
        {
          *a7.i8 = vld3q_f32(v18);
          v18 += 48;
          v34 = vextq_s8(a7, a7, 8uLL).u64[0];
          *v31 = vuzp1_s8(*a7.i8, v34);
          *(v31 + v13) = vuzp2_s8(*a7.i8, v34);
          v35 = vextq_s8(a8, a8, 8uLL).u64[0];
          *v32 = vuzp1_s8(*a8.i8, v35);
          *(v32 + v13) = vuzp2_s8(*a8.i8, v35);
          v36 = vextq_s8(a9, a9, 8uLL).u64[0];
          *v33 = vuzp1_s8(*a9.i8, v36);
          *a7.i8 = vuzp2_s8(*a9.i8, v36);
          *(v33 + v13) = *a7.i8;
          v17 += 8;
          v19 -= 4;
          ++v31;
          ++v32;
          ++v33;
        }

        while (v19 > 3);
      }

      if (v19)
      {
        v37 = (v14 + v17);
        v38 = (v15 + v17);
        v39 = (v16 + v17);
        do
        {
          a7.i32[0] = *v18;
          a8.i32[0] = *(v18 + 4);
          a7.i64[0] = vmovl_u8(*a7.i8).u64[0];
          a8 = vmovl_u8(*a8.i8);
          a9.i32[0] = *(v18 + 8);
          a9 = vmovl_u8(*a9.i8);
          v18 += 12;
          v37[1] = a7.i8[4];
          *v37 = a7.i8[0];
          v40 = &v37[v13];
          v40[1] = a7.i8[6];
          *v40 = a7.i8[2];
          v38[1] = a8.i8[4];
          *v38 = a8.i8[0];
          v41 = &v38[v13];
          v41[1] = a8.i8[6];
          *v41 = a8.i8[2];
          v39[1] = a9.i8[4];
          *v39 = a9.i8[0];
          v42 = &v39[v13];
          v37 += 2;
          v42[1] = a9.i8[6];
          v38 += 2;
          v39 += 2;
          *v42 = a9.i8[2];
          --v19;
        }

        while (v19);
      }

      v9 += a4;
      v10 += a5;
      ++v12;
    }

    while (v12 != HIDWORD(a3));
    v9 = *result;
  }

  *result = v9 + 12 * a3;
  *a2 += 6 * a3;
  return result;
}

uint64_t *Deinterleave<unsigned int,4>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v7 = 0;
  v65[4] = *MEMORY[0x29EDCA608];
  v8 = HIDWORD(a3);
  v9 = *result;
  v10 = *a2;
  v11 = *(a6 + 8) + 12;
  do
  {
    v65[*(v11 + v7)] = v6;
    v7 += 16;
    v6 += 2 * a3;
  }

  while (v7 != 64);
  if (v8)
  {
    v12 = 0;
    v13 = v8 * a5;
    v14 = v65[0];
    v15 = v65[1];
    v16 = v65[2];
    v17 = v65[3];
    do
    {
      v18 = v10;
      v19 = v9;
      v20 = a3;
      if (a3 >= 0x10)
      {
        v21 = (v14 + v10);
        v22 = (v15 + v10);
        v23 = (v16 + v10);
        v24 = (v17 + v10);
        v20 = a3;
        v19 = v9;
        v18 = v10;
        do
        {
          v25 = v19;
          v66 = vld2q_f32(v25);
          v25 += 8;
          v68 = vld2q_f32(v25);
          v26 = (v19 + 64);
          v70 = vld2q_f32(v26);
          v27 = (v19 + 96);
          v71 = vld2q_f32(v27);
          v28 = (v19 + 128);
          v72 = vld2q_f32(v28);
          v29 = (v19 + 160);
          v73 = vld2q_f32(v29);
          v30 = (v19 + 192);
          v74 = vld2q_f32(v30);
          v31 = (v19 + 224);
          v75 = vld2q_f32(v31);
          v32 = vuzp1q_s32(v74.val[0], v75.val[0]);
          v33 = vuzp1q_s32(v72.val[0], v73.val[0]);
          v19 += 256;
          v34 = vuzp1q_s32(v70.val[0], v71.val[0]);
          v35 = vuzp1q_s32(v66.val[0], v68.val[0]);
          v36 = vuzp1q_s32(v74.val[1], v75.val[1]);
          v37 = vuzp1q_s32(v72.val[1], v73.val[1]);
          v38 = vuzp1q_s32(v70.val[1], v71.val[1]);
          v39 = vuzp1q_s32(v66.val[1], v68.val[1]);
          v40 = vuzp2q_s32(v74.val[0], v75.val[0]);
          v41 = vuzp2q_s32(v72.val[0], v73.val[0]);
          v42 = vuzp2q_s32(v70.val[0], v71.val[0]);
          v43 = vuzp2q_s32(v66.val[0], v68.val[0]);
          v74.val[0] = vuzp2q_s32(v74.val[1], v75.val[1]);
          *v21 = vuzp1q_s8(v35, v34);
          v21[1] = vuzp1q_s8(v33, v32);
          v72.val[0] = vuzp2q_s32(v72.val[1], v73.val[1]);
          v44 = (v21 + v13);
          *v44 = vuzp2q_s8(v35, v34);
          v44[1] = vuzp2q_s8(v33, v32);
          v70.val[0] = vuzp2q_s32(v70.val[1], v71.val[1]);
          v66.val[0] = vuzp2q_s32(v66.val[1], v68.val[1]);
          *v22 = vuzp1q_s8(v39, v38);
          v22[1] = vuzp1q_s8(v37, v36);
          v45 = (v22 + v13);
          *v45 = vuzp2q_s8(v39, v38);
          v45[1] = vuzp2q_s8(v37, v36);
          *v23 = vuzp1q_s8(v43, v42);
          v23[1] = vuzp1q_s8(v41, v40);
          v46 = (v23 + v13);
          *v46 = vuzp2q_s8(v43, v42);
          v46[1] = vuzp2q_s8(v41, v40);
          *v24 = vuzp1q_s8(v66.val[0], v70.val[0]);
          v24[1] = vuzp1q_s8(v72.val[0], v74.val[0]);
          v47 = (v24 + v13);
          v18 += 32;
          v20 -= 16;
          v21 += 2;
          *v47 = vuzp2q_s8(v66.val[0], v70.val[0]);
          v47[1] = vuzp2q_s8(v72.val[0], v74.val[0]);
          v22 += 2;
          v23 += 2;
          v24 += 2;
        }

        while (v20 > 0xF);
      }

      if (v20 >= 4)
      {
        v48 = (v14 + v18);
        v49 = (v15 + v18);
        v50 = (v16 + v18);
        v51 = (v17 + v18);
        do
        {
          v52 = v19 + 64;
          v67 = vld2q_f32(v19);
          v53 = (v19 + 32);
          v69 = vld2q_f32(v53);
          v54 = vuzp1q_s32(v67.val[0], v69.val[0]);
          v55 = vuzp1q_s32(v67.val[1], v69.val[1]);
          v56 = vuzp2q_s32(v67.val[0], v69.val[0]);
          v67.val[0] = vuzp2q_s32(v67.val[1], v69.val[1]);
          v67.val[1].i64[0] = vextq_s8(v54, v54, 8uLL).u64[0];
          *v48 = vuzp1_s8(*v54.i8, *v67.val[1].f32);
          *(v48 + v13) = vuzp2_s8(*v54.i8, *v67.val[1].f32);
          v67.val[1].i64[0] = vextq_s8(v55, v55, 8uLL).u64[0];
          *v49 = vuzp1_s8(*v55.i8, *v67.val[1].f32);
          *(v49 + v13) = vuzp2_s8(*v55.i8, *v67.val[1].f32);
          v67.val[1].i64[0] = vextq_s8(v56, v56, 8uLL).u64[0];
          *v50 = vuzp1_s8(*v56.i8, *v67.val[1].f32);
          *(v50 + v13) = vuzp2_s8(*v56.i8, *v67.val[1].f32);
          v67.val[1].i64[0] = vextq_s8(v67.val[0], v67.val[0], 8uLL).u64[0];
          *v51 = vuzp1_s8(*v67.val[0].f32, *v67.val[1].f32);
          *(v51 + v13) = vuzp2_s8(*v67.val[0].f32, *v67.val[1].f32);
          v18 += 8;
          v20 -= 4;
          ++v48;
          ++v49;
          ++v50;
          ++v51;
          v19 = v52;
        }

        while (v20 > 3);
        v19 = v52;
      }

      if (v20)
      {
        v57 = (v14 + v18);
        v58 = (v15 + v18);
        v59 = (v16 + v18);
        v60 = (v17 + v18);
        do
        {
          v61 = *v19;
          v62 = *(v19 + 8);
          v19 += 16;
          v63 = vdup_lane_s32(v61, 1).u32[0];
          v64 = vdup_lane_s32(v62, 1).u32[0];
          v57[1] = v61.i8[2];
          *v57 = v61.i8[0];
          v57[v13 + 1] = v61.i8[3];
          v57[v13] = v61.i8[1];
          v58[1] = BYTE2(v63);
          *v58 = v63;
          v58[v13 + 1] = HIBYTE(v63);
          v58[v13] = BYTE1(v63);
          v59[1] = v62.i8[2];
          *v59 = v62.i8[0];
          v59[v13 + 1] = v62.i8[3];
          v59[v13] = v62.i8[1];
          v60[1] = BYTE2(v64);
          *v60 = v64;
          v60[v13 + 1] = HIBYTE(v64);
          v57 += 2;
          v60[v13] = BYTE1(v64);
          v58 += 2;
          v59 += 2;
          v60 += 2;
          --v20;
        }

        while (v20);
      }

      v9 += a4;
      v10 += a5;
      ++v12;
    }

    while (v12 != HIDWORD(a3));
    v9 = *result;
  }

  *result = v9 + 16 * a3;
  *a2 += 8 * a3;
  return result;
}

uint64_t RowCompressor::WalkBackStream(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[22] + a2[24] + a2[18] - a2[20];
  result = *(v2 + 64);
  *(v2 + 56) -= v3;
  v5 = *(result + 32);
  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = *(result + 32);
  }

  *(result + 32) = v5 - v6;
  v7 = v3 - v6;
  if (v3 != v6)
  {
    do
    {
      *(v2 + 64) = *(result + 16);
      if (atomic_fetch_add((result + 8), 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        (**result)(result);
      }

      result = *(v2 + 64);
      v8 = *(result + 32);
      if (v8 >= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = *(result + 32);
      }

      *(result + 32) = v8 - v9;
      v7 -= v9;
    }

    while (v7);
  }

  return result;
}

void RowCompressor::DoDifferencing(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 200);
  if (v2)
  {
    v3 = *(a2 + 168);
    if (v2 < 0x21)
    {
      v18 = *v3;
    }

    else
    {
      v4 = *v3;
      v5 = *(v3 + 16);
      if (v2 >= 0x60)
      {
        v6.i64[0] = 0x8080808080808080;
        v6.i64[1] = 0x8080808080808080;
        do
        {
          v7 = v4;
          v8 = *(v3 + 64);
          v3 += 64;
          v4 = v8;
          v9 = veorq_s8(vsubq_s8(*(v3 - 47), v5), v6);
          v10 = veorq_s8(vsubq_s8(*(v3 - 15), *(v3 - 16)), v6);
          v11 = veorq_s8(vsubq_s8(*(v3 - 31), *(v3 - 32)), v6);
          v5 = *(v3 + 16);
          *(v3 - 63) = veorq_s8(vsubq_s8(*(v3 - 63), v7), v6);
          *(v3 - 47) = v9;
          *(v3 - 31) = v11;
          *(v3 - 15) = v10;
          v2 -= 64;
        }

        while (v2 > 0x5F);
        if (v2 < 0x21)
        {
          v18 = v4.i8[0];
          v20 = 31;
LABEL_13:
          v21 = (v3 + 1);
          do
          {
            v22 = *v21;
            *v21 = (*v21 - v18) ^ 0x80;
            ++v21;
            v18 = v22;
            --v20;
          }

          while (v20);
          return;
        }
      }

      v12 = (v3 + 1);
      v13.i64[0] = 0x8080808080808080;
      v13.i64[1] = 0x8080808080808080;
      v14 = veorq_s8(vsubq_s8(*(v3 + 1), v4), v13);
      v15 = veorq_s8(vsubq_s8(*(v3 + 17), v5), v13);
      if (v2 >= 0x41)
      {
        do
        {
          v16 = *(v3 + 32);
          v17 = *(v3 + 48);
          v3 += 32;
          *(v3 - 31) = v14;
          *(v3 - 15) = v15;
          v2 -= 32;
          v15 = veorq_s8(vsubq_s8(*(v3 + 17), v17), v13);
          v14 = veorq_s8(vsubq_s8(*(v3 + 1), v16), v13);
        }

        while (v2 > 0x40);
        v12 = (v3 + 1);
      }

      v19 = *(v3 + 32);
      v3 += 32;
      v18 = v19;
      v2 -= 32;
      *v12 = v14;
      v12[1] = v15;
    }

    v20 = v2 - 1;
    if (!v20)
    {
      return;
    }

    goto LABEL_13;
  }
}

uint64_t ZipCompressor::CompressData(uint64_t a1, uint64_t a2)
{
  RowCompressor::DoDifferencing(a1, a2);
  v3 = *(a2 + 136);
  v4 = *(a2 + 144);
  v5 = *(a2 + 168);
  *(a2 + 160) = 0;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = 0;
    v8 = 8 * (v6 * *(a2 + 52));
    do
    {
      v9 = v3;
      if ((*(a2 + 113) & 0x10) != 0)
      {
        *v3 = *(a2 + 116);
        v3 += 4;
      }

      CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(v3, *(a2 + 104), v4);
      v11 = CompressedDataPtr;
      v12 = v9 - CompressedDataPtr + v4;
      v13 = *(a2 + 200);
      if (v12 >= v13)
      {
        v14 = *(a2 + 200);
      }

      else
      {
        v14 = v9 - CompressedDataPtr + v4;
      }

      v15 = compression_encode_buffer(CompressedDataPtr, v14, v5, v13, 0, 0x505u);
      v16 = v15;
      v17 = *(a2 + 200);
      if (v15)
      {
        v18 = v15 >= v14;
      }

      else
      {
        v18 = 1;
      }

      if (v18 || v15 >= v17)
      {
        DeinterleaveChannels(v11, *(a2 + 184), a2);
        v16 = v17;
      }

      v20 = (v16 + v11);
      v4 = v12 - v16;
      AXRChunkHeader::Init(v3, *(a2 + 104), v7, *(a2 + 52), *(a2 + 56), *(a2 + 60), *(a2 + 44), v16);
      v21 = *(a2 + 120);
      *(*(a2 + 128) + v8) = v21;
      *(a2 + 120) = v20 - v9 + v21;
      ++v7;
      v8 += 8;
      v3 = v20;
    }

    while (v7 < *(a2 + 8));
    v3 = *(a2 + 136);
  }

  else
  {
    v20 = v3;
  }

  *(a2 + 160) = v20 - v3;
  return 0;
}

uint64_t DeinterleaveChannels(uint64_t result, uint64_t a2, uint64_t a3)
{
  v16[4] = *MEMORY[0x29EDCA608];
  v3 = *(a3 + 88);
  if (v3)
  {
    v6 = result;
    v7 = 0;
    do
    {
      v8 = v3[2];
      if ((v8 - 1) > 3)
      {
        break;
      }

      size = axr_type_get_size(*(v3 + 14));
      v10 = size;
      v11 = (v3[1] + 16 * v7 + 12);
      v12 = size * *(a3 + 32);
      v13 = v12 * v7;
      v14 = v8;
      do
      {
        v15 = *v11;
        v11 += 4;
        v16[v15] = v13;
        v13 += v12;
        --v14;
      }

      while (v14);
      result = (*(&DeinterleaveChannels(void *,void const*,unsigned long,CompressionInfo const&)::kDeinterleaveFunctions[4 * (size >> 2) - 1] + v8))(v6, a2, a3 + 32, v16);
      v7 += v8;
      a2 += v10 * v8 * (*(a3 + 32) * *(a3 + 36));
      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

_DWORD *AXRChunkHeader::Init(_DWORD *result, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (a2 <= 0)
  {
    if (!a2)
    {
      *result = a7 * a4;
      v8 = 1;
      goto LABEL_6;
    }

    if (a2 == 0x80000000)
    {
LABEL_11:
      __break(1u);
    }
  }

  else
  {
    if (a2 == 1)
    {
      *result = a3;
      result[1] = a4;
      v8 = 4;
      result[2] = a5;
      result[3] = a6;
LABEL_6:
      result[v8] = a8;
      return result;
    }

    if ((a2 - 2) < 3)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t NoneCompressor::CompressData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 136);
  v3 = *(a2 + 144);
  *(a2 + 160) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = 0;
    v7 = 8 * (v5 * *(a2 + 52));
    do
    {
      v8 = v4;
      if ((*(a2 + 113) & 0x10) != 0)
      {
        *v4 = *(a2 + 116);
        v4 += 4;
      }

      CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(v4, *(a2 + 104), v3);
      v10 = *(a2 + 200);
      DeinterleaveChannels(CompressedDataPtr, *(a2 + 184), a2);
      v11 = (v10 + CompressedDataPtr);
      v3 = &v8[v3] - v11;
      AXRChunkHeader::Init(v4, *(a2 + 104), v6, *(a2 + 52), *(a2 + 56), *(a2 + 60), *(a2 + 44), v10);
      v12 = *(a2 + 120);
      *(*(a2 + 128) + v7) = v12;
      *(a2 + 120) = v11 - v8 + v12;
      ++v6;
      v7 += 8;
      v4 = v11;
    }

    while (v6 < *(a2 + 8));
    v4 = *(a2 + 136);
  }

  else
  {
    v11 = v4;
  }

  *(a2 + 160) = v11 - v4;
  return 0;
}

uint64_t ConvertToPlanar<unsigned short,2>::Do(uint64_t result, __int16 *a2, unsigned int *a3, uint64_t *a4)
{
  v4 = a3[1];
  if (v4)
  {
    v5 = 0;
    v6 = *a3;
    v7 = *a4;
    v8 = a4[1];
    do
    {
      if (v6)
      {
        v9 = 0;
        v10 = result;
        do
        {
          v11 = 1;
          v12 = v7;
          do
          {
            v13 = v11;
            v14 = *a2++;
            *(v12 + v10) = v14;
            v12 = v8;
            v11 = 0;
          }

          while ((v13 & 1) != 0);
          v10 += 2;
          ++v9;
        }

        while (v9 != v6);
      }

      result += 4 * v6;
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t ConvertToPlanar<unsigned short,3>::Do(uint64_t result, __int16 *a2, unsigned int *a3, __int128 *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v4 = a3[1];
  v11 = *a4;
  v12 = *(a4 + 2);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5)
      {
        v7 = 0;
        v8 = result;
        do
        {
          for (j = 0; j != 24; j += 8)
          {
            v10 = *a2++;
            *(*(&v11 + j) + v8) = v10;
          }

          v8 += 2;
          ++v7;
        }

        while (v7 != v5);
      }

      result += 6 * v5;
    }
  }

  return result;
}

uint64_t ConvertToPlanar<unsigned short,4>::Do(uint64_t result, __int16 *a2, unsigned int *a3, _OWORD *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v4 = a3[1];
  v6 = a4[1];
  v12[0] = *a4;
  v12[1] = v6;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5)
      {
        v8 = 0;
        v9 = result;
        do
        {
          for (j = 0; j != 32; j += 8)
          {
            v11 = *a2++;
            *(*(v12 + j) + v9) = v11;
          }

          v9 += 2;
          ++v8;
        }

        while (v8 != v5);
      }

      result += 8 * v5;
    }
  }

  return result;
}

uint64_t ConvertToPlanar<unsigned int,2>::Do(uint64_t result, int *a2, unsigned int *a3, uint64_t *a4)
{
  v4 = a3[1];
  if (v4)
  {
    v5 = 0;
    v6 = *a3;
    v7 = *a4;
    v8 = a4[1];
    do
    {
      if (v6)
      {
        v9 = 0;
        v10 = result;
        do
        {
          v11 = 1;
          v12 = v7;
          do
          {
            v13 = v11;
            v14 = *a2++;
            *(v12 + v10) = v14;
            v12 = v8;
            v11 = 0;
          }

          while ((v13 & 1) != 0);
          v10 += 4;
          ++v9;
        }

        while (v9 != v6);
      }

      result += 8 * v6;
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t ConvertToPlanar<unsigned int,3>::Do(uint64_t result, int *a2, unsigned int *a3, __int128 *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v4 = a3[1];
  v11 = *a4;
  v12 = *(a4 + 2);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5)
      {
        v7 = 0;
        v8 = result;
        do
        {
          for (j = 0; j != 24; j += 8)
          {
            v10 = *a2++;
            *(*(&v11 + j) + v8) = v10;
          }

          v8 += 4;
          ++v7;
        }

        while (v7 != v5);
      }

      result += 12 * v5;
    }
  }

  return result;
}

uint64_t ConvertToPlanar<unsigned int,4>::Do(uint64_t result, int *a2, unsigned int *a3, _OWORD *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v4 = a3[1];
  v6 = a4[1];
  v12[0] = *a4;
  v12[1] = v6;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5)
      {
        v8 = 0;
        v9 = result;
        do
        {
          for (j = 0; j != 32; j += 8)
          {
            v11 = *a2++;
            *(*(v12 + j) + v9) = v11;
          }

          v9 += 4;
          ++v8;
        }

        while (v8 != v5);
      }

      result += 16 * v5;
    }
  }

  return result;
}

char *axr_introspect_data__Assert_file_exists_and_nonnull(char *result, uint64_t a2)
{
  if (a2)
  {
    lastByte = *result;
  }

  return result;
}

uint64_t axr_introspect_data__Assert_file_header_is_as_big_as_claimed(uint64_t result, unint64_t a2)
{
  if (a2 >= 8)
  {
    lastByte = *(result + 7);
  }

  return result;
}

uint64_t axr_introspect_data__Assert_file_data_is_as_big_as_claimed(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    lastByte = *(result + a2 - 1);
  }

  return result;
}

const char *EncoderLayer::GetEncodedNameForChannel(EncoderLayer *this, unint64_t a2, int a3)
{
  if (*(this + 2) <= a2)
  {
    return "<invalid channel index>";
  }

  v3 = *(this + 1);
  result = *(v3 + 16 * a2);
  if (!result || !*result)
  {
    return GetEXRNameForChannelType(*(v3 + 16 * a2 + 8), a3);
  }

  return result;
}

size_t EncoderLayer::PrintChannels(EncoderLayer *this, char *a2, size_t a3, int a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!*(this + 2))
  {
    return 0;
  }

  if (*(this + 3))
  {
    snprintf(__str, 0x100uLL, "%s.", *(this + 3));
  }

  else
  {
    __str[0] = 0;
  }

  EncodedNameForChannel = EncoderLayer::GetEncodedNameForChannel(this, 0, a4);
  if (*(this + 2) == 1)
  {
    return snprintf(a2, a3, "%s%s", __str, EncodedNameForChannel);
  }

  v8 = snprintf(a2, a3, "{ %s%s", __str, EncodedNameForChannel);
  if (v8 < a3)
  {
    if (*(this + 2) < 2uLL)
    {
LABEL_13:
      v8 += snprintf(&a2[v8], a3 - v8, " } ");
      if (*(this + 2) >= 2uLL)
      {
        v8 += snprintf(&a2[v8], a3 - v8, "\torder: { %d", *(*(this + 1) + 12));
        if (v8 < a3)
        {
          if (*(this + 2) < 2uLL)
          {
LABEL_19:
            v8 += snprintf(&a2[v8], a3 - v8, "}");
          }

          else
          {
            v12 = 1;
            v13 = 28;
            while (1)
            {
              v8 += snprintf(&a2[v8], a3 - v8, ", %d", *(*(this + 1) + v13));
              if (v8 >= a3)
              {
                break;
              }

              ++v12;
              v13 += 16;
              if (v12 >= *(this + 2))
              {
                goto LABEL_19;
              }
            }
          }
        }
      }
    }

    else
    {
      v10 = 1;
      while (1)
      {
        v11 = EncoderLayer::GetEncodedNameForChannel(this, v10, a4);
        v8 += snprintf(&a2[v8], a3 - v8, ", %s%s", __str, v11);
        if (v8 >= a3)
        {
          break;
        }

        if (++v10 >= *(this + 2))
        {
          goto LABEL_13;
        }
      }
    }
  }

  return v8;
}

void EncoderLayer::CreateEncoderLayer(EncoderLayer *this, const char *a2, int a3, int a4, char a5, const axr_channel_type_t *a6, axr_channel_type_t *a7, unint64_t a8, __int128 a9, void (*a10)(unint64_t), unint64_t a11, unint64_t a12, axr_flags_t a13)
{
  if (a8)
  {
    v18 = a2;
    v20 = strlen(this);
    v21 = 0;
    v22 = 0;
    do
    {
      if (a7 && (v23 = *&a7[2 * v22]) != 0)
      {
        v24 = strlen(v23) + 1;
      }

      else
      {
        v24 = 1;
      }

      v21 += v24;
      v22 = (v22 + 1);
    }

    while (a8 != v22);
    v25 = malloc_type_malloc(v20 + 16 * a8 + v21 + 81, 0x10B0040EC9C193FuLL);
    if (v25)
    {
      EncoderLayer::EncoderLayer(v25, this, v18, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    }

    else
    {
      if (GetFlagsOnceToken != -1)
      {
        Part::GetImageSize();
      }

      if (((kDefaultAXRLogFlags | a12) & 2) != 0)
      {
        AXRLogDebug("axr_part_append_layer error: out of memory", v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }
  }
}

uint64_t EncoderLayer::CompressTileRow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v8 = 0;
  while (1)
  {
    v9 = (*(a1 + 32))(a2, v5, *(a4 + 64), *(a4 + 24), *(a1 + 48));
    if (v9 <= 0)
    {
      break;
    }

    a2 += v9;
    v8 += v9;
    v5 -= v9;
    if (!v5)
    {
      return v8;
    }
  }

  if (!v8)
  {
    return v9;
  }

  return v8;
}

void EncoderLayer::EncoderLayer(EncoderLayer *this, const char *a2, axr_type_t a3, int a4, int a5, char a6, const axr_channel_type_t *a7, const char **a8, unint64_t a9, __int128 a10, CGColorSpaceModel a11, unint64_t a12)
{
  *(this + 2) = a9;
  *(this + 2) = a10;
  *(this + 6) = a12;
  *(this + 14) = a3;
  *(this + 15) = a4;
  *(this + 16) = a5;
  *(this + 72) = a6;
  v16 = this + 80;
  *this = 0;
  *(this + 1) = v16;
  bzero(v16, 16 * a9);
  v17 = (*(this + 1) + 16 * *(this + 2));
  *(this + 3) = v17;
  v18 = stpcpy(v17, a2);
  if (*(this + 2))
  {
    v19 = 0;
    v20 = 0;
    do
    {
      ++v18;
      v21 = *(this + 1) + v19;
      *v21 = v18;
      *(v21 + 8) = a7[v20];
      *(v21 + 12) = v20;
      if (a8 && (v22 = a8[v20]) != 0)
      {
        v18 = stpcpy(v18, v22);
      }

      else
      {
        *v18 = 0;
      }

      ++v20;
      v19 += 16;
    }

    while (v20 < *(this + 2));
  }

  *(this + 17) = -1;
  EncoderLayer::SetColorSpaceModel(this, a11);
}

void TileDecoder::TileDecoder(TileDecoder *this, axr_decoder *a2, const Part *a3, uint64_t a4, axr_error_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = &unk_2A1DE96E8;
  *(this + 1) = a4;
  *(this + 2) = a2;
  *(this + 3) = a3;
  v11 = *(a2 + 2);
  *a5 = axr_error_success;
  v13 = *(v11 + 24);
  v12 = *(v11 + 32);
  *(this + 4) = v13;
  *(this + 5) = v12;
  ImageSize = Part::GetImageSize(a3, *(a2 + 11), a4, a4, a5, a6, a7, a8);
  v15 = *(*(this + 3) + 156);
  *(this + 7) = v15;
  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v17 = ImageSize + v16 - 1;
  v18 = HIDWORD(v15);
  if (v17 < ImageSize)
  {
    v19 = (v17 - 0xFFFFFFFF / v16 * v16) / v16 + 0xFFFFFFFF / v16;
  }

  else
  {
    v19 = v17 / v16;
  }

  v20 = *(this + 2);
  v21 = v20[12];
  v22 = v20[13];
  v23 = v20[15];
  v24 = v21 / v16;
  v25 = (v20[14] + v21 - (v20[14] != 0)) / v16;
  *(this + 25) = v19;
  *(this + 26) = v25 - v21 / v16 + 1;
  if (v18 <= 1)
  {
    LODWORD(v18) = 1;
  }

  v26 = v22 / v18;
  *(this + 28) = v24;
  *(this + 29) = v22 / v18;
  v27 = (v23 + v22 - (v23 != 0)) / v18;
  *(this + 27) = v27 - v22 / v18 + 1;
  v28 = malloc_type_calloc(v20[8], 0x10uLL, 0x20040A4A59CD2uLL);
  *(this + 8) = v28;
  if (v28)
  {
    v54 = v25;
    v55 = a5;
    *(this + 18) = 0;
    v34 = *(this + 2);
    v35 = *(v34 + 24);
    if (v35)
    {
      v36 = 0;
      v37 = 0x8000000000000000;
      v38 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v39 = (*(*(this + 2) + 32) + ~v36);
        v28[2 * v39] = v35;
        if (!*(v35 + 24))
        {
          v40 = *v35;
          if ((v40 & 0x80000000) == 0)
          {
            Channel = Part::GetChannel(*(this + 3), *v35, *(this + 1), v29, v30, v31, v32, v33);
            v28 = *(this + 8);
            v28[2 * v39 + 1] = Channel;
            if (v38 >= v40)
            {
              v38 = v40;
            }

            if (v37 <= v40)
            {
              v37 = v40;
            }

            v36 = *(this + 18);
          }
        }

        *(this + 18) = ++v36;
        v35 = *(v35 + 1);
      }

      while (v35);
      v34 = *(this + 2);
    }

    else
    {
      v36 = 0;
      LODWORD(v37) = 0;
      LODWORD(v38) = -1;
    }

    if (v36 == *(v34 + 32))
    {
      *(this + 19) = v38;
      *(this + 20) = v37;
      v42 = *(this + 14);
      v43 = *(this + 15);
      v44 = *(v34 + 44);
      v45 = *(v34 + 48);
      v46 = v45 - v42 * v24;
      v47 = *(a2 + 15);
      v48 = v42 + v42 * v54 - (v45 + *(a2 + 14));
      v49 = *(v34 + 52);
      *(this + 21) = v49 - v43 * v26;
      *(this + 22) = v46;
      *(this + 23) = v48;
      *(this + 24) = v43 + v43 * v27 - (v49 + v47);
      v50 = *(this + 3);
      *(this + 6) = *(v50 + 256);
      *(this + 30) = 0;
      if (v44)
      {
        v51 = 0;
        v52 = *(v50 + 280);
        do
        {
          v53 = *v52++;
          v51 += *v53;
          --v44;
        }

        while (v44);
        *(this + 30) = v51;
      }
    }

    else
    {
      *v55 = axr_error_data_corrupted;
    }
  }

  else
  {
    *a5 = axr_error_insufficient_memory;
  }
}

void TileDecoder::ReadPixelsBlock(TileDecoder *this, unint64_t a2)
{
  v3 = *this;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  TileDecoder::GetThreadTileInfo(v3, a2, &v26);
  if (*(&v26 + 1))
  {
    v4 = v26 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = *(this + 13);
    v5 = *(this + 14);
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 0;
    TileDecoder::GetChannelTileInfo(v3, &v26, v6, v5, &v22);
    if ((v29 + HIDWORD(v28)) < *(v3 + 56) && (DWORD2(v29) + DWORD1(v29)) < *(v3 + 60))
    {
      v8 = *(v3 + 72);
      if (v8)
      {
        v9 = (*(v3 + 64) + 8);
        v10 = *(v3 + 72);
        while (!*v9)
        {
          v9 += 2;
          if (!--v10)
          {
            goto LABEL_11;
          }
        }

        v7.n128_u64[0] = vmin_u32(vmls_s32(*(*(*&(*v9)[5] + 8 * HIDWORD(v29)) + 16), (*v9)[6], *(&v27 + 8)), (*v9)[6]);
      }

      else
      {
LABEL_11:
        v7 = 0uLL;
      }

      v11 = *(this + 3);
      v12 = *(this + 4);
      v13 = *(this + 12);
      v21 = *v12;
      v14 = (*(this + 2) + (v13 * v8 * HIDWORD(v23)) + v11 * v24);
      if (*(this + 60) == 1 || !(*(*v3 + 64))(v3, &v26, v7))
      {
        (*(*v3 + 24))(v20, v3, v12, &v26, &v21);
        if (*(v3 + 72) == 1)
        {
          (*(*v3 + 48))(v3, v20[0], v21, *(v3 + 64), &v26, v14, 0, *(this + 3));
        }

        else
        {
          (*(*v3 + 40))(v3, v20[0], v21, &v26, v6, v5, v14, 0, *(this + 3));
        }

        v18 = v20[0];
        v20[0] = 0;
        if (v18 && v20[1])
        {
          free(v18);
        }
      }

      else
      {
        CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(v26, *(*(v3 + 24) + 208), *(&v26 + 1));
        if (!CompressedDataPtr)
        {
          exception = __cxa_allocate_exception(8uLL);
          *exception = -4;
        }

        if (*(v3 + 72) == 1)
        {
          TileDecoder::ExtractPlane_Uncompressed(v3, CompressedDataPtr, *(&v26 + 1), *(v3 + 64), &v26, v14, v16, *(this + 3));
        }

        else
        {
          TileDecoder::Interleave_Uncompressed(v3, CompressedDataPtr, *(&v26 + 1), &v26, v6, v5, v14, v17, *(this + 3));
        }
      }
    }
  }
}

uint64_t TileDecoder::GetThreadTileInfo@<X0>(TileDecoder *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 25);
  v7 = *(this + 26);
  v8 = a2 / v7;
  v9 = a2 / v7 * v7;
  v10 = a2 % v7;
  v11 = a2 % v7 + *(this + 28);
  v12 = a2 / v7 + *(this + 29);
  v42 = 0;
  v39 = v11 + v12 * v6;
  Chunk = Part::GetChunk(*(this + 3), *(this + 4), *(this + 5), *(*(this + 2) + 44), v39, &v42);
  if (v7 <= a2)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(this + 21);
  }

  if (v8 + 1 == *(this + 27))
  {
    v18 = *(this + 24);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(this + 18);
  v40 = v18;
  v20 = 0;
  if (v19)
  {
    v21 = (*(this + 15) + *(this + 15) * v12 + ~v18);
    v22 = (*(this + 8) + 8);
    do
    {
      v23 = *v22;
      if (*v22)
      {
        v24 = *(*(v23 + 40) + 8 * *(*(this + 2) + 44));
        if (*(v24 + 12) - 1 >= v21)
        {
          v25 = v21;
        }

        else
        {
          v25 = *(v24 + 12) - 1;
        }

        v26 = v24 + 8 * v10;
        if (*(v23 + 104) == 1)
        {
          v27 = (*(v26 + 24) + 8 * v25);
        }

        else
        {
          v28 = (v25 * *(v23 + 108)) >> *(v23 + 112);
          v29 = *(v24 + 20) - 1;
          if (v28 >= v29)
          {
            LODWORD(v28) = v29;
          }

          v27 = (*(v26 + 24) + 8 * v28);
        }

        v30 = (v27[1] + *v27);
        if (v20 <= v30)
        {
          v20 = v30;
        }
      }

      v22 += 2;
      --v19;
    }

    while (v19);
  }

  result = Part::GetImageSize(*(this + 3), *(*(this + 2) + 44), *(this + 1), v13, v14, v15, v16, v17);
  v32 = v42;
  *a3 = Chunk;
  *(a3 + 8) = v32;
  *(a3 + 16) = v20;
  *(a3 + 24) = __PAIR64__(v12, v11);
  *(a3 + 32) = v39;
  if (a2 == v9)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(this + 14) * v10 - *(this + 22);
  }

  *(a3 + 36) = v33;
  if (v7 <= a2)
  {
    v34 = *(this + 15) * v8 - *(this + 21);
  }

  else
  {
    v34 = 0;
  }

  *(a3 + 40) = v34;
  if (a2 == v9)
  {
    v35 = *(this + 22);
  }

  else
  {
    v35 = 0;
  }

  *(a3 + 44) = v35;
  if (v10 + 1 == *(this + 26))
  {
    v36 = *(this + 23);
  }

  else
  {
    v36 = 0;
  }

  *(a3 + 48) = v36;
  *(a3 + 52) = v41;
  v37 = *(*(this + 2) + 44);
  *(a3 + 56) = v40;
  *(a3 + 60) = v37;
  *(a3 + 64) = result;
  return result;
}

uint64_t TileDecoder::ExtractPlane_Uncompressed(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 56);
  v14 = *(a4 + 8);
  v15 = v14[18];
  v44 = 0;
  v45 = 0;
  v47 = 0;
  v46 = 0;
  result = TileDecoder::GetChannelTileInfo(a1, a5, v14[20], v14[26], &v44);
  if (v15 == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = HIDWORD(v46) << v17;
  v19 = (v45 + 1);
  v20 = v19 << v17;
  v21 = v19 - a3;
  v22 = v18 >= v21;
  v23 = v18 - v21;
  if (!v22)
  {
    v23 = 0;
  }

  if (v20 <= a3)
  {
    v24 = HIDWORD(v46) << v17;
  }

  else
  {
    v24 = v23;
  }

  if (v24)
  {
    v25 = *(a1 + 56);
    v27 = *(a5 + 52);
    v26 = *(a5 + 56);
    if ((v26 + v27) < HIDWORD(v25))
    {
      v28 = (*(a5 + 28) * HIDWORD(v13));
      v29 = HIDWORD(v25);
      v30 = *(*(a4 + 8) + 104);
      v31 = v27 + v28;
      do
      {
        v32 = *(a4 + 8);
        v33 = *(*(v32 + 40) + 8 * *(a5 + 60));
        v34 = *(v33 + 12) - 1;
        if (v34 >= v31)
        {
          v34 = v31;
        }

        v35 = v33 + 8 * *(a5 + 24);
        if (*(v32 + 104) == 1)
        {
          v36 = (*(v35 + 24) + 8 * v34);
        }

        else
        {
          v37 = (v34 * *(v32 + 108)) >> *(v32 + 112);
          v38 = *(v33 + 20) - 1;
          if (v37 >= v38)
          {
            LODWORD(v37) = v38;
          }

          v36 = (*(v35 + 24) + 8 * v37);
        }

        v39 = *v36;
        if (HIDWORD(v39))
        {
          v40 = (v44 << v17) + v39;
          if (a3 >= v40)
          {
            if (v24 >= a3 - v40)
            {
              v41 = a3 - v40;
            }

            else
            {
              v41 = v24;
            }

            result = memcpy(a6, (v40 + a2), v41);
            a6 += a8;
            v26 = *(a5 + 56);
          }
        }

        v27 += v30;
        v31 += v30;
      }

      while (v27 + v26 < v29);
    }
  }

  return result;
}

uint64_t TileDecoder::Interleave_Uncompressed(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = 0;
  v38 = 0;
  v40 = 0;
  v39 = 0;
  result = TileDecoder::GetChannelTileInfo(a1, a4, a5, a6, &v37);
  v16 = *(a1 + 64);
  v17 = *(*v16 + 16);
  v18 = HIDWORD(v39);
  v19 = *(a1 + 72);
  if (v19)
  {
    LODWORD(v20) = 0;
    v21 = *(a4 + 24);
    v22 = *(a4 + 52);
    v23 = v16 + 1;
    result = *(a1 + 72);
    do
    {
      v24 = *v23;
      if (*v23)
      {
        v25 = *(*(v24 + 40) + 8 * *(a4 + 60));
        v26 = *(v25 + 12) - 1;
        if (v26 >= (v22 + HIDWORD(v21) * *(a1 + 60)))
        {
          v26 = (v22 + HIDWORD(v21) * *(a1 + 60));
        }

        v27 = v25 + 8 * v21;
        if (*(v24 + 104) == 1)
        {
          v28 = (*(v27 + 24) + 8 * v26);
        }

        else
        {
          v29 = (v26 * *(v24 + 108)) >> *(v24 + 112);
          v30 = *(v25 + 20) - 1;
          if (v29 >= v30)
          {
            LODWORD(v29) = v30;
          }

          v28 = (*(v27 + 24) + 8 * v29);
        }

        v31 = *v28;
        if (v20 <= v31)
        {
          LODWORD(v20) = v31;
        }
      }

      v23 += 2;
      --result;
    }

    while (result);
    v20 = v20;
  }

  else
  {
    v20 = 0;
  }

  v32 = 1;
  if (v17 != 1)
  {
    v32 = 2;
  }

  v33 = ((v38 + 1) << v32) + v20;
  v34 = (v33 - a3) >> v32;
  v35 = HIDWORD(v39) >= v34;
  v36 = HIDWORD(v39) - v34;
  if (!v35)
  {
    v36 = 0;
  }

  if (v33 > a3)
  {
    v18 = v36;
  }

  if (v18)
  {
    if (v19 == 4)
    {
      return (*(&TileDecoder::Interleave_Uncompressed(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::Read4 + ((8 * (v17 != 1)) | (16 * (v16[1] != 0)) | (32 * (v16[3] != 0)) | ((v16[5] != 0) << 6) | ((v16[7] != 0) << 7))))(a2, a3, a1, a4, v16, (v16 + 2), (v16 + 4), (v16 + 6), v37, v18, a6, a7, a9);
    }

    else if (v19 == 2)
    {
      return (*(TileDecoder::Interleave_Uncompressed(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::Read2 + ((8 * (v17 != 1)) | (16 * (v16[1] != 0)) | (32 * (v16[3] != 0)))))(a2, a3, a1, a4, v16, (v16 + 2), v37, v18, a6, a7, a9);
    }
  }

  return result;
}

void TileDecoder::ReadPixelsBlockGrayToRGBA(TileDecoder *this, unint64_t a2)
{
  v3 = *this;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  TileDecoder::GetThreadTileInfo(v3, a2, v27);
  if (*(&v27[0] + 1))
  {
    v4 = *&v27[0] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(this + 13);
    v6 = *(this + 14);
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0;
    TileDecoder::GetChannelTileInfo(v3, v27, v5, v6, &v23);
    if ((v29 + HIDWORD(v28)) < *(v3 + 56) && (DWORD2(v29) + DWORD1(v29)) < *(v3 + 60))
    {
      v7 = *(this + 12);
      v8 = HIDWORD(v24);
      v9 = v25;
      v10 = *(this + 5);
      v22 = **(this + 4);
      if (*(this + 60) == 1)
      {
        v20 = 0;
        v21 = 0;
      }

      else
      {
        (*(*v3 + 24))(&v20, v3);
      }

      v11 = *(v3 + 72);
      v12 = (v8 * v7 * v11);
      v13 = *(this + 2) + *(this + 3) * v9;
      if (v11 == 1)
      {
        (*(*v3 + 48))(v3, v20, v22, *(v3 + 64), v27, v13 + v12, 0);
        v14 = *(this + 3);
        v15 = *(*(v3 + 64) + 8);
        if (v7 == 2)
        {
          convertYtoYYYA<unsigned short>(v13 + v12, v14, v27, v3, v15, v10);
        }

        else
        {
          convertYtoYYYA<unsigned int>(v13 + v12, v14, v27, v3, v15, v10);
        }
      }

      else
      {
        (*(*v3 + 40))(v3, v20, v22, v27, v5, v6, v13 + v12, 0, *(this + 3));
        v17 = *(this + 3);
        v18 = *(*(v3 + 64) + 8);
        if (v7 == 2)
        {
          convertYAtoYYYA<unsigned short>(v13 + v12, v17, v27, v3, v18);
        }

        else
        {
          v16.n128_f64[0] = v10;
          convertYAtoYYYA<unsigned int>(v13 + v12, v17, v27, v3, v18, v16);
        }
      }

      v19 = v20;
      v20 = 0;
      if (v19)
      {
        if (v21)
        {
          free(v19);
        }
      }
    }
  }
}

uint64_t convertYtoYYYA<unsigned short>(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, int32x2_t *a5, double a6)
{
  _D8 = a6;
  v37 = vmin_u32(vmls_s32(*(*(*&a5[5] + 8 * a3[7].u32[1]) + 16), a5[6], a3[3]), a5[6]);
  v38[0] = 0;
  v38[1] = 0;
  v40 = 0;
  v39 = 0;
  result = TileDecoder::GetChannelTileInfo(a4, a3, a5[10].u32[0], a5[13].u32[0], v38);
  if (a2 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = -a2;
  }

  v13 = v12 >> 3;
  if (v13 >= HIDWORD(v39))
  {
    v13 = HIDWORD(v39);
  }

  HIWORD(_S0) = v37.i16[1];
  v15 = (a3[3].i32[1] * v37.i32[1]);
  v16 = v15 + v37.u32[1];
  v17 = a3[7].u32[0];
  _CF = v16 >= v17;
  v19 = v16 - v17;
  if (!_CF)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = -6;
  }

  v20 = a3[6].u32[1] + v15;
  if (v20 < v19)
  {
    __asm { FCVT            H0, D8 }

    v24 = 8 * v13;
    v25 = vdupq_n_s16(_S0);
    do
    {
      v26 = a1 + 2 * v13;
      v27 = (a1 + v24);
      if (v13 < 8)
      {
        v29 = v13;
      }

      else
      {
        v28 = (a1 + v24);
        v29 = v13;
        do
        {
          v30 = *(v26 - 16);
          v26 -= 16;
          v11 = v30;
          v27 = v28 - 32;
          v29 -= 8;
          v42.val[1] = vzip1q_s16(v30, v25);
          v43.val[1] = vzip2q_s16(v30, v25);
          v43.val[0] = vzip2q_s16(v11, v11);
          v42.val[0] = vzip1q_s16(v11, v11);
          vst2q_s16(v27, v42);
          v31 = v28 - 16;
          vst2q_s16(v31, v43);
          v28 = v27;
        }

        while (v29 > 7);
      }

      if (v29 >= 2)
      {
        do
        {
          v32 = *(v26 - 4);
          v26 -= 4;
          v11.i32[0] = v32;
          v27 -= 8;
          v29 -= 2;
          v33 = vzip1_s16(*v11.i8, 0);
          v34 = vuzp1_s16(v33, v33);
          v41.val[1] = vzip1_s16(v34, *v25.i8);
          v41.val[0] = vzip1_s16(v34, *v11.i8);
          vst2_s16(v27, v41);
        }

        while (v29 > 1);
      }

      if (v29)
      {
        v35 = *(v26 - 2);
        *(v27 - 4) = v35;
        *(v27 - 3) = v35;
        *(v27 - 2) = v35;
        *(v27 - 1) = _S0;
      }

      a1 += a2;
      ++v20;
    }

    while (v20 != v19);
  }

  return result;
}

uint64_t convertYtoYYYA<unsigned int>(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, int32x2_t *a5, double a6)
{
  v36 = vmin_u32(vmls_s32(*(*(a5[40] + 8 * a3[60]) + 16), a5[48], a3[24]), a5[48]).u32[1];
  v37[0] = 0;
  v37[1] = 0;
  v39 = 0;
  v38 = 0;
  result = TileDecoder::GetChannelTileInfo(a4, a3, a5[10].u32[0], a5[13].u32[0], v37);
  if (a2 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = -a2;
  }

  v13 = v12 >> 4;
  if (v13 >= HIDWORD(v38))
  {
    v13 = HIDWORD(v38);
  }

  v14 = a3[3].i32[1] * v36;
  v15 = v14 + v36;
  v16 = a3[7].u32[0];
  v17 = v15 >= v16;
  v18 = v15 - v16;
  if (!v17)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = -6;
  }

  v19 = a3[6].u32[1] + v14;
  if (v19 < v18)
  {
    v20 = a6;
    v21 = 16 * v13;
    v22 = vdupq_n_s32(LODWORD(v20));
    do
    {
      v23 = a1 + 4 * v13;
      v24 = (a1 + v21);
      if (v13 < 8)
      {
        v26 = v13;
      }

      else
      {
        v25 = (a1 + v21);
        v26 = v13;
        do
        {
          v11 = *(v23 - 32);
          v27 = *(v23 - 16);
          v23 -= 32;
          v24 = v25 - 32;
          v26 -= 8;
          v40.val[1] = vzip1q_s32(v11, v22);
          v42.val[1] = vzip2q_s32(v11, v22);
          v43.val[1] = vzip1q_s32(v27, v22);
          v44.val[1] = vzip2q_s32(v27, v22);
          v44.val[0] = vzip2q_s32(v27, v27);
          v43.val[0] = vzip1q_s32(v27, v27);
          v40.val[0] = vzip1q_s32(v11, v11);
          vst2q_f32(v24, v40);
          v42.val[0] = vzip2q_s32(v11, v11);
          v28 = v25 - 24;
          vst2q_f32(v28, v42);
          v29 = v25 - 16;
          vst2q_f32(v29, v43);
          v30 = v25 - 8;
          vst2q_f32(v30, v44);
          v25 = v24;
        }

        while (v26 > 7);
      }

      if (v26 >= 2)
      {
        do
        {
          v31 = *(v23 - 8);
          v23 -= 8;
          v11.i64[0] = v31;
          v24 -= 8;
          v26 -= 2;
          v32 = vzip1q_s32(v11, 0);
          v33 = vuzp1q_s32(v32, v32);
          v41.val[1] = vzip1q_s32(v33, v22);
          v41.val[0] = vzip1q_s32(v33, v11);
          vst2q_f32(v24, v41);
        }

        while (v26 > 1);
      }

      if (v26)
      {
        v34 = *(v23 - 4);
        *(v24 - 4) = v34;
        *(v24 - 3) = v34;
        *(v24 - 2) = v34;
        *(v24 - 1) = v20;
      }

      a1 += a2;
      ++v19;
    }

    while (v19 != v18);
  }

  return result;
}

uint64_t convertYAtoYYYA<unsigned short>(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, int32x2_t *a5)
{
  v27 = vmin_u32(vmls_s32(*(*(a5[40] + 8 * a3[60]) + 16), a5[48], a3[24]), a5[48]).u32[1];
  v28[0] = 0;
  v28[1] = 0;
  v30 = 0;
  v29 = 0;
  result = TileDecoder::GetChannelTileInfo(a4, a3, a5[10].u32[0], a5[13].u32[0], v28);
  if (a2 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = -a2;
  }

  v10 = v9 >> 3;
  if (v10 >= HIDWORD(v29))
  {
    v10 = HIDWORD(v29);
  }

  v11 = a3[3].i32[1] * v27;
  v12 = v11 + v27;
  v13 = a3[7].u32[0];
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (!v14)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = -6;
  }

  v16 = a3[6].u32[1] + v11;
  if (v16 < v15)
  {
    v17 = 8 * v10;
    do
    {
      v18 = a1 + 4 * v10;
      v19 = (a1 + v17);
      if (v10 < 8)
      {
        v21 = v10;
      }

      else
      {
        v20 = (a1 + v17);
        v21 = v10;
        do
        {
          v32.val[1] = *(v18 - 32);
          v33.val[1] = *(v18 - 16);
          v18 -= 32;
          v19 = v20 - 32;
          v21 -= 8;
          v33.val[0] = vtrn1q_s16(v33.val[1], v33.val[1]);
          v32.val[0] = vtrn1q_s16(v32.val[1], v32.val[1]);
          vst2q_s16(v19, v32);
          v22 = v20 - 16;
          vst2q_s16(v22, v33);
          v20 = v19;
        }

        while (v21 > 7);
      }

      if (v21 >= 2)
      {
        do
        {
          v23 = *(v18 - 8);
          v18 -= 8;
          v31.val[1] = v23;
          v19 -= 8;
          v21 -= 2;
          v31.val[0] = vtrn1_s16(v31.val[1], v31.val[1]);
          vst2_s16(v19, v31);
        }

        while (v21 > 1);
      }

      if (v21)
      {
        v24 = *(v18 - 4);
        v25 = *(v18 - 2);
        *(v19 - 4) = v24;
        *(v19 - 3) = v24;
        *(v19 - 2) = v24;
        *(v19 - 1) = v25;
      }

      a1 += a2;
      ++v16;
    }

    while (v16 != v15);
  }

  return result;
}

uint64_t convertYAtoYYYA<unsigned int>(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, int32x2_t *a5, __n128 a6)
{
  a6.n128_u64[0] = vmin_u32(vmls_s32(*(*(*&a5[5] + 8 * a3[7].u32[1]) + 16), a5[6], a3[3]), a5[6]);
  v32 = a6;
  v33[0] = 0;
  v33[1] = 0;
  v35 = 0;
  v34 = 0;
  result = TileDecoder::GetChannelTileInfo(a4, a3, a5[10].u32[0], a5[13].u32[0], v33);
  if (a2 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = -a2;
  }

  v11 = v10 >> 4;
  if (v11 >= HIDWORD(v34))
  {
    v11 = HIDWORD(v34);
  }

  v12.i64[1] = v32.n128_i64[1];
  v13 = a3[3].i32[1] * v32.n128_u32[1];
  v14 = v13 + v32.n128_u32[1];
  v15 = a3[7].u32[0];
  v16 = v14 >= v15;
  v17 = v14 - v15;
  if (!v16)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = -6;
  }

  v18 = a3[6].u32[1] + v13;
  if (v18 < v17)
  {
    v19 = 16 * v11;
    do
    {
      v20 = a1 + 8 * v11;
      v21 = (a1 + v19);
      if (v11 < 8)
      {
        v23 = v11;
      }

      else
      {
        v22 = (a1 + v19);
        v23 = v11;
        do
        {
          v24 = *(v20 - 64);
          v36.val[1] = *(v20 - 48);
          v20 -= 64;
          v21 = v22 - 32;
          v23 -= 8;
          v37.val[1] = *(v20 + 32);
          v38.val[1] = *(v20 + 48);
          v38.val[0] = vtrn1q_s32(v38.val[1], v38.val[1]);
          v37.val[0] = vtrn1q_s32(v37.val[1], v37.val[1]);
          v12 = vtrn1q_s32(v24, v24);
          vst2q_f32(v21, *v12.i8);
          v36.val[0] = vtrn1q_s32(v36.val[1], v36.val[1]);
          v25 = v22 - 24;
          vst2q_f32(v25, v36);
          v26 = v22 - 16;
          vst2q_f32(v26, v37);
          v27 = v22 - 8;
          vst2q_f32(v27, v38);
          v22 = v21;
        }

        while (v23 > 7);
      }

      if (v23 >= 2)
      {
        do
        {
          v28 = *(v20 - 16);
          v20 -= 16;
          v29 = v28;
          v21 -= 8;
          v23 -= 2;
          v12 = vtrn1q_s32(v29, v29);
          vst2q_f32(v21, *v12.i8);
        }

        while (v23 > 1);
      }

      if (v23)
      {
        v12.i64[0] = *(v20 - 8);
        v30 = vzip1q_s32(v12, v12);
        v30.i32[2] = v12.i32[0];
        *(v21 - 1) = v30;
      }

      a1 += a2;
      ++v18;
    }

    while (v18 != v17);
  }

  return result;
}

unint64_t TileDecoder::ReadPixels(TileDecoder *this, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(*this + 32))(this, *(this + 6));
  v11[1] = 0;
  result = TileDecoder::MakeReadPixelsArgs(this, a4, a5, &v12, 0, v11, v8, v9, 0.0);
  if (!result)
  {
    return LaunchBlocks<ReadPixelsArgs>(TileDecoder::ReadPixelsBlock, v11, (*(this + 26) * *(this + 27)), *(this + 1));
  }

  return result;
}

uint64_t TileDecoder::MakeReadPixelsArgs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v9 = *(a1 + 72);
  if (!v9)
  {
LABEL_5:
    v13 = *(a1 + 8);
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v13) & 2) != 0)
    {
      AXRLogError("All channels are constant. In this case, AppleEXR doesn't have a sample type to use to create the pixel.", a2, a3, a4, a5, a6, a7, a8, v26);
    }

    return -1;
  }

  v10 = *(a1 + 64);
  v11 = v10 + 8;
  v12 = *(a1 + 72);
  while (!*v11)
  {
    v11 += 16;
    if (!--v12)
    {
      goto LABEL_5;
    }
  }

  v15 = 0;
  v16 = 0;
  v17 = *(*v11 + 72);
  v19 = *(v10 + 8);
  v18 = (v10 + 8);
  v20 = v19 == 0;
  do
  {
    v21 = *v18;
    if (!*v18)
    {
      goto LABEL_32;
    }

    if (v21[18] != v17)
    {
      TileDecoder::MakeReadPixelsArgs(a1, &v27, a3, a4, a5, a6, a7, a8);
      return v27;
    }

    v22 = v21[20];
    if (v15)
    {
      if (a5)
      {
        if (v15 >= v22)
        {
          v15 = v22;
        }

        else
        {
          v15 = v15;
        }

        v23 = v21[26];
        if (!v16)
        {
LABEL_29:
          v20 = 0;
          v16 = v23;
          goto LABEL_32;
        }

        v22 = v15;
LABEL_22:
        v20 = 0;
        if (v16 >= v23)
        {
          v16 = v23;
        }

        goto LABEL_31;
      }

      if (v22 != v15)
      {
        TileDecoder::MakeReadPixelsArgs(a1, &v27, a3, a4, a5, a6, a7, a8);
        return v27;
      }

      v23 = v21[26];
      if (!v16)
      {
        goto LABEL_29;
      }

      v22 = v15;
    }

    else
    {
      v23 = v21[26];
      if (!v16)
      {
        v20 = 0;
        v16 = v23;
        goto LABEL_31;
      }

      if (a5)
      {
        goto LABEL_22;
      }
    }

    if (v23 != v16)
    {
      TileDecoder::MakeReadPixelsArgs(a1, &v27, a3, a4, a5, a6, a7, a8);
      return v27;
    }

    v20 = 0;
LABEL_31:
    v15 = v22;
LABEL_32:
    v18 += 2;
    --v9;
  }

  while (v9);
  if (*(*(a1 + 24) + 72) == 1 && (*(a1 + 8) & 8) == 0)
  {
    a2 += (*(*(a1 + 16) + 60) - 1) * a3;
    a3 = -a3;
  }

  v14 = 0;
  *a6 = a1;
  atomic_store(0, (a6 + 8));
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a9;
  if (v17 == 1)
  {
    v24 = 2;
  }

  else
  {
    v24 = 4;
  }

  *(a6 + 48) = v24;
  *(a6 + 52) = v15;
  *(a6 + 56) = v16;
  *(a6 + 60) = v20;
  return v14;
}

unint64_t LaunchBlocks<ReadPixelsArgs>(void (__cdecl *a1)(void *, size_t), unint64_t *a2, unint64_t a3, char a4)
{
  if ((a4 & 4) != 0)
  {
    goto LABEL_18;
  }

  v8 = *a2;
  v9 = *(*a2 + 64);
  if (v9)
  {
    v30 = *(*v9 + 16) == 1;
    v10 = 4;
    if (v30)
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 2;
  }

  v11 = v10 * v8[14] * v8[15] * v8[18];
  v12 = v8[26];
  v13 = v8[27];
  v14 = (*(*v8 + 16))(v8);
  if (v11 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11;
  }

  v16 = v14 + v15 - 1;
  if (v16 < v14)
  {
    (LaunchBlocks<ReadPixelsArgs>)();
    v17 = context[0];
  }

  else
  {
    v17 = v16 / v15;
  }

  if (v17 >= v13 * v12)
  {
    v17 = v13 * v12;
  }

  v18 = v17 <= 1 ? 1 : v17;
  if (v17 <= 1)
  {
LABEL_18:
    v19 = qos_class_self();
    global_queue = dispatch_get_global_queue(v19, 0);
    if ((a4 & 4) == 0 && a3 >= 2)
    {
      v21 = global_queue;
      if (global_queue)
      {
        v22 = a3;
        v23 = a2;
        v24 = a1;
LABEL_43:
        dispatch_apply_f(v22, v21, v23, v24);
        return atomic_load(a2 + 1);
      }
    }

    if (a3)
    {
      v25 = 0;
      do
      {
        (a1)(a2, v25++);
      }

      while (a3 != v25);
    }
  }

  else
  {
    context[0] = a1;
    context[1] = a2;
    context[2] = v18;
    context[3] = a3;
    v26 = v18 + a3 - 1;
    if (v26 < a3)
    {
      LaunchBlocks<ReadPixelsArgs>(v18);
      v27 = context[4];
    }

    else
    {
      v27 = v26 / v18;
    }

    v28 = qos_class_self();
    v29 = dispatch_get_global_queue(v28, 0);
    v30 = v27 < 2 || v29 == 0;
    if (!v30)
    {
      v21 = v29;
      v24 = DoAggregateBlock<ReadPixelsArgs>;
      v23 = context;
      v22 = v27;
      goto LABEL_43;
    }

    if (v27)
    {
      v31 = 0;
      v32 = 0;
      v33 = a3;
      do
      {
        if (v18 >= v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = v18;
        }

        if (v18 * v32 != a3)
        {
          v35 = v31;
          do
          {
            (a1)(a2, v35++);
            --v34;
          }

          while (v34);
        }

        ++v32;
        v33 -= v18;
        v31 += v18;
      }

      while (v32 != v27);
    }
  }

  return atomic_load(a2 + 1);
}

unint64_t TileDecoder::ReadGrayscaleRGBAPixels(TileDecoder *this, double a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*this + 32))(this, *(this + 6));
  v11[1] = 0;
  result = TileDecoder::MakeReadPixelsArgs(this, a3, a4, &v12, 0, v11, v8, v9, a2);
  if (!result)
  {
    return LaunchBlocks<ReadPixelsArgs>(TileDecoder::ReadPixelsBlockGrayToRGBA, v11, (*(this + 26) * *(this + 27)), *(this + 1));
  }

  return result;
}

void TileDecoder::ReadYccBlock(TileDecoder *this, unint64_t a2)
{
  if (!this)
  {
    return;
  }

  v3 = *this;
  v4 = *(*this + 8);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  TileDecoder::GetThreadTileInfo(v3, a2, &v75);
  if (!*(&v75 + 1) || !v75 || (v78 + HIDWORD(v77)) >= *(v3 + 56))
  {
    return;
  }

  v13 = DWORD2(v78) + DWORD1(v78);
  v14 = *(v3 + 60);
  v15 = DWORD2(v78) + DWORD1(v78) >= v14 ? 0 : DWORD1(v77);
  v16 = v13 >= v14 ? 0 : DWORD2(v77);
  if (v13 >= v14)
  {
    return;
  }

  v17 = *(this + 24);
  v18 = *(this + 25);
  v19 = v17[18];
  if (v19)
  {
    v20 = 8;
    while (!*(*(v3 + 64) + v20))
    {
      v20 += 16;
      if (!--v19)
      {
        goto LABEL_16;
      }
    }

    v12.n128_u64[0] = vmin_u32(vmls_s32(*(*(*(*(*(v17 + 8) + v20) + 40) + 8 * HIDWORD(v78)) + 16), *(*(*(v17 + 8) + v20) + 48), *(&v76 + 8)), *(*(*(v17 + 8) + v20) + 48));
  }

  else
  {
LABEL_16:
    v12 = 0uLL;
  }

  v21 = v18[18];
  if (!v21)
  {
LABEL_43:
    if (GetFlagsOnceToken != -1)
    {
      AXRLogicalImageList::AXRLogicalImageList();
    }

    if (((kDefaultAXRLogFlags | v4) & 2) != 0)
    {
      AXRLogDebug("Error: chroma x sampling rate must be 1 or 2", v5, v6, v7, v8, v9, v10, v11, v59);
    }

    return;
  }

  v22 = 0;
  v23 = 0;
  v24 = (*(v18 + 8) + 8);
  do
  {
    v25 = *v24;
    if (!*v24)
    {
      goto LABEL_23;
    }

    if (v22)
    {
      if (v23)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v22 = *(v25 + 80);
      if (v23)
      {
        goto LABEL_23;
      }
    }

    v23 = *(v25 + 104);
LABEL_23:
    v24 += 2;
    --v21;
  }

  while (v21);
  if ((v22 - 1) >= 2)
  {
    goto LABEL_43;
  }

  v65 = v12;
  v64 = *(this + 12);
  v60 = *(this + 27);
  v61 = *(this + 26);
  AXRBufferPool::allocate(this + 26, v74);
  AXRBufferPool::allocate(this + 27, v73);
  v70[0] = 0;
  v70[1] = 0;
  v72 = 0;
  v71 = 0;
  TileDecoder::GetChannelTileInfo(v18, &v75, v22, v23, v70);
  v26 = 0;
  v27 = 0;
  v28 = v17[14];
  if (v78 + HIDWORD(v77) < v28)
  {
    v29 = v17[15];
    if (DWORD2(v78) + DWORD1(v78) < v29)
    {
      v26 = ~v78 - HIDWORD(v77) + v28 + 1;
    }

    else
    {
      v26 = 0;
    }

    if (DWORD2(v78) + DWORD1(v78) < v29)
    {
      v27 = ~DWORD2(v78) - DWORD1(v78) + v29 + 1;
    }

    else
    {
      v27 = 0;
    }
  }

  v30 = v17[18] * v26;
  v31 = v65;
  if ((v30 & 0xFFFFFFFF00000000) != 0 || (v32 = *(this + 12), v33 = v32 * v30, (v33 & 0xFFFFFFFF00000000) != 0))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = -6;
  }

  v62 = v27;
  v63 = v26;
  v34 = HIDWORD(v71) * v18[18];
  if ((v34 & 0xFFFFFFFF00000000) != 0 || (v35 = v34 * v32, (v35 & 0xFFFFFFFF00000000) != 0))
  {
    v57 = __cxa_allocate_exception(8uLL);
    *v57 = -6;
  }

  v66 = v33;
  if ((*(*v17 + 64))(v17, &v75, v31))
  {
    CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(v75, *(*(v17 + 3) + 208), *(&v75 + 1));
    if (!CompressedDataPtr)
    {
      v58 = __cxa_allocate_exception(8uLL);
      *v58 = -4;
    }

    if (*(v3 + 72) == 1)
    {
      TileDecoder::ExtractPlane_Uncompressed(v17, CompressedDataPtr, *(&v75 + 1), *(v3 + 64), &v75, v74[0], v44, v66);
    }

    else
    {
      TileDecoder::Interleave_Uncompressed(v17, CompressedDataPtr, *(&v75 + 1), &v75, 1u, 1u, v74[0], v45, v66);
    }

    TileDecoder::Interleave_Uncompressed(v18, CompressedDataPtr, *(&v75 + 1), &v75, v22, v23, v73[0], v47, v35);
  }

  else
  {
    v69 = **(this + 4);
    if (*(this + 60) == 1)
    {
      v67 = 0;
      v68 = 0;
    }

    else
    {
      (*(**this + 24))(&v67);
    }

    if (v74[0])
    {
      if (v17[18] == 1)
      {
        (*(*v17 + 48))(v17, v67, v69, *(v17 + 8), &v75, v74[0], v61, v33);
      }

      else
      {
        (*(*v17 + 40))(v17, v67, v69, &v75, 1, 1);
      }
    }

    if (v73[0])
    {
      if (v18[18] == 1)
      {
        (*(*v18 + 48))(v18, v67, v69, *(v18 + 8), &v75, v73[0], v60, v35);
      }

      else
      {
        (*(*v18 + 40))(v18, v67, v69, &v75, v22, v23);
      }
    }

    v48 = v67;
    v67 = 0;
    if (v48 && v68)
    {
      free(v48);
    }
  }

  if (v74[0])
  {
    if (v73[0])
    {
      v49 = *(this + 3);
      v50 = (v64 * v15 * *(v3 + 72));
      v51 = *(this + 2) + v49 * v16;
      v52 = *(this + 12);
      v36.i64[0] = *(this + 13);
      v53 = *(this + 29);
      if (v17[18] == 2)
      {
        if (v52 == 2)
        {
          if (v22 == 1)
          {
            YCCAtoRGBA<half,1u>(v74[0], v66, v73[0], v35, (v51 + v50), v49, v53, v63, *v36.i64, v37.n128_f64[0], *v38.i64, *v39.i64, *v40.i64, v41, v62, v23);
          }

          else
          {
            YCCAtoRGBA<half,2u>(v74[0], v66, v73[0], v35, (v51 + v50), v49, v53, v63, *v36.i64, v37, *v38.i64, *v39.i64, *v40.i64, v41, v62, v23);
          }
        }

        else if (v22 == 1)
        {
          YCCAtoRGBA<float,1u>(v74[0], v66, v73[0], v35, (v51 + v50), v49, v53, v63, *v36.i64, v37.n128_f64[0], *v38.i64, *v39.i64, *v40.i64, v41.n128_f64[0], *v42.i64, v43, v62, v23);
        }

        else
        {
          YCCAtoRGBA<float,2u>(v74[0], v66, v73[0], v35, (v51 + v50), v49, v53, v63, *v36.i64, v37.n128_f64[0], *v38.i64, *v39.i64, *v40.i64, v41.n128_f64[0], *v42.i64, v43, v62, v23);
        }
      }

      else if (v52 == 2)
      {
        if (v22 == 1)
        {
          YCCtoRGBA<half,1u>(v74[0], v66, v73[0], v35, (v51 + v50), v49, v53, v63, v36, v37, *v38.i64, *v39.i64, *v40.i64, v41.n128_f64[0], *v42.i8, v62, v23);
        }

        else
        {
          YCCtoRGBA<half,2u>(v74[0], v66, v73[0], v35, (v51 + v50), v49, v53, v63, v36, v37, *v38.i64, v39, *v40.i64, v41.n128_f64[0], *v42.i8, v62, v23);
        }
      }

      else if (v22 == 1)
      {
        YCCtoRGBA<float,1u>(v74[0], v66, v73[0], v35, (v51 + v50), v49, v53, v63, v36, v37, v38, v39, v40, v41, v42, *v43.i8, v62, v23);
      }

      else
      {
        YCCtoRGBA<float,2u>(v74[0], v66, v73[0], v35, (v51 + v50), v49, v53, v63, v36, v37.n128_f64[0], *v38.i64, *v39.i64, *v40.i64, v41.n128_f64[0], v42, v62, v23);
      }

      goto LABEL_80;
    }
  }

  else
  {
LABEL_80:
    v54 = v73[0];
    v73[0] = 0;
    if (v54 && v73[1])
    {
      free(v54);
    }
  }

  v55 = v74[0];
  v74[0] = 0;
  if (v55)
  {
    if (v74[1])
    {
      free(v55);
    }
  }
}

void sub_296B6239C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (a25 && a26)
  {
    free(a25);
  }

  if (a27 && a28)
  {
    free(a27);
  }

  if (a2 == 2)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = 0;
    atomic_compare_exchange_strong((v28 + 8), &v32, *v31);
    __cxa_end_catch();
    JUMPOUT(0x296B62308);
  }

  __clang_call_terminate(a1);
}

void YCCAtoRGBA<half,1u>(const __int16 *a1, uint64_t a2, const __int16 *a3, uint64_t a4, __int16 *a5, uint64_t a6, uint64_t a7, unsigned int a8, double _D0, double a10, double a11, double a12, double a13, __n128 a14, int a15, unsigned int a16)
{
  __asm { FCVT            H0, D0 }

  v57 = _H0;
  if (a15)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v55 = a3;
      v56 = a1;
      v28 = a5;
      v29 = a3;
      v30 = a1;
      v31 = a8;
      v54 = a5;
      if (a8 >= 0x10)
      {
        do
        {
          _YCCAtoRGBA<half,1u,16>(&v56, &v55, &v54, a7);
          v31 -= 16;
        }

        while (v31 > 0xF);
        v29 = v55;
        v30 = v56;
        v28 = v54;
      }

      if (v31 >= 4)
      {
        do
        {
          v32 = *v30;
          v30 += 8;
          v33 = v32;
          v34 = *v29;
          v29 += 8;
          v35 = vcvtq_f32_f16(vmovn_s32(v33));
          v36 = vcvtq_f32_f16(vmovn_s32(v34));
          v37 = vmlaq_f32(v35, vcvtq_f32_f16(*&vuzp2q_s16(v34, v33)), v35);
          v38 = vmlaq_f32(v35, v36, v35);
          v36.i32[0] = *(a7 + 8);
          a14.n128_u32[0] = *a7;
          v39 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v35, v37, a14.n128_u64[0], 0), v38, *v36.i8, 0), COERCE_FLOAT(*(a7 + 4)));
          *v36.i8 = vcvt_f16_f32(v37);
          a14.n128_u64[0] = vcvt_f16_f32(v39);
          *v38.i8 = vcvt_f16_f32(v38);
          v58.val[0] = vzip1q_s16(v36, v38);
          v40 = vuzp2q_s16(v33, v33);
          v58.val[1] = vqtbl2q_s8(*(&a14 - 1), xmmword_296B8F170);
          vst2q_s16(v28, v58);
          v28 += 16;
          v31 -= 4;
        }

        while (v31 > 3);
        v55 = v29;
        v56 = v30;
        v54 = v28;
      }

      if (v31)
      {
        v52 = 0u;
        __dst = 0u;
        memset(__src, 0, sizeof(__src));
        memcpy(&__dst, v30, 2 * v31);
        memcpy(&v52, v29, 4 * v31);
        v41 = vcvtq_f32_f16(vmovn_s32(__dst));
        v42 = vcvtq_f32_f16(vmovn_s32(v52));
        v43 = vmlaq_f32(v41, vcvtq_f32_f16(*&vuzp2q_s16(v52, __dst)), v41);
        v44 = vmlaq_f32(v41, v42, v41);
        v42.i32[0] = *(a7 + 8);
        v45.i32[0] = *a7;
        v46 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v41, v43, v45, 0), v44, *v42.i8, 0), COERCE_FLOAT(*(a7 + 4)));
        *v42.i8 = vcvt_f16_f32(v43);
        *v60.val[1].i8 = vcvt_f16_f32(v46);
        *v44.i8 = vcvt_f16_f32(v44);
        v59.val[0] = vzip1q_s16(v42, v44);
        v60.val[0] = vuzp2q_s16(__dst, __dst);
        v59.val[1] = vqtbl2q_s8(v60, xmmword_296B8F170);
        v47 = __src;
        vst2q_s16(v47, v59);
        memcpy(v28, __src, 8 * v31);
      }

      a5 = (a5 + a6);
      a1 = (a1 + a2);
      if (v27 + 1 < a16)
      {
        ++v27;
      }

      else
      {
        a3 = (a3 + a4);
        v27 = 0;
      }

      ++v26;
    }

    while (v26 != a15);
  }
}

void YCCAtoRGBA<half,2u>(const __int16 *a1, uint64_t a2, int32x4_t *a3, uint64_t a4, __int16 *a5, uint64_t a6, uint64_t a7, unsigned int a8, double _D0, int32x4_t a10, double a11, double a12, double a13, __n128 a14, int a15, unsigned int a16)
{
  __asm { FCVT            H0, D0 }

  v62 = _H0;
  if (a15)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v60 = a3;
      v61 = a1;
      v28 = a5;
      v29 = a3;
      v30 = a1;
      v31 = a8;
      v59 = a5;
      if (a8 >= 0x10)
      {
        do
        {
          _YCCAtoRGBA<half,2u,16>(&v61, &v60, &v59, a7);
          v31 -= 16;
        }

        while (v31 > 0xF);
        v29 = v60;
        v30 = v61;
        v28 = v59;
      }

      if (v31 >= 4)
      {
        do
        {
          v32 = *v30;
          v30 += 8;
          v33 = v32;
          v61 = v30;
          v32.i64[0] = v29->i64[0];
          v29 = (v29 + 8);
          a10.i64[0] = v32.i64[0];
          v34 = vzip1q_s32(a10, a10);
          v35 = vcvtq_f32_f16(vmovn_s32(v33));
          v36 = vextq_s8(v34, v34, 8uLL).u64[0];
          v37 = vcvtq_f32_f16(vuzp1_s16(*v34.i8, v36));
          v38 = vmlaq_f32(v35, vcvtq_f32_f16(vuzp2_s16(*v34.i8, v36)), v35);
          v39 = vmlaq_f32(v35, v37, v35);
          v37.i32[0] = *(a7 + 8);
          a14.n128_u32[0] = *a7;
          v40 = vmlsq_lane_f32(vmlsq_lane_f32(v35, v38, a14.n128_u64[0], 0), v39, *v37.f32, 0);
          v37.i64[0] = *(a7 + 4);
          v60 = v29;
          *v38.i8 = vcvt_f16_f32(v38);
          a14.n128_u64[0] = vcvt_f16_f32(vmulq_n_f32(v40, v37.f32[0]));
          *v39.i8 = vcvt_f16_f32(v39);
          v41 = vuzp2q_s16(v33, v33);
          v42 = vzip1q_s16(v38, v39);
          a10 = vqtbl2q_s8(*(&a14 - 1), xmmword_296B8F170);
          vst2q_s16(v28, *(&a10 - 1));
          v28 += 16;
          v59 = v28;
          v31 -= 4;
        }

        while (v31 > 3);
      }

      if (v31)
      {
        __dst = 0u;
        v57 = 0;
        memset(__src, 0, sizeof(__src));
        memcpy(&__dst, v30, 2 * v31);
        memcpy(&v57, v29, (2 * v31 + 2) & 0xC);
        v43.i64[0] = v57;
        v44 = vzip1q_s32(v43, v43);
        v45 = vcvtq_f32_f16(vmovn_s32(__dst));
        v46 = vextq_s8(v44, v44, 8uLL).u64[0];
        v47 = vcvtq_f32_f16(vuzp1_s16(*v44.i8, v46));
        v48 = vmlaq_f32(v45, vcvtq_f32_f16(vuzp2_s16(*v44.i8, v46)), v45);
        v49 = vmlaq_f32(v45, v47, v45);
        v47.i32[0] = *(a7 + 8);
        v50.i32[0] = *a7;
        v51 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v45, v48, v50, 0), v49, *v47.f32, 0), COERCE_FLOAT(*(a7 + 4)));
        *v48.i8 = vcvt_f16_f32(v48);
        *v64.val[1].i8 = vcvt_f16_f32(v51);
        *v49.i8 = vcvt_f16_f32(v49);
        v63.val[0] = vzip1q_s16(v48, v49);
        v64.val[0] = vuzp2q_s16(__dst, __dst);
        v63.val[1] = vqtbl2q_s8(v64, xmmword_296B8F170);
        v52 = __src;
        vst2q_s16(v52, v63);
        memcpy(v28, __src, 8 * v31);
      }

      a5 = (a5 + a6);
      a1 = (a1 + a2);
      if (v27 + 1 < a16)
      {
        ++v27;
      }

      else
      {
        a3 = (a3 + a4);
        v27 = 0;
      }

      ++v26;
    }

    while (v26 != a15);
  }
}

void YCCAtoRGBA<float,1u>(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7, unsigned int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, int32x4_t a16, int a17, unsigned int a18)
{
  v19 = a9;
  v64 = v19;
  if (a17)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v62 = a3;
      v63 = a1;
      v27 = a5;
      v28 = a3;
      v29 = a1;
      v30 = a8;
      v61 = a5;
      if (a8 >= 0x10)
      {
        do
        {
          _YCCAtoRGBA<float,1u,16>(&v63, &v62, &v61, a7);
          v30 -= 16;
        }

        while (v30 > 0xF);
        v28 = v62;
        v29 = v63;
        v27 = v61;
      }

      if (v30 >= 4)
      {
        do
        {
          v32 = *v29;
          v31 = v29[1];
          v29 += 2;
          v34 = *v28;
          v33 = v28[1];
          v28 += 2;
          v35 = vuzp1q_s32(v32, v31);
          v36 = vmlaq_f32(v35, vuzp2q_s32(v34, v33), v35);
          v37 = vmlaq_f32(v31, v33, v31);
          v38 = vmlaq_f32(v32, v34, v32);
          a16.i32[0] = *(a7 + 8);
          v18.i32[0] = *a7;
          v39 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v35, v36, v18, 0), vuzp1q_s32(v38, v37), *a16.i8, 0), COERCE_FLOAT(*(a7 + 4)));
          v65.val[0] = vzip2q_s32(v36, vuzp1q_s32(v36, v37));
          v40 = vtrn1q_s32(vzip1q_s32(v36, v38), v38);
          a16 = vtrn2q_s32(vzip1q_s32(v39, v39), v32);
          v41 = v27 + 16;
          vst2q_f32(v27, *(&a16 - 1));
          v42 = v27 + 8;
          v65.val[1] = vzip2q_s32(v39, vuzp2q_s32(v39, v31));
          vst2q_f32(v42, v65);
          v27 = v41;
          v30 -= 4;
        }

        while (v30 > 3);
        v62 = v28;
        v63 = v29;
        v61 = v41;
      }

      if (v30)
      {
        __dst = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        memset(v56, 0, sizeof(v56));
        memset(__src, 0, sizeof(__src));
        memcpy(&__dst, v29, 4 * v30);
        memcpy(&v57, v28, 8 * v30);
        v43 = vuzp1q_s32(__dst, v60);
        v44 = vmlaq_f32(v43, vuzp2q_s32(v57, v58), v43);
        v45 = vmlaq_f32(v60, v58, v60);
        v46 = vmlaq_f32(__dst, v57, __dst);
        v47.i32[0] = *(a7 + 8);
        v48.i32[0] = *a7;
        v49 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v43, v44, v48, 0), vuzp1q_s32(v46, v45), v47, 0), COERCE_FLOAT(*(a7 + 4)));
        v66.val[0] = vzip2q_s32(v44, vuzp1q_s32(v44, v45));
        v66.val[1] = vzip2q_s32(v49, vuzp2q_s32(v49, v60));
        v67.val[0] = vtrn1q_s32(vzip1q_s32(v44, v46), v46);
        v67.val[1] = vtrn2q_s32(vzip1q_s32(v49, v49), __dst);
        v50 = __src;
        vst2q_f32(v50, v67);
        v51 = v56;
        vst2q_f32(v51, v66);
        memcpy(v27, __src, 16 * v30);
      }

      a5 = (a5 + a6);
      a1 = (a1 + a2);
      if (v26 + 1 < a18)
      {
        ++v26;
      }

      else
      {
        a3 += a4;
        v26 = 0;
      }

      ++v25;
    }

    while (v25 != a17);
  }
}

void YCCAtoRGBA<float,2u>(float32x4_t *a1, uint64_t a2, int32x4_t *a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7, unsigned int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, int32x4_t a16, int a17, unsigned int a18)
{
  v19 = a9;
  v66 = v19;
  if (a17)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v64 = a3;
      v65 = a1;
      v27 = a5;
      v28 = a3;
      v29 = a1;
      v30 = a8;
      v63 = a5;
      if (a8 >= 0x10)
      {
        do
        {
          _YCCAtoRGBA<float,2u,16>(&v65, &v64, &v63, a7);
          v30 -= 16;
        }

        while (v30 > 0xF);
        v28 = v64;
        v29 = v65;
        v27 = v63;
      }

      if (v30 >= 4)
      {
        do
        {
          v31 = *v28++;
          v32 = vdupq_laneq_s64(v31, 1);
          v34 = *v29;
          v33 = v29[1];
          v29 += 2;
          v35 = vdupq_lane_s64(v31.i64[0], 0);
          v36 = vuzp1q_s32(v34, v33);
          v37 = vmlaq_f32(v36, vuzp2q_s32(v35, v32), v36);
          v38 = vmlaq_f32(v33, v32, v33);
          v39 = vmlaq_f32(v34, v35, v34);
          a16.i32[0] = *(a7 + 8);
          v18.i32[0] = *a7;
          v40 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v36, v37, v18, 0), vuzp1q_s32(v39, v38), *a16.i8, 0), COERCE_FLOAT(*(a7 + 4)));
          v68.val[0] = vzip2q_s32(v37, vuzp1q_s32(v37, v38));
          v41 = vtrn1q_s32(vzip1q_s32(v37, v39), v39);
          a16 = vtrn2q_s32(vzip1q_s32(v40, v40), v34);
          v42 = v27 + 16;
          vst2q_f32(v27, *(&a16 - 1));
          v43 = v27 + 8;
          v68.val[1] = vzip2q_s32(v40, vuzp2q_s32(v40, v33));
          vst2q_f32(v43, v68);
          v27 = v42;
          v30 -= 4;
        }

        while (v30 > 3);
        v64 = v28;
        v65 = v29;
        v63 = v42;
      }

      if (v30)
      {
        __dst = 0u;
        v62 = 0u;
        v60 = 0uLL;
        memset(v59, 0, sizeof(v59));
        memset(__src, 0, sizeof(__src));
        memcpy(&__dst, v29, 4 * v30);
        memcpy(&v60, v28, (4 * v30 + 4) & 0x18);
        v44 = vdupq_laneq_s64(v60, 1);
        v45 = vdupq_lane_s64(v60.i64[0], 0);
        v46 = vuzp1q_s32(__dst, v62);
        v47 = vmlaq_f32(v46, vuzp2q_s32(v45, v44), v46);
        v48 = vmlaq_f32(v62, v44, v62);
        v49 = vmlaq_f32(__dst, v45, __dst);
        v50.i32[0] = *(a7 + 8);
        v51.i32[0] = *a7;
        v52 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v46, v47, v51, 0), vuzp1q_s32(v49, v48), v50, 0), COERCE_FLOAT(*(a7 + 4)));
        v69.val[0] = vzip2q_s32(v47, vuzp1q_s32(v47, v48));
        v69.val[1] = vzip2q_s32(v52, vuzp2q_s32(v52, v62));
        v67.val[0] = vtrn1q_s32(vzip1q_s32(v47, v49), v49);
        v67.val[1] = vtrn2q_s32(vzip1q_s32(v52, v52), __dst);
        v53 = __src;
        vst2q_f32(v53, v67);
        v54 = v59;
        vst2q_f32(v54, v69);
        memcpy(v27, __src, 16 * v30);
      }

      a5 = (a5 + a6);
      a1 = (a1 + a2);
      if (v26 + 1 < a18)
      {
        ++v26;
      }

      else
      {
        a3 = (a3 + a4);
        v26 = 0;
      }

      ++v25;
    }

    while (v25 != a17);
  }
}

char *YCCtoRGBA<half,1u>(char *result, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, unsigned int a8, int16x8_t _Q0, __n128 a10, double a11, double a12, double a13, double a14, float32x2_t a15, int a16, unsigned int a17)
{
  __asm { FCVT            H0, D0 }

  v53[0] = _Q0.i16[0];
  if (a16)
  {
    v25 = result;
    v26 = 0;
    v27 = 0;
    do
    {
      v51 = a3;
      __src = v25;
      v28 = a8;
      v50 = a5;
      if (a8 >= 0x10)
      {
        do
        {
          result = _YCCtoRGBA<half,1u,16>(&__src, &v51, &v50, a7, v53);
          v28 -= 16;
        }

        while (v28 > 0xF);
      }

      if (v28 >= 4)
      {
        a10.n128_u16[0] = v53[0];
        v29 = __src + 8;
        v30 = (v51 + 16);
        v31 = v50 + 32;
        do
        {
          v32 = (v31 - 32);
          __src = v29;
          v33 = v30[-1];
          v34 = vcvtq_f32_f16(*(v29 - 8));
          v35 = vcvtq_f32_f16(vmovn_s32(v33));
          v36 = vmlaq_f32(v34, vcvtq_f32_f16(*&vuzp2q_s16(v33, _Q0)), v34);
          v37 = vmlaq_f32(v34, v35, v34);
          v35.i32[0] = *(a7 + 8);
          a15.i32[0] = *a7;
          v38 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v34, v36, a15, 0), v37, *v35.i8, 0), COERCE_FLOAT(*(a7 + 4)));
          *v35.i8 = vcvt_f16_f32(v36);
          *_Q0.i8 = vcvt_f16_f32(v38);
          *v38.i8 = vcvt_f16_f32(v37);
          v55.val[0] = vzip1q_s16(v35, v38);
          v55.val[1] = vqtbl2q_s8(*_Q0.i8, xmmword_296B8FDC0);
          vst2q_s16(v32, v55);
          v28 -= 4;
          v50 = v31;
          v51 = v30;
          v29 += 8;
          ++v30;
          v31 += 32;
        }

        while (v28 > 3);
      }

      if (v28)
      {
        __dst = 0;
        v48 = 0u;
        memcpy(&__dst, __src, 2 * v28);
        memcpy(&v48, v51, 4 * v28);
        v39 = vcvtq_f32_f16(__dst);
        v40 = vcvtq_f32_f16(vmovn_s32(v48));
        v56.val[0] = vmlaq_f32(v39, vcvtq_f32_f16(*&vuzp2q_s16(v48, v39)), v39);
        v41 = vmlaq_f32(v39, v40, v39);
        v40.i32[0] = *(a7 + 8);
        v56.val[1].i32[0] = *a7;
        v42 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v39, v56.val[0], *v56.val[1].i8, 0), v41, *v40.i8, 0), COERCE_FLOAT(*(a7 + 4)));
        *v40.i8 = vcvt_f16_f32(v56.val[0]);
        *v56.val[0].i8 = vcvt_f16_f32(v42);
        *v42.i8 = vcvt_f16_f32(v41);
        v54.val[0] = vzip1q_s16(v40, v42);
        v56.val[1].i16[0] = v53[0];
        v54.val[1] = vqtbl2q_s8(v56, xmmword_296B8FDC0);
        v43 = v47;
        vst2q_s16(v43, v54);
        result = memcpy(v50, v47, 8 * v28);
      }

      a5 += a6;
      v25 += a2;
      if (v27 + 1 < a17)
      {
        ++v27;
      }

      else
      {
        a3 += a4;
        v27 = 0;
      }

      ++v26;
    }

    while (v26 != a16);
  }

  return result;
}

void YCCtoRGBA<half,2u>(char *a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, unsigned int a8, float32x4_t _Q0, __n128 a10, double a11, int32x4_t a12, double a13, double a14, float32x2_t a15, int a16, unsigned int a17)
{
  __asm { FCVT            H0, D0 }

  v60 = _H0;
  if (a16)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v58 = a3;
      __src = a1;
      v29 = a8;
      v57 = a5;
      if (a8 >= 0x10)
      {
        do
        {
          _Q0 = _YCCtoRGBA<half,2u,16>(&__src, &v58, &v57, a7, &v60);
          v29 -= 16;
        }

        while (v29 > 0xF);
      }

      if (v29 >= 4)
      {
        v30 = v58;
        a10.n128_u16[0] = v60;
        v31 = __src + 8;
        v32 = v57 + 32;
        do
        {
          v33 = (v32 - 32);
          __src = v31;
          v34 = *v30++;
          a12.i64[0] = v34;
          v35 = vzip1q_s32(a12, a12);
          v36 = vcvtq_f32_f16(*(v31 - 8));
          v37 = vextq_s8(v35, v35, 8uLL).u64[0];
          v38 = vcvtq_f32_f16(vuzp1_s16(*v35.i8, v37));
          v39 = vmlaq_f32(v36, vcvtq_f32_f16(vuzp2_s16(*v35.i8, v37)), v36);
          v40 = vmlaq_f32(v36, v38, v36);
          v38.i32[0] = *(a7 + 8);
          a15.i32[0] = *a7;
          v41 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v36, v39, a15, 0), v40, *v38.f32, 0), COERCE_FLOAT(*(a7 + 4)));
          *v39.i8 = vcvt_f16_f32(v39);
          *_Q0.f32 = vcvt_f16_f32(v41);
          *v41.i8 = vcvt_f16_f32(v40);
          v42 = vzip1q_s16(v39, v41);
          a12 = vqtbl2q_s8(*_Q0.f32, xmmword_296B8FDC0);
          vst2q_s16(v33, *(&a12 - 1));
          v57 = v32;
          v58 = v30;
          v29 -= 4;
          v31 += 8;
          v32 += 32;
        }

        while (v29 > 3);
      }

      if (v29)
      {
        v55 = 0;
        __dst = 0;
        memcpy(&__dst, __src, 2 * v29);
        memcpy(&v55, v58, (2 * v29 + 2) & 0xC);
        v43.i64[0] = v55;
        v44 = vzip1q_s32(v43, v43);
        v45 = vcvtq_f32_f16(__dst);
        v46 = vextq_s8(v44, v44, 8uLL).u64[0];
        v62.val[0] = vcvtq_f32_f16(vuzp1_s16(*v44.i8, v46));
        v47 = vmlaq_f32(v45, vcvtq_f32_f16(vuzp2_s16(*v44.i8, v46)), v45);
        v48 = vmlaq_f32(v45, v62.val[0], v45);
        v62.val[0].i32[0] = *(a7 + 8);
        v62.val[1].i32[0] = *a7;
        v49 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v45, v47, *v62.val[1].i8, 0), v48, *v62.val[0].i8, 0), COERCE_FLOAT(*(a7 + 4)));
        *v47.i8 = vcvt_f16_f32(v47);
        *v62.val[0].i8 = vcvt_f16_f32(v49);
        *v49.i8 = vcvt_f16_f32(v48);
        v61.val[0] = vzip1q_s16(v47, v49);
        v62.val[1].i16[0] = v60;
        v61.val[1] = vqtbl2q_s8(v62, xmmword_296B8FDC0);
        v50 = v54;
        vst2q_s16(v50, v61);
        memcpy(v57, v54, 8 * v29);
      }

      a5 += a6;
      a1 += a2;
      if (v28 + 1 < a17)
      {
        ++v28;
      }

      else
      {
        a3 += a4;
        v28 = 0;
      }

      ++v27;
    }

    while (v27 != a16);
  }
}

void YCCtoRGBA<float,1u>(float32x4_t *a1, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7, unsigned int a8, int32x4_t a9, int32x4_t a10, int32x4_t a11, int32x4_t a12, int32x4_t a13, int32x4_t a14, float32x4_t a15, float32x2_t a16, int a17, unsigned int a18)
{
  *a9.i32 = *a9.i64;
  v49[0] = a9.i32[0];
  if (a17)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v47 = a3;
      v48 = a1;
      v25 = a8;
      v46 = a5;
      if (a8 >= 0x10)
      {
        do
        {
          a9 = _YCCtoRGBA<float,1u,16>(&v48, &v47, &v46, a7, v49, *a9.i64, *a10.i64, *a11.i64, *a12.i64, *a13.i64, *a14.i64, *a15.i64, a16);
          v25 -= 16;
        }

        while (v25 > 0xF);
      }

      if (v25 >= 4)
      {
        v26 = v46;
        v27 = v47;
        v28 = v48;
        a9.i32[0] = v49[0];
        a10 = vdupq_lane_s32(*a9.i8, 0);
        do
        {
          v29 = *v28++;
          v51 = vld2q_f32(v27);
          v27 += 8;
          v30 = vmlaq_f32(v29, v51.val[1], v29);
          a15 = vmlaq_f32(v29, v51.val[0], v29);
          v51.val[0].i32[0] = *(a7 + 8);
          v51.val[1].i32[0] = *a7;
          a11 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v29, v30, *v51.val[1].f32, 0), a15, *v51.val[0].f32, 0), COERCE_FLOAT(*(a7 + 4)));
          v51.val[0] = vzip1q_s32(v30, a15);
          a14 = vzip1q_s32(a11, a9);
          a14.i32[3] = a9.i32[0];
          v31 = v26 + 16;
          vst2q_f32(v26, *(&a14 - 1));
          v32 = v26 + 8;
          a12 = vzip2q_s32(v30, a15);
          a13 = vzip2q_s32(a11, a10);
          vst2q_f32(v32, *a12.i8);
          v26 = v31;
          v25 -= 4;
        }

        while (v25 > 3);
        v47 = v27;
        v48 = v28;
        v46 = v31;
      }

      if (v25)
      {
        __dst = 0uLL;
        memset(v44, 0, sizeof(v44));
        memcpy(&__dst, v48, 4 * v25);
        memcpy(v44, v47, 8 * v25);
        v33 = v44;
        v50 = vld2q_f32(v33);
        v34 = vmlaq_f32(__dst, v50.val[1], __dst);
        v35 = vmlaq_f32(__dst, v50.val[0], __dst);
        v50.val[0].i32[0] = *(a7 + 8);
        v50.val[1].i32[0] = *a7;
        v36 = vmlsq_lane_f32(vmlsq_lane_f32(__dst, v34, *v50.val[1].f32, 0), v35, *v50.val[0].f32, 0);
        v50.val[0].i64[0] = *(a7 + 4);
        v37 = vmulq_n_f32(v36, v50.val[0].f32[0]);
        v50.val[0].i32[0] = v49[0];
        v52.val[0] = vzip2q_s32(v34, v35);
        v52.val[1] = vzip2q_s32(v37, vdupq_lane_s32(*v50.val[0].f32, 0));
        v50.val[1] = vzip1q_s32(v34, v35);
        v38 = vzip1q_s32(v37, v50.val[0]);
        v38.i32[3] = v49[0];
        v39 = __src;
        vst2q_f32(v39, *(&v50 + 16));
        v39 += 8;
        vst2q_f32(v39, v52);
        memcpy(v46, __src, 16 * v25);
      }

      a5 = (a5 + a6);
      a1 = (a1 + a2);
      if (v24 + 1 < a18)
      {
        ++v24;
      }

      else
      {
        a3 = (a3 + a4);
        v24 = 0;
      }

      ++v23;
    }

    while (v23 != a17);
  }
}

void YCCtoRGBA<float,2u>(float32x4_t *a1, uint64_t a2, int32x4_t *a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7, unsigned int a8, int32x4_t a9, double a10, double a11, double a12, double a13, double a14, int32x4_t a15, int a16, unsigned int a17)
{
  *&v17 = *a9.i64;
  v60[0] = v17;
  if (a16)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v58 = a3;
      v59 = a1;
      v25 = a8;
      v57 = a5;
      if (a8 >= 0x10)
      {
        do
        {
          a9 = _YCCtoRGBA<float,2u,16>(&v59, &v58, &v57, a7, v60);
          v25 -= 16;
        }

        while (v25 > 0xF);
      }

      if (v25 >= 4)
      {
        v26 = v57;
        v27 = v58;
        v28 = v59;
        a9.i32[0] = v60[0];
        v29 = vdupq_lane_s32(*a9.i8, 0);
        do
        {
          v30 = *v28++;
          v31 = v30;
          v32 = *v27++;
          v33 = vdupq_laneq_s64(v32, 1);
          v34 = vdupq_lane_s64(v32.i64[0], 0);
          v35 = vuzp1q_s32(v34, v33);
          v36 = vmlaq_f32(v31, vuzp2q_s32(v34, v33), v31);
          v37 = vmlaq_f32(v31, v35, v31);
          v35.i32[0] = *(a7 + 8);
          a15.i32[0] = *a7;
          v38 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v31, v36, *a15.i8, 0), v37, *v35.f32, 0), COERCE_FLOAT(*(a7 + 4)));
          v39 = vzip1q_s32(v36, v37);
          a15 = vzip1q_s32(v38, a9);
          a15.i32[3] = a9.i32[0];
          v40 = v26 + 16;
          vst2q_f32(v26, *(&a15 - 1));
          v41 = v26 + 8;
          v62.val[0] = vzip2q_s32(v36, v37);
          v62.val[1] = vzip2q_s32(v38, v29);
          vst2q_f32(v41, v62);
          v26 = v40;
          v25 -= 4;
        }

        while (v25 > 3);
        v58 = v27;
        v59 = v28;
        v57 = v40;
      }

      if (v25)
      {
        v55 = 0u;
        __dst = 0u;
        memcpy(&__dst, v59, 4 * v25);
        memcpy(&v55, v58, (4 * v25 + 4) & 0x18);
        v42 = vdupq_laneq_s64(v55, 1);
        v43 = vdupq_lane_s64(v55.i64[0], 0);
        v44 = vuzp1q_s32(v43, v42);
        v45 = vmlaq_f32(__dst, vuzp2q_s32(v43, v42), __dst);
        v46 = vmlaq_f32(__dst, v44, __dst);
        v44.i32[0] = *(a7 + 8);
        v47.i32[0] = *a7;
        v48 = vmlsq_lane_f32(vmlsq_lane_f32(__dst, v45, v47, 0), v46, *v44.i8, 0);
        v44.i64[0] = *(a7 + 4);
        v49 = vmulq_n_f32(v48, *v44.i32);
        v44.i32[0] = v60[0];
        v63.val[0] = vzip2q_s32(v45, v46);
        v63.val[1] = vzip2q_s32(v49, vdupq_lane_s32(*v44.i8, 0));
        v61.val[0] = vzip1q_s32(v45, v46);
        v61.val[1] = vzip1q_s32(v49, v44);
        v61.val[1].i32[3] = v60[0];
        v50 = __src;
        vst2q_f32(v50, v61);
        v50 += 8;
        vst2q_f32(v50, v63);
        memcpy(v57, __src, 16 * v25);
      }

      a5 = (a5 + a6);
      a1 = (a1 + a2);
      if (v24 + 1 < a17)
      {
        ++v24;
      }

      else
      {
        a3 = (a3 + a4);
        v24 = 0;
      }

      ++v23;
    }

    while (v23 != a16);
  }
}

uint64_t TileDecoder::ReadYccRGBAPixels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *objecta, axr_decoder *a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, axr_error_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x618] = *MEMORY[0x29EDCA608];
  v73 = axr_decoder_copy(*(a1 + 16));
  if (!v73)
  {
    return -5;
  }

  v74 = v73;
  v179 = axr_decoder_copy(*(a1 + 16));
  if (!v179)
  {
    os_release(v74);
    return -5;
  }

  a43 = axr_error_success;
  v75 = v74 + 3;
  isa = v74[3].isa;
  if (isa)
  {
    if (*(isa + 5) == 9)
    {
      v77 = 0;
      v78 = v74[3].isa;
LABEL_12:
      if (v77)
      {
        v80 = (v77 + 8);
      }

      else
      {
        v80 = v74 + 3;
      }

      v80->isa = *(v78 + 8);
      *(v78 + 1) = 0;
      --LODWORD(v74[4].isa);
      isa = v74[3].isa;
    }

    else
    {
      v78 = v74[3].isa;
      while (1)
      {
        v77 = v78;
        v78 = *(v78 + 1);
        if (!v78)
        {
          break;
        }

        if (*(v78 + 5) == 9)
        {
          goto LABEL_12;
        }
      }
    }

    if (isa)
    {
      if (*(isa + 5) == 8)
      {
        v81 = 0;
LABEL_21:
        if (v81)
        {
          v75 = (v81 + 8);
        }

        v75->isa = *(isa + 8);
        *(isa + 1) = 0;
        --LODWORD(v74[4].isa);
      }

      else
      {
        while (1)
        {
          v81 = isa;
          isa = *(isa + 1);
          if (!isa)
          {
            break;
          }

          if (*(isa + 5) == 8)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  else
  {
    v78 = 0;
  }

  v82 = (v179 + 24);
  v83 = *(v179 + 3);
  object = v74;
  if (v83)
  {
    if (*(v83 + 20) == 10)
    {
      v84 = 0;
      v85 = *(v179 + 3);
LABEL_31:
      if (v84)
      {
        v86 = (v84 + 8);
      }

      else
      {
        v86 = (v179 + 24);
      }

      *v86 = *(v85 + 8);
      *(v85 + 8) = 0;
      --*(v179 + 8);
      v83 = *(v179 + 3);
    }

    else
    {
      v85 = *(v179 + 3);
      while (1)
      {
        v84 = v85;
        v85 = *(v85 + 8);
        if (!v85)
        {
          break;
        }

        if (*(v85 + 20) == 10)
        {
          goto LABEL_31;
        }
      }
    }

    if (v83)
    {
      v87 = *(v83 + 20);
      if (v87 == 4)
      {
        goto LABEL_53;
      }

      v88 = v83;
      while (1)
      {
        v89 = v88;
        v88 = *(v88 + 8);
        if (!v88)
        {
          break;
        }

        if (*(v88 + 20) == 4)
        {
          goto LABEL_54;
        }
      }

      if (v87 == 5)
      {
        goto LABEL_53;
      }

      v88 = v83;
      while (1)
      {
        v89 = v88;
        v88 = *(v88 + 8);
        if (!v88)
        {
          break;
        }

        if (*(v88 + 20) == 5)
        {
          goto LABEL_54;
        }
      }

      if (v87 == 6)
      {
        goto LABEL_53;
      }

      v88 = v83;
      while (1)
      {
        v89 = v88;
        v88 = *(v88 + 8);
        if (!v88)
        {
          break;
        }

        if (*(v88 + 20) == 6)
        {
          goto LABEL_54;
        }
      }

      if (v87 == 7)
      {
LABEL_53:
        v89 = 0;
        v88 = v83;
LABEL_54:
        if (v89)
        {
          v82 = (v89 + 8);
        }

        *v82 = *(v88 + 8);
        *(v88 + 8) = 0;
        --*(v179 + 8);
      }

      else
      {
        v88 = v83;
        while (1)
        {
          v89 = v88;
          v88 = *(v88 + 8);
          if (!v88)
          {
            break;
          }

          if (*(v88 + 20) == 7)
          {
            goto LABEL_54;
          }
        }
      }

      goto LABEL_57;
    }
  }

  else
  {
    v85 = 0;
  }

  v88 = 0;
LABEL_57:
  v90 = *(a1 + 72);
  if (v90)
  {
    v91 = 0;
    v92 = *(a1 + 60);
    v93 = *(a1 + 24);
    v94 = *(v93 + 52);
    LODWORD(v93) = *(v93 + 44);
    v95 = __OFSUB__(v94, v93);
    v96 = v94 - v93;
    if (v96 < 0 != v95)
    {
      v97 = 0;
    }

    else
    {
      v97 = v96 + 1;
    }

    if (v92 >= v97)
    {
      v92 = v97;
    }

    v98 = v92 - 1;
    v99 = (*(a1 + 64) + 8);
    do
    {
      v100 = *v99;
      if (*v99)
      {
        v101 = *(*(v100 + 40) + 8 * *(*(a1 + 16) + 44));
        v102 = *(v101 + 12) - 1;
        if (v102 >= v98)
        {
          v102 = v98;
        }

        if (*(v100 + 104) == 1)
        {
          v103 = (*(v101 + 24) + 8 * v102);
        }

        else
        {
          v104 = (v102 * *(v100 + 108)) >> *(v100 + 112);
          if (v104 >= *(v101 + 20) - 1)
          {
            LODWORD(v104) = *(v101 + 20) - 1;
          }

          v103 = (*(v101 + 24) + 8 * v104);
        }

        v105 = (v103[1] + *v103);
        if (v91 <= v105)
        {
          v91 = v105;
        }
      }

      v99 += 2;
      --v90;
    }

    while (v90);
  }

  else
  {
    v91 = 0;
  }

  a41 = a2;
  a42 = v91;
  a13 = 0;
  a21 = 0;
  a29 = 0;
  a38 = 0;
  a39 = 0;
  a42 = (*(*a1 + 32))(a1, *(a1 + 48));
  v107 = *(a1 + 104);
  v106 = *(a1 + 108);
  v175 = a4;
  vars0 = a3;
  PixelsArgs = TileDecoder::MakeReadPixelsArgs(a1, a3, a4, &a42, 1, &a12, v108, v109, a5);
  a43 = PixelsArgs;
  if (PixelsArgs == axr_error_success)
  {
    v110 = (*(*a1 + 56))(a1);
    TileDecoder_storage::Init(&a68, v110, object, *(a1 + 24), *(a1 + 8), &a43, v111, v112);
    vars8 = v113;
    a36 = v113;
    PixelsArgs = a43;
    if (a43 == axr_error_success)
    {
      v114 = (*(*a1 + 56))(a1);
      TileDecoder_storage::Init(&a44, v114, v179, *(a1 + 24), *(a1 + 8), &a43, v115, v116);
      a37 = v117;
      PixelsArgs = a43;
      if (a43 == axr_error_success)
      {
        v174 = v117;
        v120 = *(object + 8);
        if (!v120)
        {
          goto LABEL_139;
        }

        v121 = 0;
        v122 = 0;
        v169 = (v107 * v106);
        v170 = 0;
        v172 = axr_type_half;
        v173 = 0x100000001;
        v123 = 8;
        v124 = v117;
        do
        {
          v125 = *(*(vars8 + 64) + v123);
          if (v125)
          {
            v126 = v122;
            v127 = v125[20];
            v128 = *(a1 + 56);
            HIDWORD(v173) = v127;
            if (v127 <= 1)
            {
              v127 = 1;
            }

            v129 = __CFADD__(v127 - 1, v128);
            v130 = v127 - 1 + v128;
            if (v129)
            {
              v131 = (v130 - 0xFFFFFFFF / v127 * v127) / v127 + 0xFFFFFFFF / v127;
            }

            else
            {
              v131 = v130 / v127;
            }

            v132 = v125[26];
            v133 = *(a1 + 60);
            LODWORD(v173) = v132;
            if (v132 <= 1)
            {
              v132 = 1;
            }

            v129 = __CFADD__(v132 - 1, v133);
            v134 = v132 - 1 + v133;
            if (v129)
            {
              v135 = (v134 - 0xFFFFFFFF / v132 * v132) / v132 + 0xFFFFFFFF / v132;
            }

            else
            {
              v135 = v134 / v132;
            }

            v172 = v125[18];
            v122 = v126 + v135 * v131 * axr_type_get_size(v172);
            v120 = *(object + 8);
            v124 = v174;
          }

          else
          {
            ++v170;
          }

          ++v121;
          v123 += 16;
        }

        while (v121 < v120);
        if (v170)
        {
          v136 = *(a1 + 56);
          v137 = HIDWORD(v173);
          if (HIDWORD(v173) <= 1)
          {
            v137 = 1;
          }

          v129 = __CFADD__(v137 - 1, v136);
          v138 = v137 - 1 + v136;
          if (v129)
          {
            v139 = (v138 - 0xFFFFFFFF / v137 * v137) / v137 + 0xFFFFFFFF / v137;
          }

          else
          {
            v139 = v138 / v137;
          }

          v140 = *(a1 + 60);
          v141 = v173;
          if (v173 <= 1)
          {
            v141 = 1;
          }

          v129 = __CFADD__(v141 - 1, v140);
          v142 = v141 - 1 + v140;
          if (v129)
          {
            v143 = (v142 - 0xFFFFFFFF / v141 * v141) / v141 + 0xFFFFFFFF / v141;
          }

          else
          {
            v143 = v142 / v141;
          }

          v122 += v170 * v139 * v143 * axr_type_get_size(v172);
        }

        v144 = vars0;
        if (!v122)
        {
          goto LABEL_139;
        }

        a38 = v122;
        v145 = *(v179 + 8);
        if (!v145)
        {
          goto LABEL_139;
        }

        v146 = 0;
        v171 = 0;
        v147 = 0;
        v148 = 8;
        do
        {
          v149 = *(*(v124 + 64) + v148);
          if (v149)
          {
            v150 = v149[20];
            v151 = *(a1 + 56);
            HIDWORD(v173) = v150;
            if (v150 <= 1)
            {
              v150 = 1;
            }

            v152 = v151 + v150 - 1;
            if (v152 < v151)
            {
              v153 = (v152 - 0xFFFFFFFF / v150 * v150) / v150 + 0xFFFFFFFF / v150;
            }

            else
            {
              v153 = v152 / v150;
            }

            v154 = v149[26];
            v155 = *(a1 + 60);
            LODWORD(v173) = v154;
            if (v154 <= 1)
            {
              v154 = 1;
            }

            v129 = __CFADD__(v154 - 1, v155);
            v156 = v154 - 1 + v155;
            if (v129)
            {
              v157 = (v156 - 0xFFFFFFFF / v154 * v154) / v154 + 0xFFFFFFFF / v154;
            }

            else
            {
              v157 = v156 / v154;
            }

            v172 = v149[18];
            v147 += v157 * v153 * axr_type_get_size(v172);
            v145 = *(v179 + 8);
            v144 = vars0;
            v124 = v174;
          }

          else
          {
            ++v171;
          }

          ++v146;
          v148 += 16;
        }

        while (v146 < v145);
        if (v171)
        {
          v158 = *(a1 + 56);
          v159 = HIDWORD(v173);
          if (HIDWORD(v173) <= 1)
          {
            v159 = 1;
          }

          v129 = __CFADD__(v159 - 1, v158);
          v160 = v159 - 1 + v158;
          if (v129)
          {
            v161 = (v160 - 0xFFFFFFFF / v159 * v159) / v159 + 0xFFFFFFFF / v159;
          }

          else
          {
            v161 = v160 / v159;
          }

          v162 = *(a1 + 60);
          v163 = v173;
          if (v173 <= 1)
          {
            v163 = 1;
          }

          v129 = __CFADD__(v163 - 1, v162);
          v164 = v163 - 1 + v162;
          if (v129)
          {
            v165 = (v164 - 0xFFFFFFFF / v163 * v163) / v163 + 0xFFFFFFFF / v163;
          }

          else
          {
            v165 = v164 / v163;
          }

          v147 += v171 * v161 * v165 * axr_type_get_size(v172);
          v144 = vars0;
        }

        if (v147)
        {
          a39 = v147;
          PixelsArgs = TileDecoder::MakeReadPixelsArgs(vars8, v144, v175, &a38, 0, &a20, v118, v119, a5);
          if (PixelsArgs == axr_error_success)
          {
            PixelsArgs = TileDecoder::MakeReadPixelsArgs(a37, vars0, v175, &a39, 0, &a28, v166, v167, a5);
            if (PixelsArgs == axr_error_success)
            {
              PixelsArgs = LaunchBlocks<ReadPixelsArgs>(TileDecoder::ReadYccBlock, &a12, v169, *(a1 + 8));
            }
          }
        }

        else
        {
LABEL_139:
          PixelsArgs = axr_error_success;
        }
      }
    }
  }

  if (v88)
  {
    *(v88 + 8) = *(v179 + 3);
    *(v179 + 3) = v88;
    ++*(v179 + 8);
  }

  if (v85)
  {
    *(v85 + 8) = *(v179 + 3);
    *(v179 + 3) = v85;
    ++*(v179 + 8);
  }

  if (v78)
  {
    *(v78 + 1) = *(object + 3);
    *(object + 3) = v78;
    ++*(object + 8);
  }

  if (isa)
  {
    *(isa + 1) = *(object + 3);
    *(object + 3) = isa;
    ++*(object + 8);
  }

  os_release(object);
  os_release(v179);
  (*a44)(&a44);
  (*a68)(&a68);
  return PixelsArgs;
}

void sub_296B63FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void (**a57)(void))
{
  (*a57)(&a57);
  (*STACK[0x240])(&STACK[0x240]);
  _Unwind_Resume(a1);
}

void TileDecoder_storage::Init(TileDecoder_storage *this, int a2, axr_decoder *a3, const Part *a4, uint64_t a5, axr_error_t *a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (!this)
        {
          return;
        }

        TileDecoder::TileDecoder(this, a3, a4, a5, a6, a6, a7, a8);
        v9 = &unk_2A1DE93E8;
      }

      else
      {
        if (!this)
        {
          return;
        }

        TileDecoder::TileDecoder(this, a3, a4, a5, a6, a6, a7, a8);
        v9 = &unk_2A1DE9498;
      }

      goto LABEL_24;
    }

    if (!a2)
    {
      if (!this)
      {
        return;
      }

      TileDecoder::TileDecoder(this, a3, a4, a5, a6, a6, a7, a8);
      v9 = &unk_2A1DE9338;
      goto LABEL_24;
    }

    if (a2 == 1)
    {
      if (!this)
      {
        return;
      }

      TileDecoder::TileDecoder(this, a3, a4, a5, a6, a6, a7, a8);
      v9 = &unk_2A1DE94F0;
LABEL_24:
      *v8 = v9;
      return;
    }

    goto LABEL_28;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      if (!this)
      {
        return;
      }

      TileDecoder::TileDecoder(this, a3, a4, a5, a6, a6, a7, a8);
      v9 = &unk_2A1DE9548;
    }

    else
    {
      if (!this)
      {
        return;
      }

      TileDecoder::TileDecoder(this, a3, a4, a5, a6, a6, a7, a8);
      v9 = &unk_2A1DE9390;
    }

    goto LABEL_24;
  }

  if (a2 != 6)
  {
    if (a2 == 7)
    {
      if (!this)
      {
        return;
      }

      TileDecoder::TileDecoder(this, a3, a4, a5, a6, a6, a7, a8);
      v8[16] = -1;
      v9 = &unk_2A1DE9440;
      goto LABEL_24;
    }

LABEL_28:
    *a6 = axr_error_unknown_file_type;
    return;
  }

  if (this)
  {
    TileDecoder::TileDecoder(this, a3, a4, a5, a6, a6, a7, a8);
    *v10 = &unk_2A1DE95A0;
    v10[16] = -1;
  }
}

void TileDecoder::ReadPlanesBlock(TileDecoder *this, unint64_t a2)
{
  v3 = *this;
  v4 = *(this + 2);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  TileDecoder::GetThreadTileInfo(v3, a2, &v29);
  if ((DWORD1(v32) + DWORD2(v32)) < *(v3 + 60) && (v32 + HIDWORD(v31)) < *(v3 + 56))
  {
    v28 = *v4;
    v5 = *(v3 + 72);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 8;
      do
      {
        v6 += (*(*v3 + 64))(v3, &v29, COERCE_DOUBLE(vmin_u32(vmls_s32(*(*(*(*(*(v3 + 64) + v8) + 40) + 8 * HIDWORD(v32)) + 16), *(*(*(v3 + 64) + v8) + 48), *(&v30 + 8)), *(*(*(v3 + 64) + v8) + 48))));
        ++v7;
        v9 = *(v3 + 72);
        v8 += 16;
      }

      while (v7 < v9);
      v5 = *(v3 + 72);
    }

    else
    {
      v6 = 0;
      v9 = 0;
    }

    if (v6 >= v9)
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      (*(*v3 + 24))(v27, v3, v4, &v29, &v28);
      v10 = v27[0];
      v11 = v27[1] == 0;
      v5 = *(v3 + 72);
    }

    v12 = v28;
    if (v28 >= *v4)
    {
      v12 = *v4;
    }

    v28 = v12;
    if (v5)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(*(v3 + 64) + v13 + 8);
        if (DWORD1(v31))
        {
          v25 = v15[10].u32[0];
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v16 = DWORD1(v31) / v25;
        }

        else
        {
          v16 = 0;
        }

        v17 = v15[13].u32[0];
        if (v17 <= 1)
        {
          v17 = 1;
        }

        v18 = DWORD2(v31) / v17;
        v19 = (*(this + 3) + v13);
        v20 = v19[1];
        if (v15[9].i32[0] == 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        v22 = ((v16 << v21) + *v19 + v20 * v18);
        if (*(*(v3 + 24) + 72) == 1 && (*(v3 + 8) & 8) == 0)
        {
          v22 += v20 * (*(*(v3 + 16) + 60) - 1);
          v20 = -v20;
        }

        if ((*(*v3 + 64))(v3, &v29, COERCE_DOUBLE(vmin_u32(vmls_s32(*(*(*&v15[5] + 8 * HIDWORD(v32)) + 16), v15[6], *(&v30 + 8)), v15[6]))))
        {
          CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(v29, *(*(v3 + 24) + 208), *(&v29 + 1));
          if (!CompressedDataPtr)
          {
            exception = __cxa_allocate_exception(8uLL);
            *exception = -4;
          }

          TileDecoder::ExtractPlane_Uncompressed(v3, CompressedDataPtr, *(&v29 + 1), *(v3 + 64) + v13, &v29, v22, v24, v20);
        }

        else
        {
          (*(*v3 + 48))(v3, v10, v28, *(v3 + 64) + v13, &v29, v22, 0, v20);
        }

        ++v14;
        v13 += 16;
      }

      while (v14 < *(v3 + 72));
    }

    if (v10 != 0 && !v11)
    {
      free(v10);
    }
  }
}

unint64_t TileDecoder::ReadPlanes(TileDecoder *this, axr_pixel_data_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(this + 18);
  if (v10)
  {
    v11 = (*(this + 8) + 8);
    while (*v11)
    {
      v11 += 2;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v13 = *(this + 1);
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v13) & 2) != 0)
    {
      AXRLogError("AppleEXR does not support generation of planar data to hold a constant.\n(e.g. using axr_decoder_append_constant_value_channel())\nWhile in general, allocation of entire plane to hold a constant should\nbe considered wasteful, this may be done with memset_pattern4()\nwhen it can not be otherwise avoided.\n", a2, a3, a4, a5, a6, a7, a8, v14);
    }

    return -1;
  }

  else
  {
LABEL_5:
    v16 = (*(*this + 32))(this, *(this + 6));
    v15[0] = this;
    v15[1] = 0;
    v15[2] = &v16;
    v15[3] = a2;
    return LaunchBlocks<ReadPlanesArgs>(TileDecoder::ReadPlanesBlock, v15, (*(this + 27) * *(this + 26)), *(this + 1));
  }
}

unint64_t LaunchBlocks<ReadPlanesArgs>(void (__cdecl *a1)(void *, size_t), unint64_t *a2, unint64_t a3, char a4)
{
  if ((a4 & 4) != 0)
  {
    goto LABEL_18;
  }

  v8 = *a2;
  v9 = *(*a2 + 64);
  if (v9)
  {
    v30 = *(*v9 + 16) == 1;
    v10 = 4;
    if (v30)
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 2;
  }

  v11 = v10 * v8[14] * v8[15] * v8[18];
  v12 = v8[26];
  v13 = v8[27];
  v14 = (*(*v8 + 16))(v8);
  if (v11 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11;
  }

  v16 = v14 + v15 - 1;
  if (v16 < v14)
  {
    LaunchBlocks<ReadPixelsArgs>(v15);
    v17 = context[0];
  }

  else
  {
    v17 = v16 / v15;
  }

  if (v17 >= v13 * v12)
  {
    v17 = v13 * v12;
  }

  v18 = v17 <= 1 ? 1 : v17;
  if (v17 <= 1)
  {
LABEL_18:
    v19 = qos_class_self();
    global_queue = dispatch_get_global_queue(v19, 0);
    if ((a4 & 4) == 0 && a3 >= 2)
    {
      v21 = global_queue;
      if (global_queue)
      {
        v22 = a3;
        v23 = a2;
        v24 = a1;
LABEL_43:
        dispatch_apply_f(v22, v21, v23, v24);
        return atomic_load(a2 + 1);
      }
    }

    if (a3)
    {
      v25 = 0;
      do
      {
        (a1)(a2, v25++);
      }

      while (a3 != v25);
    }
  }

  else
  {
    context[0] = a1;
    context[1] = a2;
    context[2] = v18;
    context[3] = a3;
    v26 = v18 + a3 - 1;
    if (v26 < a3)
    {
      LaunchBlocks<ReadPixelsArgs>(v18);
      v27 = context[4];
    }

    else
    {
      v27 = v26 / v18;
    }

    v28 = qos_class_self();
    v29 = dispatch_get_global_queue(v28, 0);
    v30 = v27 < 2 || v29 == 0;
    if (!v30)
    {
      v21 = v29;
      v24 = DoAggregateBlock<ReadPlanesArgs>;
      v23 = context;
      v22 = v27;
      goto LABEL_43;
    }

    if (v27)
    {
      v31 = 0;
      v32 = 0;
      v33 = a3;
      do
      {
        if (v18 >= v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = v18;
        }

        if (v18 * v32 != a3)
        {
          v35 = v31;
          do
          {
            (a1)(a2, v35++);
            --v34;
          }

          while (v34);
        }

        ++v32;
        v33 -= v18;
        v31 += v18;
      }

      while (v32 != v27);
    }
  }

  return atomic_load(a2 + 1);
}

uint64_t TileDecoder::IsInterleavedValid(TileDecoder *this, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 18);
  if (v9 > 4 || v9 == 3)
  {
    v11 = *(this + 1);
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v11) & 2) != 0)
    {
      v12 = "Error: axr_decoder_read_pixels is limited to 1, 2 or 4 channel result images";
LABEL_32:
      AXRLogError(v12, a2, a3, a4, a5, a6, a7, a8, name);
    }
  }

  else
  {
    v13 = *(this + 8);
    v14 = v13[1];
    v15 = *(*v13 + 16);
    if (v14)
    {
      *a2 = *(v14 + 80);
      LODWORD(v14) = *(v14 + 104);
    }

    else
    {
      *a2 = 0;
    }

    *a3 = v14;
    v16 = *(this + 18);
    if (v16 < 2)
    {
      return 0;
    }

    v17 = 0;
    v18 = 1;
    while ((v15 == 1) != (*(v13[v17 + 2] + 16) != 1))
    {
      v19 = v13[v17 + 3];
      if (v19)
      {
        v20 = *(v19 + 80);
        if (*a2)
        {
          if (*a2 != v20)
          {
            TileDecoder::IsInterleavedValid();
            return v25;
          }
        }

        else
        {
          *a2 = v20;
        }

        v21 = *(v19 + 104);
        if (*a3)
        {
          if (*a3 != v21)
          {
            TileDecoder::IsInterleavedValid();
            return v25;
          }
        }

        else
        {
          *a3 = v21;
        }

        v16 = *(this + 18);
      }

      ++v18;
      v17 += 2;
      if (v18 >= v16)
      {
        return 0;
      }
    }

    v23 = *(this + 1);
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v23) & 2) != 0)
    {
      name = axr_type_get_name(*(**(this + 8) + 16));
      axr_type_get_name(*(*(*(this + 8) + v17 * 8 + 16) + 16));
      v12 = "Error: axr_decoder_read_pixels requires that all channels have the same data size.\n\t%s vs %s";
      goto LABEL_32;
    }
  }

  return -1;
}

void TileDecoder::RemovePrefixSumPredictor(TileDecoder *this, unsigned __int8 *a2, unint64_t a3)
{
  v3 = 0uLL;
  if (a3 >= 0x20)
  {
    v4 = 0;
    v5.i64[0] = 0xFFFF0000FFFF0000;
    v5.i64[1] = 0xFFFF0000FFFF0000;
    v6.i64[0] = 0xFFFFFFFF00000000;
    v6.i64[1] = 0xFFFFFFFF00000000;
    v7.i64[0] = 0x8000800080008000;
    v7.i64[1] = 0x8000800080008000;
    do
    {
      v8 = &a2[v4];
      v9 = vaddq_s8((*&vrev16q_s8(*&a2[v4]) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), *&a2[v4]);
      v10 = vaddq_s8((*&vrev16q_s8(*&a2[v4 + 16]) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), *&a2[v4 + 16]);
      v11 = vaddq_s8(vandq_s8(vqtbl1q_s8(v10, xmmword_296B8FDD0), v5), v10);
      v12 = vaddq_s8(vandq_s8(vqtbl1q_s8(v9, xmmword_296B8FDD0), v5), v9);
      v13 = vaddq_s8(vandq_s8(vqtbl1q_s8(v12, xmmword_296B8FDE0), v6), v12);
      v14 = vaddq_s8(vandq_s8(vqtbl1q_s8(v11, xmmword_296B8FDE0), v6), v11);
      v15 = vaddq_s8(vandq_s8(vdupq_lane_s8(*v13.i8, 7), xmmword_296B8F0A0), v13);
      v16 = vdupq_laneq_s8(v15, 15);
      v17 = vaddq_s8(v15, v3);
      v18 = vaddq_s8(vaddq_s8(vandq_s8(vdupq_lane_s8(*v14.i8, 7), xmmword_296B8F0A0), vaddq_s8(v14, v3)), v16);
      v3 = vdupq_laneq_s8(v18, 15);
      *v8 = veorq_s8(v17, v7);
      v8[1] = veorq_s8(v18, v7);
      v19 = v4 + 32;
      v20 = v4 + 64;
      v4 += 32;
    }

    while (v20 <= a3);
    a2 += v19;
  }

  v21 = a3 & 0x1F;
  if ((a3 & 0x1F) != 0)
  {
    v22 = v3.u8[0] ^ 0xFFFFFF80;
    do
    {
      v22 = v22 + *a2 - 128;
      *a2++ = v22;
      --v21;
    }

    while (v21);
  }
}

void TileDecoder_NoCompression::Decompress(uint64_t *a1@<X2>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= a1[1])
  {
    v3 = a1[1];
  }

  *a2 = v3;
  *a3 = v4 + 8;
  a3[1] = 0;
}

void Read2_NoCompression<unsigned short,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t a8, unsigned int a9, int8x16_t *a10, uint64_t a11)
{
  v11 = *a5;
  if (*(*a5 + 24))
  {
    _D0 = *v11;
  }

  else
  {
    _D0 = NAN;
  }

  v13 = *(v11 + 16);
  if (v13 == 2)
  {
    *&_D0 = _D0;
  }

  else if (v13 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v34) = _H0;
    LOWORD(v34) = _H0;
    LODWORD(_D0) = v34;
  }

  else
  {
    LODWORD(_D0) = _D0;
  }

  v19 = *a6;
  if (*(*a6 + 24))
  {
    _D1 = *v19;
  }

  else
  {
    _D1 = NAN;
  }

  v21 = *(v19 + 16);
  if (v21 == 2)
  {
    v22 = _D1;
  }

  else if (v21 == 1)
  {
    __asm { FCVT            H1, D1 }

    HIWORD(v35) = _H1;
    LOWORD(v35) = _H1;
    v22 = v35;
  }

  else
  {
    LODWORD(v22) = _D1;
    if (v21)
    {
      v22 = *&_D0;
    }
  }

  v24 = *(a4 + 52);
  if (*(a4 + 56) + v24 < *(a3 + 60))
  {
    v25 = a10;
    v26 = *(a3 + 32) + *(a3 + 40);
    *(&_D0 + 1) = v22;
    v36.val[1] = vdupq_lane_s16(*&_D0, 2);
    v36.val[0] = vdupq_lane_s16(*&_D0, 0);
    v27 = vqtbl2q_s8(v36, xmmword_296B6EDD0);
    while (a8 < 4)
    {
      v28 = 0;
      v29 = v25;
LABEL_27:
      v31 = a8 - v28;
      if (a8 > v28)
      {
        v32 = 2 * v28;
        do
        {
          v32 += 2;
          if (v32 > v26)
          {
            goto LABEL_33;
          }

          v29->i16[1] = WORD2(_D0);
          v29->i16[0] = LOWORD(_D0);
          v29 = (v29 + 4);
        }

        while (--v31);
      }

      v25 = (v25 + a11);
      v24 += a9;
      if (v24 + *(a4 + 56) >= *(a3 + 60))
      {
        return;
      }
    }

    v30 = 0;
    v28 = 0;
    v29 = v25;
    while (1)
    {
      v30 += 8;
      if (v30 > v26)
      {
        break;
      }

      if (v29 <= &a10->i8[a11])
      {
        v28 += 4;
        *v29++ = v27;
        if (v28 + 4 <= a8)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

LABEL_33:
    exception = __cxa_allocate_exception(8uLL);
    *exception = -6;
  }
}

void Read2_NoCompression<unsigned int,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t a8, unsigned int a9, _OWORD *a10, uint64_t a11)
{
  v11 = *a5;
  if (*(*a5 + 24))
  {
    _D0 = *v11;
  }

  else
  {
    _D0 = NAN;
  }

  v13 = *(v11 + 16);
  if (v13 == 2)
  {
    *&_D0 = _D0;
  }

  else if (v13 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v36) = _H0;
    LOWORD(v36) = _H0;
    LODWORD(_D0) = v36;
  }

  else
  {
    LODWORD(_D0) = _D0;
  }

  v19 = *a6;
  if (*(*a6 + 24))
  {
    _D1 = *v19;
  }

  else
  {
    _D1 = NAN;
  }

  v21 = *(v19 + 16);
  if (v21 == 2)
  {
    v23 = _D1;
  }

  else if (v21 == 1)
  {
    __asm { FCVT            H1, D1 }

    HIWORD(v37) = _H1;
    LOWORD(v37) = _H1;
    v23 = v37;
  }

  else
  {
    v22 = _D1;
    if (v21)
    {
      v23 = *&_D0;
    }

    else
    {
      v23 = *&v22;
    }
  }

  v25 = *(a4 + 52);
  if (*(a4 + 56) + v25 < *(a3 + 60))
  {
    v26 = a10;
    v27 = *(a3 + 32) + *(a3 + 40);
    *&v28 = __PAIR64__(LODWORD(v23), LODWORD(_D0));
    *(&v28 + 1) = __PAIR64__(LODWORD(v23), LODWORD(_D0));
    *(&_D0 + 1) = v23;
    do
    {
      if (a8 >= 4)
      {
        v31 = 0;
        v29 = 0;
        v32 = v26;
        while (1)
        {
          v31 += 16;
          if (v31 > v27)
          {
            goto LABEL_35;
          }

          if (v32 > (a10 + a11))
          {
            break;
          }

          v29 += 4;
          v30 = v32 + 2;
          *v32 = v28;
          v32[1] = v28;
          v32 += 2;
          if (v29 + 4 > a8)
          {
            goto LABEL_29;
          }
        }

        v30 = v32;
      }

      else
      {
        v29 = 0;
        v30 = v26;
      }

LABEL_29:
      v33 = a8 - v29;
      if (a8 > v29)
      {
        v34 = 4 * v29;
        while (1)
        {
          v34 += 4;
          if (v34 > v27)
          {
            break;
          }

          *v30++ = *&_D0;
          if (!--v33)
          {
            goto LABEL_33;
          }
        }

LABEL_35:
        exception = __cxa_allocate_exception(8uLL);
        *exception = -6;
      }

LABEL_33:
      v26 = (v26 + a11);
      v25 += a9;
    }

    while (v25 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read2_NoCompression<unsigned short,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t a8, unsigned int a9, int8x16_t *a10, uint64_t a11)
{
  v17 = *(a3 + 60);
  v18 = *(a5 + 8);
  v19 = *(a4 + 24);
  v54 = v19;
  v51[1] = a1;
  v51[2] = v18;
  v55 = *(a4 + 60);
  LODWORD(v18) = *(a4 + 44);
  v52 = *(a4 + 52) + HIDWORD(v19) * v17;
  v53 = v18;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v51);
  v22 = *a6;
  if (*(*a6 + 24))
  {
    _D0 = *v22;
  }

  else
  {
    _D0 = NAN;
  }

  v24 = *(v22 + 16);
  if (v24 == 2)
  {
    *&v21 = _D0;
  }

  else if (v24 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v56) = _H0;
    LOWORD(v56) = _H0;
    LODWORD(v21) = v56;
  }

  else
  {
    LODWORD(v21) = _D0;
  }

  v30 = *(a3 + 56);
  v31 = *(a4 + 52);
  if (*(a4 + 56) + v31 < HIDWORD(v30))
  {
    v32 = a10;
    v47 = *(a4 + 28) * HIDWORD(v30);
    v46 = a1 + a2;
    v33 = *(a3 + 32) + *(a3 + 40);
    v34 = v21;
    do
    {
      v48 = v20;
      v50 = v21;
      v52 = v47 + v31;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v51);
      v20 = v48;
      v21 = v50;
      if (v51[0])
      {
        v35 = 0;
        v36 = (v46 - v51[0]) >> 1;
        if (v46 <= v51[0])
        {
          v36 = 0;
        }

        if (v36 >= a8)
        {
          v36 = a8;
        }

        v37 = v32;
        if (v36 >= 4)
        {
          v38 = 0;
          v39 = 0;
          v37 = v32;
          while (1)
          {
            if (v51[0] + v38 + 8 > v33 || v38 + 8 > v33)
            {
LABEL_34:
              exception = __cxa_allocate_exception(8uLL);
              *exception = -6;
            }

            if (v37 > &a10->i8[a11])
            {
              break;
            }

            *&v20 = *(v51[0] + v38);
            *v37++ = vqtbl2q_s8(*&v20, xmmword_296B8FDC0);
            v35 = v39 + 4;
            v38 += 8;
            v40 = v39 + 8;
            v39 += 4;
            if (v40 > v36)
            {
              goto LABEL_24;
            }
          }

          v35 = v39;
        }

LABEL_24:
        v41 = v36 - v35;
        if (v36 > v35)
        {
          v42 = 2 * v35;
          do
          {
            if (v51[0] + v42 + 2 > v33 || v42 + 2 > v33)
            {
              goto LABEL_34;
            }

            v43 = *(v51[0] + v42);
            v44 = (v37->i64 + 4);
            v37->i16[1] = v34;
            v37->i16[0] = v43;
            v42 += 2;
            v37 = (v37 + 4);
            --v41;
          }

          while (v41);
          v35 = v36;
          v37 = v44;
        }

        if (a8 > v35)
        {
          v49 = v20;
          bzero(v37, 4 * (a8 - v35));
          v20 = v49;
          v21 = v50;
        }
      }

      v32 = (v32 + a11);
      v31 += a9;
    }

    while (v31 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read2_NoCompression<unsigned int,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t a8, unsigned int a9, int32x4_t *a10, uint64_t a11)
{
  v17 = *(a3 + 60);
  v18 = *(a5 + 8);
  v19 = *(a4 + 24);
  v54 = v19;
  v51[1] = a1;
  v51[2] = v18;
  v55 = *(a4 + 60);
  LODWORD(v18) = *(a4 + 44);
  v52 = *(a4 + 52) + HIDWORD(v19) * v17;
  v53 = v18;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v51);
  v21 = *a6;
  if (*(*a6 + 24))
  {
    _D0 = *v21;
  }

  else
  {
    _D0 = NAN;
  }

  v23 = *(v21 + 16);
  if (v23 == 2)
  {
    *v20.i32 = _D0;
  }

  else if (v23 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v56) = _H0;
    LOWORD(v56) = _H0;
    v20.i32[0] = v56;
  }

  else
  {
    v20.i32[0] = _D0;
  }

  v29 = *(a3 + 56);
  v30 = *(a4 + 52);
  if (*(a4 + 56) + v30 < HIDWORD(v29))
  {
    v31 = a10;
    v32 = v20.i32[0];
    v49 = *(a4 + 28) * HIDWORD(v29);
    v47 = a1 + a2;
    v33 = *(a3 + 32) + *(a3 + 40);
    v50 = v20;
    v48 = vdupq_lane_s32(*v20.i8, 0);
    do
    {
      v52 = v49 + v30;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v51);
      if (v51[0])
      {
        v34 = 0;
        v35 = (v47 - v51[0]) >> 2;
        if (v47 <= v51[0])
        {
          v35 = 0;
        }

        if (v35 >= a8)
        {
          v35 = a8;
        }

        v36 = v31;
        if (v35 >= 4)
        {
          v37 = 0;
          v38 = 0;
          v39 = v31;
          while (1)
          {
            if (v51[0] + v37 + 16 > v33 || v37 + 16 > v33)
            {
LABEL_34:
              exception = __cxa_allocate_exception(8uLL);
              *exception = -6;
            }

            if (v39 > &a10->i8[a11])
            {
              break;
            }

            v40 = *(v51[0] + v37);
            v41 = vzip1q_s32(v40, v50);
            v41.i32[3] = v50.i32[0];
            v36 = v39 + 2;
            *v39 = v41;
            v39[1] = vzip2q_s32(v40, v48);
            v34 = v38 + 4;
            v37 += 16;
            v42 = v38 + 8;
            v38 += 4;
            v39 += 2;
            if (v42 > v35)
            {
              goto LABEL_24;
            }
          }

          v34 = v38;
          v36 = v39;
        }

LABEL_24:
        v43 = v35 - v34;
        if (v35 > v34)
        {
          v44 = 4 * v34;
          do
          {
            if (v51[0] + v44 + 4 > v33 || v44 + 4 > v33)
            {
              goto LABEL_34;
            }

            LODWORD(v45) = *(v51[0] + v44);
            HIDWORD(v45) = v32;
            v36->i64[0] = v45;
            v36 = (v36 + 8);
            v44 += 4;
            --v43;
          }

          while (v43);
          v34 = v35;
        }

        if (a8 > v34)
        {
          bzero(v36, 8 * (a8 - v34));
        }
      }

      v31 = (v31 + a11);
      v30 += a9;
    }

    while (v30 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read2_NoCompression<unsigned short,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, __n128 _Q0, __n128 a8, uint64_t a9, unint64_t a10, unsigned int a11, int8x16_t *a12, uint64_t a13)
{
  v18 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.n128_u64[0] = *v18;
  }

  else
  {
    _Q0.n128_u64[0] = 0x7FF8000000000000;
  }

  v19 = *(v18 + 16);
  if (v19 == 2)
  {
    _Q0.n128_f32[0] = _Q0.n128_f64[0];
  }

  else if (v19 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v49[0]) = _H0;
    LOWORD(v49[0]) = _H0;
    _Q0.n128_u32[0] = v49[0];
  }

  else
  {
    _Q0.n128_u32[0] = _Q0.n128_f64[0];
  }

  v47 = _Q0;
  v25 = *(a3 + 60);
  v26 = *(a6 + 8);
  v27 = *(a4 + 24);
  v52 = v27;
  v49[1] = a1;
  v49[2] = v26;
  v53 = *(a4 + 60);
  LODWORD(v26) = *(a4 + 44);
  v50 = *(a4 + 52) + HIDWORD(v27) * v25;
  v51 = v26;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v49);
  v28 = *(a3 + 56);
  v29 = *(a4 + 52);
  if (*(a4 + 56) + v29 < HIDWORD(v28))
  {
    v30 = a12;
    v31 = *(a4 + 28) * HIDWORD(v28);
    v46 = a1 + a2;
    v32 = *(a3 + 32) + *(a3 + 40);
    do
    {
      v50 = v31 + v29;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v49);
      if (v49[0])
      {
        v33 = 0;
        v34 = (v46 - v49[0]) >> 1;
        if (v46 <= v49[0])
        {
          v34 = 0;
        }

        if (a10 < v34)
        {
          v34 = a10;
        }

        v35 = v30;
        v36 = v47;
        v37 = a8;
        if (v34 >= 4)
        {
          v38 = 0;
          v39 = 0;
          v35 = v30;
          while (1)
          {
            if (v38 + 8 > v32 || v49[0] + v38 + 8 > v32)
            {
LABEL_34:
              exception = __cxa_allocate_exception(8uLL);
              *exception = -6;
            }

            if (v35 > &a12->i8[a13])
            {
              break;
            }

            v37.n128_u64[0] = *(v49[0] + v38);
            *v35++ = vqtbl2q_s8(*v36.n128_u64, xmmword_296B8FDF0);
            v33 = v39 + 4;
            v38 += 8;
            v40 = v39 + 8;
            v39 += 4;
            if (v40 > v34)
            {
              goto LABEL_24;
            }
          }

          v33 = v39;
        }

LABEL_24:
        v41 = v34 - v33;
        a8 = v37;
        if (v34 > v33)
        {
          v42 = 2 * v33;
          v43 = 2 * v33 + 2;
          do
          {
            if (v43 > v32 || v49[0] + v42 + 2 > v32)
            {
              goto LABEL_34;
            }

            v44 = (v35->i64 + 4);
            v35->i16[1] = *(v49[0] + v42);
            v35->i16[0] = v47.n128_u16[0];
            v43 += 2;
            v42 += 2;
            v35 = (v35 + 4);
            --v41;
          }

          while (v41);
          v33 = v34;
          v35 = v44;
        }

        if (a10 > v33)
        {
          bzero(v35, 4 * (a10 - v33));
        }
      }

      v30 = (v30 + a13);
      v29 += a11;
    }

    while (v29 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read2_NoCompression<unsigned int,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int32x4_t _Q0, uint64_t a8, unint64_t a9, unsigned int a10, int32x4_t *a11, uint64_t a12)
{
  v17 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.i64[0] = *v17;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v18 = *(v17 + 16);
  if (v18 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v18 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v49[0]) = _H0;
    LOWORD(v49[0]) = _H0;
    _Q0.i32[0] = v49[0];
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v48 = _Q0;
  v24 = *(a3 + 60);
  v25 = *(a6 + 8);
  v26 = *(a4 + 24);
  v52 = v26;
  v49[1] = a1;
  v49[2] = v25;
  v53 = *(a4 + 60);
  LODWORD(v25) = *(a4 + 44);
  v50 = *(a4 + 52) + HIDWORD(v26) * v24;
  v51 = v25;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v49);
  v27 = *(a3 + 56);
  v28 = *(a4 + 52);
  if (*(a4 + 56) + v28 < HIDWORD(v27))
  {
    v29 = a11;
    v30 = *(a4 + 28) * HIDWORD(v27);
    v46 = a1 + a2;
    v31 = *(a3 + 32) + *(a3 + 40);
    v47 = vdupq_lane_s32(*v48.i8, 0);
    do
    {
      v50 = v30 + v28;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v49);
      if (v49[0])
      {
        v32 = 0;
        v33 = (v46 - v49[0]) >> 2;
        if (v46 <= v49[0])
        {
          v33 = 0;
        }

        if (a9 < v33)
        {
          v33 = a9;
        }

        v34 = v29;
        if (v33 >= 4)
        {
          v35 = 0;
          v36 = 0;
          v37 = v29;
          while (1)
          {
            if (v35 + 16 > v31 || v49[0] + v35 + 16 > v31)
            {
LABEL_34:
              exception = __cxa_allocate_exception(8uLL);
              *exception = -6;
            }

            if (v37 > &a11->i8[a12])
            {
              break;
            }

            v38 = *(v49[0] + v35);
            v39 = vzip1q_s32(v48, v38);
            v39.i32[2] = v48.i32[0];
            v34 = v37 + 2;
            *v37 = v39;
            v37[1] = vzip2q_s32(v47, v38);
            v32 = v36 + 4;
            v35 += 16;
            v40 = v36 + 8;
            v36 += 4;
            v37 += 2;
            if (v40 > v33)
            {
              goto LABEL_24;
            }
          }

          v32 = v36;
          v34 = v37;
        }

LABEL_24:
        v41 = v33 - v32;
        if (v33 > v32)
        {
          v42 = 4 * v32;
          v43 = 4 * v32 + 4;
          do
          {
            if (v43 > v31 || v49[0] + v42 + 4 > v31)
            {
              goto LABEL_34;
            }

            LODWORD(v44) = v48.i32[0];
            HIDWORD(v44) = *(v49[0] + v42);
            v34->i64[0] = v44;
            v34 = (v34 + 8);
            v43 += 4;
            v42 += 4;
            --v41;
          }

          while (v41);
          v32 = v33;
        }

        if (a9 > v32)
        {
          bzero(v34, 8 * (a9 - v32));
        }
      }

      v29 = (v29 + a12);
      v28 += a10;
    }

    while (v28 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read2_NoCompression<unsigned short,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unsigned int a9, __int16 *a10, uint64_t a11)
{
  v17 = *(a3 + 60);
  v18 = *(a5 + 8);
  v19 = *(a4 + 24);
  v49 = v19;
  v46[1] = a1;
  v46[2] = v18;
  v50 = *(a4 + 60);
  LODWORD(v18) = *(a4 + 44);
  v47 = *(a4 + 52) + HIDWORD(v19) * v17;
  v48 = v18;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v46);
  v20 = *(a3 + 60);
  v21 = *(a6 + 8);
  v22 = *(a4 + 24);
  v44 = v22;
  v41[1] = a1;
  v41[2] = v21;
  v45 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v42 = *(a4 + 52) + HIDWORD(v22) * v20;
  v43 = v21;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v41);
  v23 = *(a3 + 56);
  v24 = *(a4 + 52);
  if (*(a4 + 56) + v24 < HIDWORD(v23))
  {
    v25 = a10;
    v26 = *(a4 + 28) * HIDWORD(v23);
    v40 = a1 + a2;
    v27 = *(a3 + 32) + *(a3 + 40);
    do
    {
      v47 = v26 + v24;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v46);
      v42 = v26 + v24;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v41);
      if (v46[0] && v41[0])
      {
        v28 = 0;
        v29 = (v40 - v46[0]) >> 1;
        if (v40 <= v46[0])
        {
          v29 = 0;
        }

        if (v29 >= a8)
        {
          v29 = a8;
        }

        v30 = (v40 - v41[0]) >> 1;
        if (v40 <= v41[0])
        {
          v30 = 0;
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        v31 = v25;
        if (v30 >= 4)
        {
          v32 = 0;
          v33 = 0;
          v31 = v25;
          while (1)
          {
            if (v46[0] + v32 + 8 > v27 || v41[0] + v32 + 8 > v27)
            {
LABEL_31:
              exception = __cxa_allocate_exception(8uLL);
              *exception = -6;
            }

            if (v31 > (a10 + a11))
            {
              break;
            }

            v51.val[0] = *(v46[0] + v32);
            v51.val[1] = *(v41[0] + v32);
            vst2_s16(v31, v51);
            v31 += 8;
            v28 = v33 + 4;
            v32 += 8;
            v34 = v33 + 8;
            v33 += 4;
            if (v34 > v30)
            {
              goto LABEL_21;
            }
          }

          v28 = v33;
        }

LABEL_21:
        v35 = v30 - v28;
        if (v30 > v28)
        {
          v36 = 2 * v28;
          do
          {
            if (v46[0] + v36 + 2 > v27 || v41[0] + v36 + 2 > v27)
            {
              goto LABEL_31;
            }

            v37 = *(v46[0] + v36);
            v38 = v31 + 2;
            v31[1] = *(v41[0] + v36);
            *v31 = v37;
            v36 += 2;
            v31 += 2;
            --v35;
          }

          while (v35);
          v28 = v30;
          v31 = v38;
        }

        if (a8 > v28)
        {
          bzero(v31, 4 * (a8 - v28));
        }
      }

      v25 = (v25 + a11);
      v24 += a9;
    }

    while (v24 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read2_NoCompression<unsigned int,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unsigned int a9, float *a10, uint64_t a11)
{
  v17 = *(a3 + 60);
  v18 = *(a5 + 8);
  v19 = *(a4 + 24);
  v48 = v19;
  v45[1] = a1;
  v45[2] = v18;
  v49 = *(a4 + 60);
  LODWORD(v18) = *(a4 + 44);
  v46 = *(a4 + 52) + HIDWORD(v19) * v17;
  v47 = v18;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v45);
  v20 = *(a3 + 60);
  v21 = *(a6 + 8);
  v22 = *(a4 + 24);
  v43 = v22;
  v40[1] = a1;
  v40[2] = v21;
  v44 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v41 = *(a4 + 52) + HIDWORD(v22) * v20;
  v42 = v21;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v40);
  v23 = *(a3 + 56);
  v24 = *(a4 + 52);
  if (*(a4 + 56) + v24 < HIDWORD(v23))
  {
    v25 = a10;
    v26 = *(a4 + 28) * HIDWORD(v23);
    v39 = a1 + a2;
    v27 = *(a3 + 32) + *(a3 + 40);
    do
    {
      v46 = v26 + v24;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v45);
      v41 = v26 + v24;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v40);
      if (v45[0] && v40[0])
      {
        v28 = 0;
        v29 = (v39 - v45[0]) >> 2;
        if (v39 <= v45[0])
        {
          v29 = 0;
        }

        if (v29 >= a8)
        {
          v29 = a8;
        }

        v30 = (v39 - v40[0]) >> 2;
        if (v39 <= v40[0])
        {
          v30 = 0;
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        v31 = v25;
        if (v30 >= 4)
        {
          v32 = 0;
          v33 = 0;
          v31 = v25;
          while (1)
          {
            if (v45[0] + v32 + 16 > v27 || v40[0] + v32 + 16 > v27)
            {
LABEL_31:
              exception = __cxa_allocate_exception(8uLL);
              *exception = -6;
            }

            if (v31 > (a10 + a11))
            {
              break;
            }

            v50.val[0] = *(v45[0] + v32);
            v50.val[1] = *(v40[0] + v32);
            vst2q_f32(v31, v50);
            v31 += 8;
            v28 = v33 + 4;
            v32 += 16;
            v34 = v33 + 8;
            v33 += 4;
            if (v34 > v30)
            {
              goto LABEL_21;
            }
          }

          v28 = v33;
        }

LABEL_21:
        v35 = v30 - v28;
        if (v30 > v28)
        {
          v36 = 4 * v28;
          do
          {
            if (v45[0] + v36 + 4 > v27 || v40[0] + v36 + 4 > v27)
            {
              goto LABEL_31;
            }

            LODWORD(v37) = *(v45[0] + v36);
            HIDWORD(v37) = *(v40[0] + v36);
            *v31 = v37;
            v31 += 2;
            v36 += 4;
            --v35;
          }

          while (v35);
          v28 = v30;
        }

        if (a8 > v28)
        {
          bzero(v31, 8 * (a8 - v28));
        }
      }

      v25 = (v25 + a11);
      v24 += a9;
    }

    while (v24 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(__n128 _Q0, double a2, __n128 _Q2, double a4, __n128 _Q4, double a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t a16, unint64_t a17, unsigned int a18, __int16 *a19, uint64_t a20)
{
  v20 = *a12;
  if (*(*a12 + 24))
  {
    _Q0.n128_u64[0] = *v20;
  }

  else
  {
    _Q0.n128_u64[0] = 0x7FF8000000000000;
  }

  v21 = *(v20 + 16);
  if (v21 == 2)
  {
    _Q0.n128_f32[0] = _Q0.n128_f64[0];
  }

  else if (v21 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v50) = _H0;
    LOWORD(v50) = _H0;
    _Q0.n128_u32[0] = v50;
  }

  else
  {
    _Q0.n128_u32[0] = _Q0.n128_f64[0];
  }

  v27 = *a13;
  if (*(*a13 + 24))
  {
    _Q2.n128_u64[0] = *v27;
  }

  else
  {
    _Q2.n128_u64[0] = 0x7FF8000000000000;
  }

  v28 = *(v27 + 16);
  if (v28 == 2)
  {
    _Q2.n128_f32[0] = _Q2.n128_f64[0];
  }

  else if (v28 == 1)
  {
    __asm { FCVT            H2, D2 }

    HIWORD(v51) = _H2;
    LOWORD(v51) = _H2;
    _Q2.n128_u32[0] = v51;
  }

  else
  {
    _Q2.n128_u32[0] = _Q2.n128_f64[0];
    if (v28)
    {
      _Q2.n128_f32[0] = _Q0.n128_f32[0];
    }
  }

  v30 = *a14;
  if (*(*a14 + 24))
  {
    _Q4.n128_u64[0] = *v30;
  }

  else
  {
    _Q4.n128_u64[0] = 0x7FF8000000000000;
  }

  v31 = *(v30 + 16);
  if (v31 == 2)
  {
    _Q4.n128_f32[0] = _Q4.n128_f64[0];
  }

  else if (v31 == 1)
  {
    __asm { FCVT            H4, D4 }

    HIWORD(v52) = _H4;
    LOWORD(v52) = _H4;
    _Q4.n128_u32[0] = v52;
  }

  else
  {
    _Q4.n128_u32[0] = _Q4.n128_f64[0];
    if (v31)
    {
      _Q4.n128_f32[0] = _Q0.n128_f32[0];
    }
  }

  v33 = *a15;
  if (*(*a15 + 24))
  {
    _D5 = *v33;
  }

  else
  {
    _D5 = NAN;
  }

  v35 = *(v33 + 16);
  if (v35 == 2)
  {
    a7.n128_f32[0] = _D5;
  }

  else if (v35 == 1)
  {
    __asm { FCVT            H5, D5 }

    HIWORD(v53) = _H5;
    LOWORD(v53) = _H5;
    a7.n128_u32[0] = v53;
  }

  else
  {
    LODWORD(v36) = _D5;
    if (v35)
    {
      a7.n128_f32[0] = _Q0.n128_f32[0];
    }

    else
    {
      a7.n128_f32[0] = v36;
    }
  }

  v38 = *(a11 + 52);
  if (*(a11 + 56) + v38 < *(a10 + 60))
  {
    v40 = _Q4.n128_u16[0];
    v41 = _Q4;
    v42 = vqtbl2q_s8(*_Q0.n128_u64, xmmword_296B8F230);
    v43 = a7;
    v44 = vqtbl2q_s8(*_Q2.n128_u64, xmmword_296B8F230);
    _Q0.n128_u16[1] = _Q2.n128_u16[0];
    _Q0.n128_u16[2] = v40;
    _Q0.n128_u16[3] = a7.n128_u16[0];
    do
    {
      if (a17 >= 4)
      {
        v47 = 0;
        v46 = a19;
        do
        {
          vst2q_s16(v46, *v42.i8);
          v46 += 16;
          v45 = v47 + 4;
          v48 = v47 + 8;
          v47 += 4;
        }

        while (v48 <= a17);
      }

      else
      {
        v45 = 0;
        v46 = a19;
      }

      _CF = a17 >= v45;
      v49 = a17 - v45;
      if (v49 != 0 && _CF)
      {
        do
        {
          *v46 = _Q0.n128_u64[0];
          v46 += 4;
          --v49;
        }

        while (v49);
      }

      a19 = (a19 + a20);
      v38 += a18;
    }

    while (v38 + *(a11 + 56) < *(a10 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(int32x4_t _Q0, int32x4_t _Q1, int32x4_t _Q2, double a4, int32x4_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t a14, unint64_t a15, unsigned int a16, float *a17, uint64_t a18)
{
  v18 = *a10;
  if (*(*a10 + 24))
  {
    _Q0.i64[0] = *v18;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v19 = *(v18 + 16);
  if (v19 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v19 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v51) = _H0;
    LOWORD(v51) = _H0;
    _Q0.i32[0] = v51;
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v25 = *a11;
  if (*(*a11 + 24))
  {
    _Q1.i64[0] = *v25;
  }

  else
  {
    _Q1.i64[0] = 0x7FF8000000000000;
  }

  v26 = *(v25 + 16);
  if (v26 == 2)
  {
    *_Q1.i32 = *_Q1.i64;
  }

  else if (v26 == 1)
  {
    __asm { FCVT            H1, D1 }

    HIWORD(v52) = _H1;
    LOWORD(v52) = _H1;
    _Q1.i32[0] = v52;
  }

  else
  {
    _Q1.i32[0] = *_Q1.i64;
    if (v26)
    {
      _Q1.i32[0] = _Q0.i32[0];
    }
  }

  v28 = *a12;
  if (*(*a12 + 24))
  {
    _Q2.i64[0] = *v28;
  }

  else
  {
    _Q2.i64[0] = 0x7FF8000000000000;
  }

  v29 = *(v28 + 16);
  if (v29 == 2)
  {
    *_Q2.i32 = *_Q2.i64;
  }

  else if (v29 == 1)
  {
    __asm { FCVT            H2, D2 }

    HIWORD(v53) = _H2;
    LOWORD(v53) = _H2;
    _Q2.i32[0] = v53;
  }

  else
  {
    _Q2.i32[0] = *_Q2.i64;
    if (v29)
    {
      _Q2.i32[0] = _Q0.i32[0];
    }
  }

  v31 = *a13;
  if (*(*a13 + 24))
  {
    _D3 = *v31;
  }

  else
  {
    _D3 = NAN;
  }

  v33 = *(v31 + 16);
  if (v33 == 2)
  {
    *a5.i32 = _D3;
  }

  else if (v33 == 1)
  {
    __asm { FCVT            H3, D3 }

    HIWORD(v54) = _H3;
    LOWORD(v54) = _H3;
    a5.i32[0] = v54;
  }

  else
  {
    LODWORD(v34) = _D3;
    if (v33)
    {
      a5.i32[0] = _Q0.i32[0];
    }

    else
    {
      *a5.i32 = v34;
    }
  }

  v36 = *(a9 + 52);
  if (*(a9 + 56) + v36 < *(a8 + 60))
  {
    v38 = _Q2.i32[0];
    v39 = vuzp1q_s32(_Q0, _Q2);
    v40 = vuzp1q_s32(v39, v39);
    v41 = vuzp1q_s32(_Q1, a5);
    v42 = vuzp1q_s32(v41, v41);
    _Q0.i32[2] = v38;
    _Q1.i32[1] = a5.i32[0];
    v43 = vzip1q_s32(vuzp1q_s32(_Q0, _Q0), _Q1);
    do
    {
      if (a15 >= 4)
      {
        v46 = 0;
        v47 = a17;
        do
        {
          v45 = (v47 + 16);
          vst2q_f32(v47, *v40.i8);
          v48 = v47 + 8;
          vst2q_f32(v48, *v40.i8);
          v44 = v46 + 4;
          v49 = v46 + 8;
          v46 += 4;
          v47 = v45;
        }

        while (v49 <= a15);
      }

      else
      {
        v44 = 0;
        v45 = a17;
      }

      _CF = a15 >= v44;
      v50 = a15 - v44;
      if (v50 != 0 && _CF)
      {
        do
        {
          *v45++ = v43;
          --v50;
        }

        while (v50);
      }

      a17 = (a17 + a18);
      v36 += a16;
    }

    while (v36 + *(a9 + 56) < *(a8 + 60));
  }
}