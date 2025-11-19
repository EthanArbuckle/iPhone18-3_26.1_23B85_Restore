uint64_t vImage.PixelBuffer<>.deinterleave(destination:)(uint64_t *a1)
{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*a1);
  vImage.PixelBuffer<>.deinterleave(planarDestinationBuffers:)(v1);
}

{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*a1);
  vImage.PixelBuffer<>.deinterleave(planarDestinationBuffers:)(v1);
}

{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*a1);
  vImage.PixelBuffer<>.deinterleave(planarDestinationBuffers:)(v1);
}

{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*a1);
  vImage.PixelBuffer<>.deinterleave(planarDestinationBuffers:)(v1);
}

vImage_Error vImage.PixelBuffer<>.overwriteChannels(withScalar:)(Pixel_8 a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
  }

  v3 = *(v2 + 48);
  *&v5.data = *(v2 + 32);
  *&v5.width = v3;
  return vImageOverwriteChannelsWithScalar_Planar8(a1, &v5, 0);
}

vImage_Error vImage.PixelBuffer<>.overwriteChannels(_:withScalar:destination:)(uint64_t a1, Pixel_8 a2, uint64_t *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    goto LABEL_42;
  }

  v5 = *(v4 + 48);
  if (v5 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v6 = *(v4 + 40);
  if (v6 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v5)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v6)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v7 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v8 = *(v7 + 48);
  if (v8 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v9 = *(v7 + 40);
  if (v9 < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v8)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!v9)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v5 != v8)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v6 != v9)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v10 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    src.data = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    data = src.data;
    v14 = (a1 + 32);
    do
    {
      v15 = *v14++;
      v16 = 3 - v15;
      if (((3 - v15) & 0xFFFFFF00) != 0)
      {
        goto LABEL_40;
      }

      src.data = data;
      v18 = data[1].u64[0];
      v17 = data[1].u64[1];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        data = src.data;
      }

      data[1].i64[0] = v19;
      data[2].i8[v18] = 1 << (v16 & 7);
      --v12;
    }

    while (v12);
    v10 = a2;
LABEL_21:
    if (v19 < 8)
    {
      v20 = 0;
      v21 = 0;
LABEL_32:
      v34 = v19 - v20;
      v35 = &data[2].i8[v20];
      do
      {
        v36 = *v35++;
        v21 |= v36;
        --v34;
      }

      while (v34);
LABEL_34:

      if (v21 > 0xFu)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (*(v4 + 16))
      {
        goto LABEL_36;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v19 >= 0x20)
    {
      v20 = v19 & 0xFFFFFFFFFFFFFFE0;
      v22 = data + 3;
      v23 = 0uLL;
      v24 = v19 & 0xFFFFFFFFFFFFFFE0;
      v25 = 0uLL;
      do
      {
        v23 = vorrq_s8(v22[-1], v23);
        v25 = vorrq_s8(*v22, v25);
        v22 += 2;
        v24 -= 32;
      }

      while (v24);
      v26 = vorrq_s8(v25, v23);
      *v26.i8 = vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
      v27 = v26.i64[0] | HIDWORD(v26.i64[0]) | ((v26.i64[0] | HIDWORD(v26.i64[0])) >> 16);
      v21 = v27 | BYTE1(v27);
      if (v19 == v20)
      {
        goto LABEL_34;
      }

      if ((v19 & 0x18) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    v28 = v20;
    v20 = v19 & 0xFFFFFFFFFFFFFFF8;
    v29 = v21;
    v30 = &data[2].i8[v28];
    v31 = v28 - (v19 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v32 = *v30++;
      v29 = vorr_s8(v32, v29);
      v31 += 8;
    }

    while (v31);
    v33 = *&v29 | HIDWORD(*&v29) | ((*&v29 | HIDWORD(*&v29)) >> 16);
    v21 = v33 | BYTE1(v33);
    if (v19 == v20)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  data = MEMORY[0x1E69E7CC0];
  v19 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v19)
  {
    goto LABEL_21;
  }

  v21 = 0;
  if (!*(v4 + 16))
  {
    goto LABEL_39;
  }

LABEL_36:
  v37 = *(v4 + 48);
  *&src.data = *(v4 + 32);
  *&src.width = v37;
  if (!*(v7 + 16))
  {
    goto LABEL_54;
  }

  v38 = *(v7 + 48);
  *&dest.data = *(v7 + 32);
  *&dest.width = v38;
  return vImageOverwriteChannelsWithScalar_ARGB8888(v10, &src, &dest, v21, 0);
}

vImage_Error vImage.PixelBuffer<>.overwriteChannels(_:withPixel:destination:)(uint64_t a1, uint8_t a2, uint8_t a3, uint8_t a4, uint8_t a5, uint64_t *a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = *v6;
  if (!*(*v6 + 16))
  {
    goto LABEL_41;
  }

  v8 = *(v7 + 48);
  if (v8 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = *(v7 + 40);
  if (v9 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = *a6;
  if (!*(*a6 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v11 = *(v10 + 48);
  if (v11 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = *(v10 + 40);
  if (v12 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v11)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v12)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v8 != v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v9 != v12)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v18 = *(a1 + 16);
  if (v18)
  {
    src.data = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    data = src.data;
    v20 = (a1 + 32);
    while (1)
    {
      v21 = *v20++;
      v22 = 3 - v21;
      if (((3 - v21) & 0xFFFFFF00) != 0)
      {
        break;
      }

      src.data = data;
      v24 = data[1].u64[0];
      v23 = data[1].u64[1];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        data = src.data;
      }

      data[1].i64[0] = v25;
      data[2].i8[v24] = 1 << (v22 & 7);
      if (!--v18)
      {
        v14 = a4;
        v13 = a5;
        v16 = a2;
        v15 = a3;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  data = MEMORY[0x1E69E7CC0];
  v25 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v25)
  {

    v27 = 0;
    goto LABEL_35;
  }

LABEL_21:
  if (v25 < 8)
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_32;
  }

  if (v25 >= 0x20)
  {
    v26 = v25 & 0xFFFFFFFFFFFFFFE0;
    v28 = data + 3;
    v29 = 0uLL;
    v30 = v25 & 0xFFFFFFFFFFFFFFE0;
    v31 = 0uLL;
    do
    {
      v29 = vorrq_s8(v28[-1], v29);
      v31 = vorrq_s8(*v28, v31);
      v28 += 2;
      v30 -= 32;
    }

    while (v30);
    v32 = vorrq_s8(v31, v29);
    *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v33 = v32.i64[0] | HIDWORD(v32.i64[0]) | ((v32.i64[0] | HIDWORD(v32.i64[0])) >> 16);
    v27 = v33 | BYTE1(v33);
    if (v25 == v26)
    {
      goto LABEL_34;
    }

    if ((v25 & 0x18) == 0)
    {
LABEL_32:
      v40 = v25 - v26;
      v41 = &data[2].i8[v26];
      do
      {
        v42 = *v41++;
        v27 |= v42;
        --v40;
      }

      while (v40);
      goto LABEL_34;
    }
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  v34 = v26;
  v26 = v25 & 0xFFFFFFFFFFFFFFF8;
  v35 = v27;
  v36 = &data[2].i8[v34];
  v37 = v34 - (v25 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v38 = *v36++;
    v35 = vorr_s8(v38, v35);
    v37 += 8;
  }

  while (v37);
  v39 = *&v35 | HIDWORD(*&v35) | ((*&v35 | HIDWORD(*&v35)) >> 16);
  v27 = v39 | BYTE1(v39);
  if (v25 != v26)
  {
    goto LABEL_32;
  }

LABEL_34:

  if (v27 > 0xFu)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_35:
  v52[0] = v16;
  v52[1] = v15;
  v52[2] = v14;
  v52[3] = v13;
  if (!*(v7 + 16))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v43 = *(v7 + 48);
  *&src.data = *(v7 + 32);
  *&src.width = v43;
  if (!*(v10 + 16))
  {
    goto LABEL_54;
  }

  v44 = *(v10 + 48);
  *&dest.data = *(v10 + 32);
  *&dest.width = v44;
  return vImageOverwriteChannelsWithPixel_ARGB8888(v52, &src, &dest, v27, 0);
}

uint64_t vImage.PixelBuffer<>.overwriteChannels(_:withInterleavedBuffer:destination:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = MEMORY[0x1E6958AA0];

  return vImage.PixelBuffer<>.overwriteChannels(_:withInterleavedBuffer:destination:)(a1, a2, a3, v3);
}

{
  v3 = MEMORY[0x1E6958AA8];

  return vImage.PixelBuffer<>.overwriteChannels(_:withInterleavedBuffer:destination:)(a1, a2, a3, v3);
}

uint64_t vImage.PixelBuffer<>.overwriteChannels(_:withPlanarBuffer:destination:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = MEMORY[0x1E6958988];

  return vImage.PixelBuffer<>.overwriteChannels(_:withInterleavedBuffer:destination:)(a1, a2, a3, v3);
}

{
  v3 = MEMORY[0x1E6958990];

  return vImage.PixelBuffer<>.overwriteChannels(_:withInterleavedBuffer:destination:)(a1, a2, a3, v3);
}

vImage_Error vImage.PixelBuffer<>.overwriteChannels(withScalar:)(Pixel_16F a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
  }

  v3 = *(v2 + 48);
  *&v5.data = *(v2 + 32);
  *&v5.width = v3;
  return vImageOverwriteChannelsWithScalar_Planar16F(a1, &v5, 0);
}

vImage_Error vImage.PixelBuffer<>.overwriteChannels(_:withPixel:destination:)(uint64_t a1, uint16_t a2, uint16_t a3, uint16_t a4, uint16_t a5, uint64_t *a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = *v6;
  if (!*(*v6 + 16))
  {
    goto LABEL_41;
  }

  v8 = *(v7 + 48);
  if (v8 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = *(v7 + 40);
  if (v9 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = *a6;
  if (!*(*a6 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v11 = *(v10 + 48);
  if (v11 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = *(v10 + 40);
  if (v12 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v11)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v12)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v8 != v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v9 != v12)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v18 = *(a1 + 16);
  if (v18)
  {
    src.data = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    data = src.data;
    v20 = (a1 + 32);
    while (1)
    {
      v21 = *v20++;
      v22 = 3 - v21;
      if (((3 - v21) & 0xFFFFFF00) != 0)
      {
        break;
      }

      src.data = data;
      v24 = data[1].u64[0];
      v23 = data[1].u64[1];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        data = src.data;
      }

      data[1].i64[0] = v25;
      data[2].i8[v24] = 1 << (v22 & 7);
      if (!--v18)
      {
        v14 = a4;
        v13 = a5;
        v16 = a2;
        v15 = a3;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  data = MEMORY[0x1E69E7CC0];
  v25 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v25)
  {

    v27 = 0;
    goto LABEL_35;
  }

LABEL_21:
  if (v25 < 8)
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_32;
  }

  if (v25 >= 0x20)
  {
    v26 = v25 & 0xFFFFFFFFFFFFFFE0;
    v28 = data + 3;
    v29 = 0uLL;
    v30 = v25 & 0xFFFFFFFFFFFFFFE0;
    v31 = 0uLL;
    do
    {
      v29 = vorrq_s8(v28[-1], v29);
      v31 = vorrq_s8(*v28, v31);
      v28 += 2;
      v30 -= 32;
    }

    while (v30);
    v32 = vorrq_s8(v31, v29);
    *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v33 = v32.i64[0] | HIDWORD(v32.i64[0]) | ((v32.i64[0] | HIDWORD(v32.i64[0])) >> 16);
    v27 = v33 | BYTE1(v33);
    if (v25 == v26)
    {
      goto LABEL_34;
    }

    if ((v25 & 0x18) == 0)
    {
LABEL_32:
      v40 = v25 - v26;
      v41 = &data[2].i8[v26];
      do
      {
        v42 = *v41++;
        v27 |= v42;
        --v40;
      }

      while (v40);
      goto LABEL_34;
    }
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  v34 = v26;
  v26 = v25 & 0xFFFFFFFFFFFFFFF8;
  v35 = v27;
  v36 = &data[2].i8[v34];
  v37 = v34 - (v25 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v38 = *v36++;
    v35 = vorr_s8(v38, v35);
    v37 += 8;
  }

  while (v37);
  v39 = *&v35 | HIDWORD(*&v35) | ((*&v35 | HIDWORD(*&v35)) >> 16);
  v27 = v39 | BYTE1(v39);
  if (v25 != v26)
  {
    goto LABEL_32;
  }

LABEL_34:

  if (v27 > 0xFu)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_35:
  v52[0] = v16;
  v52[1] = v15;
  v52[2] = v14;
  v52[3] = v13;
  if (!*(v7 + 16))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v43 = *(v7 + 48);
  *&src.data = *(v7 + 32);
  *&src.width = v43;
  if (!*(v10 + 16))
  {
    goto LABEL_54;
  }

  v44 = *(v10 + 48);
  *&dest.data = *(v10 + 32);
  *&dest.width = v44;
  return vImageOverwriteChannelsWithPixel_ARGB16U(v52, &src, &dest, v27, 0);
}

vImage_Error vImage.PixelBuffer<>.overwriteChannels(withScalar:)(Pixel_F a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
  }

  v3 = *(v2 + 48);
  *&v5.data = *(v2 + 32);
  *&v5.width = v3;
  return vImageOverwriteChannelsWithScalar_PlanarF(a1, &v5, 0);
}

vImage_Error vImage.PixelBuffer<>.overwriteChannels(_:withScalar:destination:)(uint64_t a1, uint64_t *a2, Pixel_F a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    goto LABEL_42;
  }

  v5 = *(v4 + 48);
  if (v5 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v6 = *(v4 + 40);
  if (v6 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v5)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v6)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v7 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v8 = *(v7 + 48);
  if (v8 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v9 = *(v7 + 40);
  if (v9 < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v8)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!v9)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v5 != v8)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v6 != v9)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    src.data = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    data = src.data;
    v14 = (a1 + 32);
    while (1)
    {
      v15 = *v14++;
      v16 = 3 - v15;
      if (((3 - v15) & 0xFFFFFF00) != 0)
      {
        goto LABEL_40;
      }

      src.data = data;
      v18 = data[1].u64[0];
      v17 = data[1].u64[1];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        data = src.data;
      }

      data[1].i64[0] = v19;
      data[2].i8[v18] = 1 << (v16 & 7);
      if (!--v12)
      {
        goto LABEL_21;
      }
    }
  }

  data = MEMORY[0x1E69E7CC0];
  v19 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v19)
  {

    v21 = 0;
    if (*(v4 + 16))
    {
      goto LABEL_36;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_21:
  if (v19 < 8)
  {
    v20 = 0;
    v21 = 0;
    goto LABEL_32;
  }

  if (v19 >= 0x20)
  {
    v20 = v19 & 0xFFFFFFFFFFFFFFE0;
    v22 = data + 3;
    v23 = 0uLL;
    v24 = v19 & 0xFFFFFFFFFFFFFFE0;
    v25 = 0uLL;
    do
    {
      v23 = vorrq_s8(v22[-1], v23);
      v25 = vorrq_s8(*v22, v25);
      v22 += 2;
      v24 -= 32;
    }

    while (v24);
    v26 = vorrq_s8(v25, v23);
    *v26.i8 = vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
    v27 = v26.i64[0] | HIDWORD(v26.i64[0]) | ((v26.i64[0] | HIDWORD(v26.i64[0])) >> 16);
    v21 = v27 | BYTE1(v27);
    if (v19 == v20)
    {
      goto LABEL_34;
    }

    if ((v19 & 0x18) == 0)
    {
LABEL_32:
      v34 = v19 - v20;
      v35 = &data[2].i8[v20];
      do
      {
        v36 = *v35++;
        v21 |= v36;
        --v34;
      }

      while (v34);
      goto LABEL_34;
    }
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v28 = v20;
  v20 = v19 & 0xFFFFFFFFFFFFFFF8;
  v29 = v21;
  v30 = &data[2].i8[v28];
  v31 = v28 - (v19 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v32 = *v30++;
    v29 = vorr_s8(v32, v29);
    v31 += 8;
  }

  while (v31);
  v33 = *&v29 | HIDWORD(*&v29) | ((*&v29 | HIDWORD(*&v29)) >> 16);
  v21 = v33 | BYTE1(v33);
  if (v19 != v20)
  {
    goto LABEL_32;
  }

LABEL_34:

  if (v21 > 0xFu)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_39;
  }

LABEL_36:
  v37 = *(v4 + 48);
  *&src.data = *(v4 + 32);
  *&src.width = v37;
  if (!*(v7 + 16))
  {
    goto LABEL_54;
  }

  v38 = *(v7 + 48);
  *&v40.data = *(v7 + 32);
  *&v40.width = v38;
  return vImageOverwriteChannelsWithScalar_ARGBFFFF(a3, &src, &v40, v21, 0);
}

vImage_Error vImage.PixelBuffer<>.overwriteChannels(_:withPixel:destination:)(uint64_t a1, uint64_t *a2, float a3, float a4, float a5, float a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = *v6;
  if (!*(*v6 + 16))
  {
    goto LABEL_41;
  }

  v8 = *(v7 + 48);
  if (v8 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = *(v7 + 40);
  if (v9 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v11 = *(v10 + 48);
  if (v11 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = *(v10 + 40);
  if (v12 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v11)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v12)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v8 != v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v9 != v12)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v18 = *(a1 + 16);
  if (v18)
  {
    src.data = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    data = src.data;
    v20 = (a1 + 32);
    while (1)
    {
      v21 = *v20++;
      v22 = 3 - v21;
      if (((3 - v21) & 0xFFFFFF00) != 0)
      {
        break;
      }

      src.data = data;
      v24 = data[1].u64[0];
      v23 = data[1].u64[1];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        data = src.data;
      }

      data[1].i64[0] = v25;
      data[2].i8[v24] = 1 << (v22 & 7);
      if (!--v18)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  data = MEMORY[0x1E69E7CC0];
  v25 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v25)
  {

    v27 = 0;
    goto LABEL_35;
  }

LABEL_21:
  if (v25 < 8)
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_32;
  }

  if (v25 >= 0x20)
  {
    v26 = v25 & 0xFFFFFFFFFFFFFFE0;
    v28 = data + 3;
    v29 = 0uLL;
    v30 = v25 & 0xFFFFFFFFFFFFFFE0;
    v31 = 0uLL;
    do
    {
      v29 = vorrq_s8(v28[-1], v29);
      v31 = vorrq_s8(*v28, v31);
      v28 += 2;
      v30 -= 32;
    }

    while (v30);
    v32 = vorrq_s8(v31, v29);
    *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v33 = v32.i64[0] | HIDWORD(v32.i64[0]) | ((v32.i64[0] | HIDWORD(v32.i64[0])) >> 16);
    v27 = v33 | BYTE1(v33);
    if (v25 == v26)
    {
      goto LABEL_34;
    }

    if ((v25 & 0x18) == 0)
    {
LABEL_32:
      v40 = v25 - v26;
      v41 = &data[2].i8[v26];
      do
      {
        v42 = *v41++;
        v27 |= v42;
        --v40;
      }

      while (v40);
      goto LABEL_34;
    }
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  v34 = v26;
  v26 = v25 & 0xFFFFFFFFFFFFFFF8;
  v35 = v27;
  v36 = &data[2].i8[v34];
  v37 = v34 - (v25 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v38 = *v36++;
    v35 = vorr_s8(v38, v35);
    v37 += 8;
  }

  while (v37);
  v39 = *&v35 | HIDWORD(*&v35) | ((*&v35 | HIDWORD(*&v35)) >> 16);
  v27 = v39 | BYTE1(v39);
  if (v25 != v26)
  {
    goto LABEL_32;
  }

LABEL_34:

  if (v27 > 0xFu)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_35:
  v48[0] = a3;
  v48[1] = a4;
  v48[2] = a5;
  v48[3] = a6;
  if (!*(v7 + 16))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v43 = *(v7 + 48);
  *&src.data = *(v7 + 32);
  *&src.width = v43;
  if (!*(v10 + 16))
  {
    goto LABEL_54;
  }

  v44 = *(v10 + 48);
  *&v46.data = *(v10 + 32);
  *&v46.width = v44;
  return vImageOverwriteChannelsWithPixel_ARGBFFFF(v48, &src, &v46, v27, 0);
}

uint64_t vImage.PixelBuffer<>.overwriteChannels(_:withInterleavedBuffer:destination:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(_OWORD *, _OWORD *, _OWORD *, void, void))
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = *v4;
  if (!*(*v4 + 16))
  {
    goto LABEL_50;
  }

  v6 = *(v5 + 48);
  if (v6 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v7 = *(v5 + 40);
  if (v7 < 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v6)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (!v7)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v8 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v9 = *(v8 + 48);
  if (v9 < 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v10 = *(v8 + 40);
  if (v10 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!v9)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v10)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v6 != v9)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v7 != v10)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v11 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v12 = *(v11 + 48);
  if (v12 < 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v13 = *(v11 + 40);
  if (v13 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (!v12)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (!v13)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v6 != v12)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v7 != v13)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v14 = a4;
  v16 = *(a1 + 16);
  if (v16)
  {
    v45 = *v4;
    *&v49[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = *&v49[0];
    v18 = (a1 + 32);
    do
    {
      v19 = *v18++;
      v20 = 3 - v19;
      if (((3 - v19) & 0xFFFFFF00) != 0)
      {
        goto LABEL_48;
      }

      *&v49[0] = v17;
      v22 = v17[1].u64[0];
      v21 = v17[1].u64[1];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v17 = *&v49[0];
      }

      v17[1].i64[0] = v23;
      v17[2].i8[v22] = 1 << (v20 & 7);
      --v16;
    }

    while (v16);
    v5 = v45;
    v14 = a4;
LABEL_28:
    if (v23 < 8)
    {
      v24 = 0;
      v25 = 0;
LABEL_39:
      v38 = v23 - v24;
      v39 = &v17[2].i8[v24];
      do
      {
        v40 = *v39++;
        v25 |= v40;
        --v38;
      }

      while (v38);
LABEL_41:

      if (v25 > 0xFu)
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (*(v11 + 16))
      {
        goto LABEL_43;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v23 >= 0x20)
    {
      v24 = v23 & 0xFFFFFFFFFFFFFFE0;
      v26 = v17 + 3;
      v27 = 0uLL;
      v28 = v23 & 0xFFFFFFFFFFFFFFE0;
      v29 = 0uLL;
      do
      {
        v27 = vorrq_s8(v26[-1], v27);
        v29 = vorrq_s8(*v26, v29);
        v26 += 2;
        v28 -= 32;
      }

      while (v28);
      v30 = vorrq_s8(v29, v27);
      *v30.i8 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
      v31 = v30.i64[0] | HIDWORD(v30.i64[0]) | ((v30.i64[0] | HIDWORD(v30.i64[0])) >> 16);
      v25 = v31 | BYTE1(v31);
      if (v23 == v24)
      {
        goto LABEL_41;
      }

      if ((v23 & 0x18) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v32 = v24;
    v24 = v23 & 0xFFFFFFFFFFFFFFF8;
    v33 = v25;
    v34 = &v17[2].i8[v32];
    v35 = v32 - (v23 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v36 = *v34++;
      v33 = vorr_s8(v36, v33);
      v35 += 8;
    }

    while (v35);
    v37 = *&v33 | HIDWORD(*&v33) | ((*&v33 | HIDWORD(*&v33)) >> 16);
    v25 = v37 | BYTE1(v37);
    if (v23 == v24)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v23 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v23)
  {
    goto LABEL_28;
  }

  v25 = 0;
  if (!*(v11 + 16))
  {
    goto LABEL_47;
  }

LABEL_43:
  v41 = *(v11 + 48);
  v49[0] = *(v11 + 32);
  v49[1] = v41;
  if (!*(v5 + 16))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  v42 = *(v5 + 48);
  v48[0] = *(v5 + 32);
  v48[1] = v42;
  if (!*(v8 + 16))
  {
    goto LABEL_70;
  }

  v43 = *(v8 + 48);
  v47[0] = *(v8 + 32);
  v47[1] = v43;
  return v14(v49, v48, v47, v25, 0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BNNSOptimizer.step(parameters:gradients:accumulators:filterParameters:)(Swift::OpaquePointer parameters, Swift::OpaquePointer gradients, Swift::OpaquePointer accumulators, BNNSFilterParameters_optional *filterParameters)
{
  BNNSOptimizer.step(parameters:gradients:accumulators:filterParameters:)(parameters, gradients, accumulators, filterParameters);
}

{
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v17 = v6;
  v18 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v7, v8);
  specialized static BNNS.optimizerStep(function:parameters:gradients:accumulators:filterParameters:)(v16, parameters._rawValue, gradients._rawValue, accumulators._rawValue, filterParameters, v10, v9);
  __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t closure #1 in closure #4 in static BNNS.optimizerStep(function:parameters:gradients:accumulators:filterParameters:)(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4, char **a5, char **a6, char **a7, uint64_t a8)
{
  v15 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v15);
  v17 = (*(v16 + 16))(v15, v16);
  v18 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2), 0, v18);
  }

  *a5 = v18;
  v20 = *a6;

  v21 = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v20;
  if ((v21 & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2), 0, v20);
  }

  *a6 = v20;
  v22 = *a7;

  v23 = swift_isUniquelyReferenced_nonNull_native();
  *a7 = v22;
  if ((v23 & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2), 0, v22);
  }

  *a7 = v22;
  v24 = MEMORY[0x1B8CB1D90](v17, a1, a4, v18 + 32, v20 + 32, v22 + 32, a8);

  *a2 = v24;
  return result;
}

uint64_t BNNS.AdamOptimizer.accumulatorCountMultiplier.getter()
{
  if (*(v0 + 53))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

void BNNS.AdamOptimizer.learningRate.setter(float a1)
{
  v2 = (*(v1 + 52) & 1) != 0;
  *v1 = a1;
  *(v1 + 52) = v2;
}

_DWORD *(*BNNS.AdamOptimizer.learningRate.modify(uint64_t a1))(_DWORD *result, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return BNNS.AdamOptimizer.learningRate.modify;
}

_DWORD *BNNS.AdamOptimizer.learningRate.modify(_DWORD *result, char a2)
{
  v2 = *result;
  v3 = (*(*result + 52) & 1) != 0;
  if (a2)
  {
    v3 = (*(*result + 52) & 1) != 0;
  }

  *v2 = result[2];
  *(v2 + 52) = v3;
  return result;
}

void BNNS.AdamOptimizer.beta1.setter(float a1)
{
  v2 = (*(v1 + 52) & 1) != 0;
  *(v1 + 4) = a1;
  *(v1 + 52) = v2;
}

_DWORD *(*BNNS.AdamOptimizer.beta1.modify(uint64_t a1))(_DWORD *result, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return BNNS.AdamOptimizer.beta1.modify;
}

_DWORD *BNNS.AdamOptimizer.beta1.modify(_DWORD *result, char a2)
{
  v2 = *result;
  v3 = (*(*result + 52) & 1) != 0;
  if (a2)
  {
    v3 = (*(*result + 52) & 1) != 0;
  }

  *(v2 + 4) = result[2];
  *(v2 + 52) = v3;
  return result;
}

void BNNS.AdamOptimizer.beta2.setter(float a1)
{
  v2 = (*(v1 + 52) & 1) != 0;
  *(v1 + 8) = a1;
  *(v1 + 52) = v2;
}

_DWORD *(*BNNS.AdamOptimizer.beta2.modify(uint64_t a1))(_DWORD *result, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return BNNS.AdamOptimizer.beta2.modify;
}

_DWORD *BNNS.AdamOptimizer.beta2.modify(_DWORD *result, char a2)
{
  v2 = *result;
  v3 = (*(*result + 52) & 1) != 0;
  if (a2)
  {
    v3 = (*(*result + 52) & 1) != 0;
  }

  *(v2 + 8) = result[2];
  *(v2 + 52) = v3;
  return result;
}

void BNNS.AdamOptimizer.timeStep.setter(float a1)
{
  v2 = (*(v1 + 52) & 1) != 0;
  *(v1 + 12) = a1;
  *(v1 + 52) = v2;
}

_DWORD *(*BNNS.AdamOptimizer.timeStep.modify(uint64_t a1))(_DWORD *result, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return BNNS.AdamOptimizer.timeStep.modify;
}

_DWORD *BNNS.AdamOptimizer.timeStep.modify(_DWORD *result, char a2)
{
  v2 = *result;
  v3 = (*(*result + 52) & 1) != 0;
  if (a2)
  {
    v3 = (*(*result + 52) & 1) != 0;
  }

  *(v2 + 12) = result[2];
  *(v2 + 52) = v3;
  return result;
}

void BNNS.AdamOptimizer.epsilon.setter(float a1)
{
  v2 = (*(v1 + 52) & 1) != 0;
  *(v1 + 16) = a1;
  *(v1 + 52) = v2;
}

_DWORD *(*BNNS.AdamOptimizer.epsilon.modify(uint64_t a1))(_DWORD *result, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return BNNS.AdamOptimizer.epsilon.modify;
}

_DWORD *BNNS.AdamOptimizer.epsilon.modify(_DWORD *result, char a2)
{
  v2 = *result;
  v3 = (*(*result + 52) & 1) != 0;
  if (a2)
  {
    v3 = (*(*result + 52) & 1) != 0;
  }

  *(v2 + 16) = result[2];
  *(v2 + 52) = v3;
  return result;
}

void BNNS.AdamOptimizer.gradientScale.setter(float a1)
{
  v2 = (*(v1 + 52) & 1) != 0;
  *(v1 + 20) = a1;
  *(v1 + 52) = v2;
}

_DWORD *(*BNNS.AdamOptimizer.gradientScale.modify(uint64_t a1))(_DWORD *result, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 20);
  return BNNS.AdamOptimizer.gradientScale.modify;
}

_DWORD *BNNS.AdamOptimizer.gradientScale.modify(_DWORD *result, char a2)
{
  v2 = *result;
  v3 = (*(*result + 52) & 1) != 0;
  if (a2)
  {
    v3 = (*(*result + 52) & 1) != 0;
  }

  *(v2 + 20) = result[2];
  *(v2 + 52) = v3;
  return result;
}

void BNNS.AdamOptimizer.regularizationScale.setter(float a1)
{
  v2 = (*(v1 + 52) & 1) != 0;
  *(v1 + 24) = a1;
  *(v1 + 52) = v2;
}

_DWORD *(*BNNS.AdamOptimizer.regularizationScale.modify(uint64_t a1))(_DWORD *result, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return BNNS.AdamOptimizer.regularizationScale.modify;
}

_DWORD *BNNS.AdamOptimizer.regularizationScale.modify(_DWORD *result, char a2)
{
  v2 = *result;
  v3 = (*(*result + 52) & 1) != 0;
  if (a2)
  {
    v3 = (*(*result + 52) & 1) != 0;
  }

  *(v2 + 24) = result[2];
  *(v2 + 52) = v3;
  return result;
}

unint64_t BNNS.AdamOptimizer.gradientBounds.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 36);
  if ((*(v0 + 52) & 1) == 0)
  {
    if (*(v0 + 28))
    {
      if (v2 >= *&v1)
      {
        return v1 | (LODWORD(v2) << 32);
      }

      goto LABEL_10;
    }

    return 0;
  }

  if (v1 != 1)
  {
    return 0;
  }

  v3 = *(v0 + 40);
  if (v2 <= v3)
  {
    return LODWORD(v2) | (LODWORD(v3) << 32);
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t BNNS.AdamOptimizer.gradientBounds.setter(uint64_t result, char a2)
{
  v4 = *(&result + 1);
  v3 = *&result;
  if (*(v2 + 52))
  {
    if (a2)
    {
      v4 = 0.0;
      v3 = 0.0;
    }

    v5 = 1;
    LODWORD(v6) = (a2 & 1) == 0;
    *(v2 + 40) = v4;
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = *&result;
    }

    if (a2)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = *(&result + 1);
    }

    *(v2 + 28) = (a2 & 1) == 0;
  }

  *(v2 + 32) = v6;
  *(v2 + 36) = v3;
  *(v2 + 52) = v5;
  return result;
}

uint64_t (*BNNS.AdamOptimizer.gradientBounds.modify(uint64_t (*result)(uint64_t a1)))(uint64_t a1)
{
  *result = v1;
  v2 = *(v1 + 32);
  v3 = *(v1 + 36);
  if ((*(v1 + 52) & 1) == 0)
  {
    if (*(v1 + 28))
    {
      if (v3 >= v2)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

LABEL_8:
    v5 = 0;
    v4 = 1;
    goto LABEL_9;
  }

  if (LODWORD(v2) != 1)
  {
    goto LABEL_8;
  }

  if (v3 <= *(v1 + 40))
  {
    v2 = *(v1 + 36);
    v3 = *(v1 + 40);
LABEL_7:
    v4 = 0;
    v5 = LODWORD(v2) | (LODWORD(v3) << 32);
LABEL_9:
    *(result + 1) = v5;
    *(result + 16) = v4;
    return BNNS.AdamOptimizer.gradientBounds.modify;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t BNNS.AdamOptimizer.regularizationFunction.getter()
{
  v1 = 40;
  if (*(v0 + 52))
  {
    v1 = 28;
  }

  return *(v0 + v1);
}

uint64_t BNNS.AdamOptimizer.regularizationFunction.setter(uint64_t result)
{
  if (*(v1 + 52))
  {
    v2 = 1;
    *(v1 + 28) = result;
  }

  else
  {
    v2 = 0;
    *(v1 + 40) = result;
  }

  *(v1 + 52) = v2;
  return result;
}

uint64_t *(*BNNS.AdamOptimizer.regularizationFunction.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v2 = 40;
  if (*(v1 + 52))
  {
    v2 = 28;
  }

  *(a1 + 8) = *(v1 + v2);
  return BNNS.AdamOptimizer.regularizationFunction.modify;
}

uint64_t *BNNS.AdamOptimizer.regularizationFunction.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v5 = *(a1 + 2);
  result = a1 + 1;
  v4 = v5;
  if ((a2 & 1) == 0)
  {
    if (*(v2 + 52))
    {
      v6 = 1;
      *(v2 + 28) = v4;
      goto LABEL_9;
    }

    v6 = 0;
LABEL_8:
    *(v2 + 40) = v4;
    goto LABEL_9;
  }

  if ((*(v2 + 52) & 1) == 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v6 = 1;
  *(v2 + 28) = v4;
LABEL_9:
  *(v2 + 52) = v6;
  return result;
}

uint64_t BNNS.AdamOptimizer.init(learningRate:beta1:beta2:timeStep:epsilon:gradientScale:regularizationScale:clipsGradientsTo:regularizationFunction:)@<X0>(uint64_t result@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, float a7@<S2>, float a8@<S3>, float a9@<S4>, float a10@<S5>, float a11@<S6>)
{
  *a4 = a5;
  *(a4 + 4) = a6;
  *(a4 + 8) = a7;
  *(a4 + 12) = a8;
  v11 = *(&result + 1);
  *(a4 + 16) = a9;
  *(a4 + 20) = a10;
  *(a4 + 24) = a11;
  v12 = 0.0;
  if (a2)
  {
    v11 = 0.0;
  }

  *(a4 + 28) = a3;
  *(a4 + 32) = (a2 & 1) == 0;
  if ((a2 & 1) == 0)
  {
    v12 = *&result;
  }

  *(a4 + 36) = v12;
  *(a4 + 40) = v11;
  *(a4 + 44) = 0;
  *(a4 + 48) = 0;
  *(a4 + 52) = 1;
  return result;
}

uint64_t BNNS.AdamOptimizer.bnnsOptimizerFunction.getter()
{
  if (*(v0 + 53))
  {
    v1 = 11;
  }

  else
  {
    v1 = 8;
  }

  if (*(v0 + 52))
  {
    return v1;
  }

  else
  {
    return 2;
  }
}

uint64_t protocol witness for BNNSOptimizer.step(parameters:gradients:accumulators:filterParameters:) in conformance BNNS.AdamOptimizer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19[3] = a8;
  v19[4] = a9;
  v16 = swift_allocObject();
  v19[0] = v16;
  v17 = *(v9 + 16);
  *(v16 + 16) = *v9;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v9 + 32);
  *(v16 + 62) = *(v9 + 46);
  specialized static BNNS.optimizerStep(function:parameters:gradients:accumulators:filterParameters:)(v19, a1, a2, a3, a4, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t protocol witness for BNNSOptimizer.bnnsOptimizerFunction.getter in conformance BNNS.AdamOptimizer()
{
  if (*(v0 + 53))
  {
    v1 = 11;
  }

  else
  {
    v1 = 8;
  }

  if (*(v0 + 52))
  {
    return v1;
  }

  else
  {
    return 2;
  }
}

uint64_t protocol witness for BNNSOptimizer.accumulatorCountMultiplier.getter in conformance BNNS.AdamOptimizer()
{
  if (*(v0 + 53))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t protocol witness for WithOptimizerAlgFields.withOptimizerAlgFields(body:) in conformance BNNS.AdamOptimizer(uint64_t (*a1)(_OWORD *))
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  *v5 = *(v1 + 32);
  *&v5[13] = *(v1 + 45);
  return a1(v4);
}

uint64_t BNNS.RMSPropOptimizer.accumulatorCountMultiplier.getter()
{
  v1 = 1;
  if ((*(v0 + 16) & 0x7FFFFFFF) != 0)
  {
    v1 = 2;
  }

  return v1 + (HIDWORD(*(v0 + 8)) & 1);
}

_DWORD *key path setter for BNNS.RMSPropOptimizer.learningRate : BNNS.RMSPropOptimizer(_DWORD *result, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  *a2 = *result;
  *(a2 + 4) = v2;
  *(a2 + 8) = v3;
  *(a2 + 12) = BYTE4(v3) & 1;
  if (v3 < 0)
  {
    *(a2 + 15) = 0x80;
    *(a2 + 13) = 0;
    *(a2 + 16) = v5;
    *(a2 + 20) = v4;
    *(a2 + 24) = v7;
    *(a2 + 40) = v8;
    *(a2 + 32) = v6;
  }

  else
  {
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    *(a2 + 16) = v5;
    *(a2 + 20) = v4;
    *(a2 + 24) = v7;
    *(a2 + 28) = BYTE4(v7) & 1;
    *(a2 + 32) = v6;
    *(a2 + 40) = v8;
  }

  return result;
}

void BNNS.RMSPropOptimizer.learningRate.setter(float a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 20);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v1 = a1;
  *(v1 + 4) = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = BYTE4(v3) & 1;
  if (v3 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 16) = v5;
    *(v1 + 20) = v4;
    *(v1 + 24) = v7;
    *(v1 + 40) = v8;
    *(v1 + 32) = v6;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 16) = v5;
    *(v1 + 20) = v4;
    *(v1 + 24) = v7;
    *(v1 + 28) = BYTE4(v7) & 1;
    *(v1 + 32) = v6;
    *(v1 + 40) = v8;
  }
}

uint64_t *(*BNNS.RMSPropOptimizer.learningRate.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return BNNS.RMSPropOptimizer.learningRate.modify;
}

uint64_t *BNNS.RMSPropOptimizer.learningRate.modify(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(a1 + 2);
  result = a1 + 1;
  v4 = *(v1 + 4);
  v6 = *(v1 + 8);
  v5 = *(v1 + 16);
  v8 = *(v1 + 24);
  v7 = *(v1 + 32);
  v9 = *(v1 + 40);
  *v1 = v3;
  *(v1 + 4) = v4;
  *(v1 + 8) = v6;
  *(v1 + 12) = BYTE4(v6) & 1;
  if (v6 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 28) = HIDWORD(v8);
    *(v1 + 40) = v9;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 28) = BYTE4(v8) & 1;
    *(v1 + 40) = v9;
  }

  *(v1 + 16) = v5;
  *(v1 + 24) = v8;
  *(v1 + 32) = v7;
  return result;
}

int *key path setter for BNNS.RMSPropOptimizer.alpha : BNNS.RMSPropOptimizer(int *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  *a2 = *a2;
  *(a2 + 4) = v2;
  *(a2 + 8) = v3;
  *(a2 + 12) = BYTE4(v3) & 1;
  if (v3 < 0)
  {
    *(a2 + 15) = 0x80;
    *(a2 + 13) = 0;
    *(a2 + 16) = v5;
    *(a2 + 20) = v4;
    *(a2 + 24) = v7;
    *(a2 + 40) = v8;
    *(a2 + 32) = v6;
  }

  else
  {
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    *(a2 + 16) = v5;
    *(a2 + 20) = v4;
    *(a2 + 24) = v7;
    *(a2 + 28) = BYTE4(v7) & 1;
    *(a2 + 32) = v6;
    *(a2 + 40) = v8;
  }

  return result;
}

void BNNS.RMSPropOptimizer.alpha.setter(float a1)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 20);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v1 = *v1;
  *(v1 + 4) = a1;
  *(v1 + 8) = v2;
  *(v1 + 12) = BYTE4(v2) & 1;
  if (v2 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 16) = v4;
    *(v1 + 20) = v3;
    *(v1 + 24) = v6;
    *(v1 + 40) = v7;
    *(v1 + 32) = v5;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 16) = v4;
    *(v1 + 20) = v3;
    *(v1 + 24) = v6;
    *(v1 + 28) = BYTE4(v6) & 1;
    *(v1 + 32) = v5;
    *(v1 + 40) = v7;
  }
}

uint64_t *(*BNNS.RMSPropOptimizer.alpha.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return BNNS.RMSPropOptimizer.alpha.modify;
}

uint64_t *BNNS.RMSPropOptimizer.alpha.modify(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(a1 + 2);
  result = a1 + 1;
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v1 = *v1;
  *(v1 + 4) = v3;
  *(v1 + 8) = v5;
  *(v1 + 12) = BYTE4(v5) & 1;
  if (v5 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 28) = HIDWORD(v7);
    *(v1 + 40) = v8;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 28) = BYTE4(v7) & 1;
    *(v1 + 40) = v8;
  }

  *(v1 + 16) = v4;
  *(v1 + 24) = v7;
  *(v1 + 32) = v6;
  return result;
}

int *key path setter for BNNS.RMSPropOptimizer.epsilon : BNNS.RMSPropOptimizer(int *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 20);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  *a2 = *a2;
  *(a2 + 4) = v3;
  *(a2 + 8) = v2;
  *(a2 + 12) = BYTE4(v4) & 1;
  if (v4 < 0)
  {
    *(a2 + 15) = 0x80;
    *(a2 + 13) = 0;
    *(a2 + 16) = v6;
    *(a2 + 20) = v5;
    *(a2 + 24) = v8;
    *(a2 + 40) = v9;
    *(a2 + 32) = v7;
  }

  else
  {
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    *(a2 + 16) = v6;
    *(a2 + 20) = v5;
    *(a2 + 24) = v8;
    *(a2 + 28) = BYTE4(v8) & 1;
    *(a2 + 32) = v7;
    *(a2 + 40) = v9;
  }

  return result;
}

void BNNS.RMSPropOptimizer.epsilon.setter(float a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 20);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v1 = *v1;
  *(v1 + 4) = v2;
  *(v1 + 8) = a1;
  *(v1 + 12) = BYTE4(v3) & 1;
  if (v3 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 16) = v5;
    *(v1 + 20) = v4;
    *(v1 + 24) = v7;
    *(v1 + 40) = v8;
    *(v1 + 32) = v6;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 16) = v5;
    *(v1 + 20) = v4;
    *(v1 + 24) = v7;
    *(v1 + 28) = BYTE4(v7) & 1;
    *(v1 + 32) = v6;
    *(v1 + 40) = v8;
  }
}

uint64_t *(*BNNS.RMSPropOptimizer.epsilon.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return BNNS.RMSPropOptimizer.epsilon.modify;
}

uint64_t *BNNS.RMSPropOptimizer.epsilon.modify(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(a1 + 2);
  result = a1 + 1;
  v4 = *(v1 + 4);
  v6 = *(v1 + 8);
  v5 = *(v1 + 16);
  v8 = *(v1 + 24);
  v7 = *(v1 + 32);
  v9 = *(v1 + 40);
  *v1 = *v1;
  *(v1 + 4) = v4;
  *(v1 + 8) = v3;
  *(v1 + 12) = BYTE4(v6) & 1;
  if (v6 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 28) = HIDWORD(v8);
    *(v1 + 40) = v9;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 28) = BYTE4(v8) & 1;
    *(v1 + 40) = v9;
  }

  *(v1 + 16) = v5;
  *(v1 + 24) = v8;
  *(v1 + 32) = v7;
  return result;
}

char *key path setter for BNNS.RMSPropOptimizer.centered : BNNS.RMSPropOptimizer(char *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 20);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  *a2 = *a2;
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
  *(a2 + 12) = v2;
  if (v4 < 0)
  {
    *(a2 + 15) = 0x80;
    *(a2 + 13) = 0;
    *(a2 + 16) = v6;
    *(a2 + 20) = v5;
    *(a2 + 24) = v8;
    *(a2 + 40) = v9;
    *(a2 + 32) = v7;
  }

  else
  {
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    *(a2 + 16) = v6;
    *(a2 + 20) = v5;
    *(a2 + 24) = v8;
    *(a2 + 28) = BYTE4(v8) & 1;
    *(a2 + 32) = v7;
    *(a2 + 40) = v9;
  }

  return result;
}

uint64_t BNNS.RMSPropOptimizer.centered.setter(uint64_t result)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 20);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v1 = *v1;
  *(v1 + 4) = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = result & 1;
  if (v3 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 16) = v5;
    *(v1 + 20) = v4;
    *(v1 + 24) = v7;
    *(v1 + 40) = v8;
    *(v1 + 32) = v6;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 16) = v5;
    *(v1 + 20) = v4;
    *(v1 + 24) = v7;
    *(v1 + 28) = BYTE4(v7) & 1;
    *(v1 + 32) = v6;
    *(v1 + 40) = v8;
  }

  return result;
}

_BYTE *(*BNNS.RMSPropOptimizer.centered.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12) & 1;
  return BNNS.RMSPropOptimizer.centered.modify;
}

_BYTE *BNNS.RMSPropOptimizer.centered.modify(_BYTE *result)
{
  v1 = *result;
  v2 = result[8];
  v3 = *(*result + 4);
  v5 = *(*result + 8);
  v4 = *(*result + 16);
  v7 = *(*result + 24);
  v6 = *(*result + 32);
  v8 = *(*result + 40);
  *v1 = **result;
  *(v1 + 4) = v3;
  *(v1 + 8) = v5;
  *(v1 + 12) = v2;
  if (v5 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 28) = HIDWORD(v7);
    *(v1 + 40) = v8;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 28) = BYTE4(v7) & 1;
    *(v1 + 40) = v8;
  }

  *(v1 + 16) = v4;
  *(v1 + 24) = v7;
  *(v1 + 32) = v6;
  return result;
}

int *key path setter for BNNS.RMSPropOptimizer.momentum : BNNS.RMSPropOptimizer(int *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  v5 = *(a2 + 20);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  *a2 = *a2;
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
  *(a2 + 12) = BYTE4(v4) & 1;
  if (v4 < 0)
  {
    *(a2 + 15) = 0x80;
    *(a2 + 13) = 0;
    *(a2 + 16) = v2;
    *(a2 + 20) = v5;
    *(a2 + 24) = v7;
    *(a2 + 40) = v8;
    *(a2 + 32) = v6;
  }

  else
  {
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    *(a2 + 16) = v2;
    *(a2 + 20) = v5;
    *(a2 + 24) = v7;
    *(a2 + 28) = BYTE4(v7) & 1;
    *(a2 + 32) = v6;
    *(a2 + 40) = v8;
  }

  return result;
}

void BNNS.RMSPropOptimizer.momentum.setter(float a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v4 = *(v1 + 20);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v1 = *v1;
  *(v1 + 4) = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = BYTE4(v3) & 1;
  if (v3 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 16) = a1;
    *(v1 + 20) = v4;
    *(v1 + 24) = v6;
    *(v1 + 40) = v7;
    *(v1 + 32) = v5;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 16) = a1;
    *(v1 + 20) = v4;
    *(v1 + 24) = v6;
    *(v1 + 28) = BYTE4(v6) & 1;
    *(v1 + 32) = v5;
    *(v1 + 40) = v7;
  }
}

uint64_t *(*BNNS.RMSPropOptimizer.momentum.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return BNNS.RMSPropOptimizer.momentum.modify;
}

uint64_t *BNNS.RMSPropOptimizer.momentum.modify(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(a1 + 2);
  result = a1 + 1;
  v4 = v3;
  v5 = *(v1 + 4);
  v7 = *(v1 + 8);
  v6 = *(v1 + 16);
  v9 = *(v1 + 24);
  v8 = *(v1 + 32);
  v10 = *(v1 + 40);
  *v1 = *v1;
  *(v1 + 4) = v5;
  *(v1 + 8) = v7;
  *(v1 + 12) = BYTE4(v7) & 1;
  if (v7 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 28) = HIDWORD(v9);
    *(v1 + 40) = v10;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 28) = BYTE4(v9) & 1;
    *(v1 + 40) = v10;
  }

  *(v1 + 16) = v4;
  *(v1 + 20) = HIDWORD(v6);
  *(v1 + 24) = v9;
  *(v1 + 32) = v8;
  return result;
}

int *key path setter for BNNS.RMSPropOptimizer.gradientScale : BNNS.RMSPropOptimizer(int *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  *a2 = *a2;
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
  *(a2 + 12) = BYTE4(v4) & 1;
  if (v4 < 0)
  {
    *(a2 + 15) = 0x80;
    *(a2 + 13) = 0;
    *(a2 + 16) = v5;
    *(a2 + 20) = v2;
    *(a2 + 24) = v7;
    *(a2 + 40) = v8;
    *(a2 + 32) = v6;
  }

  else
  {
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    *(a2 + 16) = v5;
    *(a2 + 20) = v2;
    *(a2 + 24) = v7;
    *(a2 + 28) = BYTE4(v7) & 1;
    *(a2 + 32) = v6;
    *(a2 + 40) = v8;
  }

  return result;
}

void BNNS.RMSPropOptimizer.gradientScale.setter(float a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v1 = *v1;
  *(v1 + 4) = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = BYTE4(v3) & 1;
  if (v3 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 16) = v4;
    *(v1 + 20) = a1;
    *(v1 + 24) = v6;
    *(v1 + 40) = v7;
    *(v1 + 32) = v5;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 16) = v4;
    *(v1 + 20) = a1;
    *(v1 + 24) = v6;
    *(v1 + 28) = BYTE4(v6) & 1;
    *(v1 + 32) = v5;
    *(v1 + 40) = v7;
  }
}

uint64_t *(*BNNS.RMSPropOptimizer.gradientScale.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 20);
  return BNNS.RMSPropOptimizer.gradientScale.modify;
}

uint64_t *BNNS.RMSPropOptimizer.gradientScale.modify(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(a1 + 2);
  result = a1 + 1;
  v4 = v3;
  v5 = *(v1 + 4);
  v7 = *(v1 + 8);
  v6 = *(v1 + 16);
  v9 = *(v1 + 24);
  v8 = *(v1 + 32);
  v10 = *(v1 + 40);
  *v1 = *v1;
  *(v1 + 4) = v5;
  *(v1 + 8) = v7;
  *(v1 + 12) = BYTE4(v7) & 1;
  if (v7 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 28) = HIDWORD(v9);
    *(v1 + 40) = v10;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 28) = BYTE4(v9) & 1;
    *(v1 + 40) = v10;
  }

  *(v1 + 16) = v6;
  *(v1 + 20) = v4;
  *(v1 + 24) = v9;
  *(v1 + 32) = v8;
  return result;
}

int *key path setter for BNNS.RMSPropOptimizer.regularizationScale : BNNS.RMSPropOptimizer(int *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 20);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  *a2 = *a2;
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
  *(a2 + 12) = BYTE4(v4) & 1;
  if (v4 < 0)
  {
    *(a2 + 15) = 0x80;
    *(a2 + 13) = 0;
    *(a2 + 16) = v6;
    *(a2 + 20) = v5;
    *(a2 + 24) = v2;
    *(a2 + 28) = HIDWORD(v8);
    *(a2 + 40) = v9;
    *(a2 + 32) = v7;
  }

  else
  {
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    *(a2 + 16) = v6;
    *(a2 + 20) = v5;
    *(a2 + 24) = v2;
    *(a2 + 28) = BYTE4(v8) & 1;
    *(a2 + 32) = v7;
    *(a2 + 40) = v9;
  }

  return result;
}

void BNNS.RMSPropOptimizer.regularizationScale.setter(float a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 20);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v1 = *v1;
  *(v1 + 4) = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = BYTE4(v3) & 1;
  if (v3 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 16) = v5;
    *(v1 + 20) = v4;
    *(v1 + 24) = a1;
    *(v1 + 28) = HIDWORD(v7);
    *(v1 + 40) = v8;
    *(v1 + 32) = v6;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 16) = v5;
    *(v1 + 20) = v4;
    *(v1 + 24) = a1;
    *(v1 + 28) = BYTE4(v7) & 1;
    *(v1 + 32) = v6;
    *(v1 + 40) = v8;
  }
}

uint64_t *(*BNNS.RMSPropOptimizer.regularizationScale.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return BNNS.RMSPropOptimizer.regularizationScale.modify;
}

uint64_t *BNNS.RMSPropOptimizer.regularizationScale.modify(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(a1 + 2);
  result = a1 + 1;
  v4 = v3;
  v5 = *(v1 + 4);
  v7 = *(v1 + 8);
  v6 = *(v1 + 16);
  v9 = *(v1 + 24);
  v8 = *(v1 + 32);
  v10 = *(v1 + 40);
  *v1 = *v1;
  *(v1 + 4) = v5;
  *(v1 + 8) = v7;
  *(v1 + 12) = BYTE4(v7) & 1;
  if (v7 < 0)
  {
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 28) = HIDWORD(v9);
    *(v1 + 40) = v10;
  }

  else
  {
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 28) = BYTE4(v9) & 1;
    *(v1 + 40) = v10;
  }

  *(v1 + 16) = v6;
  *(v1 + 24) = v4;
  *(v1 + 32) = v8;
  return result;
}

uint64_t BNNS.RMSPropOptimizer.gradientBounds.getter()
{
  result = *(v0 + 32);
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
    if (result == 1)
    {
      if (*(&result + 1) <= COERCE_FLOAT(*(v0 + 40)))
      {
        return *(v0 + 32) >> 32;
      }

      goto LABEL_10;
    }

    return 0;
  }

  if ((*(v0 + 28) & 1) == 0)
  {
    return 0;
  }

  if (*&result > *(&result + 1))
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

unint64_t BNNS.RMSPropOptimizer.gradientBounds.setter(unint64_t result, char a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 40);
  if (v3 < 0)
  {
    v7 = v4 & 0xFFFFFFFF00000000;
    if (a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = HIDWORD(result);
    }

    if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = (result << 32) + 1;
    }

    v4 = v7 | v8;
    v6 = v3 & 0x80000001FFFFFFFFLL;
  }

  else
  {
    if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = result;
    }

    v6 = v3 & 0x1FFFFFFFFLL;
    v4 = v4;
    *(v2 + 28) = (a2 & 1) == 0;
  }

  *(v2 + 8) = v6;
  *(v2 + 32) = v5;
  *(v2 + 40) = v4;
  return result;
}

unint64_t (*BNNS.RMSPropOptimizer.gradientBounds.modify(unint64_t (*result)(uint64_t a1)))(uint64_t a1)
{
  *result = v1;
  v2 = *(v1 + 32);
  if ((*(v1 + 8) & 0x8000000000000000) == 0)
  {
    if (*(v1 + 28))
    {
      if (*&v2 <= *(&v2 + 1))
      {
        v3 = 0;
LABEL_9:
        *(result + 1) = v2;
        *(result + 16) = v3;
        return BNNS.RMSPropOptimizer.gradientBounds.modify;
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0;
    v3 = 1;
    goto LABEL_9;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v4 = HIDWORD(v2);
  if (*&v4 <= COERCE_FLOAT(*(v1 + 40)))
  {
    v3 = 0;
    v2 = v4 | (*(v1 + 40) << 32);
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t BNNS.RMSPropOptimizer.regularizationFunction.getter()
{
  if (*(v0 + 8) >= 0)
  {
    v1 = (v0 + 40);
  }

  else
  {
    v1 = (v0 + 28);
  }

  return *v1;
}

unsigned int *key path setter for BNNS.RMSPropOptimizer.regularizationFunction : BNNS.RMSPropOptimizer(unsigned int *result, uint64_t *a2)
{
  v2 = *result;
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (v3 < 0)
  {
    v8 = a2[5];
    *a2 = v4;
    *(a2 + 2) = v3;
    *(a2 + 12) = BYTE4(v3) & 1;
    *(a2 + 15) = 0x80;
    *(a2 + 13) = 0;
    a2[2] = v6;
    *(a2 + 6) = v5;
    *(a2 + 7) = v2;
    a2[5] = v8;
    a2[4] = v7;
  }

  else
  {
    *a2 = v4;
    *(a2 + 2) = v3;
    *(a2 + 12) = BYTE4(v3) & 1;
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    a2[2] = v6;
    *(a2 + 6) = v5;
    *(a2 + 28) = BYTE4(v5) & 1;
    a2[4] = v7;
    a2[5] = v2;
  }

  return result;
}

uint64_t BNNS.RMSPropOptimizer.regularizationFunction.setter(uint64_t result)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  if (v2 < 0)
  {
    v7 = v1[5];
    *v1 = v3;
    *(v1 + 2) = v2;
    *(v1 + 12) = BYTE4(v2) & 1;
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    v1[2] = v5;
    *(v1 + 6) = v4;
    *(v1 + 7) = result;
    v1[5] = v7;
    v1[4] = v6;
  }

  else
  {
    *v1 = v3;
    *(v1 + 2) = v2;
    *(v1 + 12) = BYTE4(v2) & 1;
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    v1[2] = v5;
    *(v1 + 6) = v4;
    *(v1 + 28) = BYTE4(v4) & 1;
    v1[4] = v6;
    v1[5] = result;
  }

  return result;
}

unint64_t (*BNNS.RMSPropOptimizer.regularizationFunction.modify(uint64_t a1))(uint64_t **a1)
{
  *a1 = v1;
  if ((*(v1 + 8) & 0x8000000000000000) != 0)
  {
    LODWORD(v2) = *(v1 + 28);
  }

  else
  {
    v2 = *(v1 + 40);
  }

  *(a1 + 8) = v2;
  return BNNS.RMSPropOptimizer.regularizationFunction.modify;
}

unint64_t BNNS.RMSPropOptimizer.regularizationFunction.modify(uint64_t **a1)
{
  v1 = *a1;
  v4 = *(a1 + 2);
  result = (a1 + 1);
  v3 = v4;
  v6 = *v1;
  v5 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  if (v5 < 0)
  {
    v10 = v1[5];
    result = HIDWORD(v10);
    *v1 = v6;
    *(v1 + 2) = v5;
    *(v1 + 12) = BYTE4(v5) & 1;
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    *(v1 + 7) = v3;
    v1[5] = v10;
  }

  else
  {
    *v1 = v6;
    *(v1 + 2) = v5;
    *(v1 + 12) = BYTE4(v5) & 1;
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    *(v1 + 28) = BYTE4(v7) & 1;
    v1[5] = v3;
  }

  v1[2] = v8;
  *(v1 + 6) = v7;
  v1[4] = v9;
  return result;
}

uint64_t BNNS.RMSPropOptimizer.init(learningRate:alpha:epsilon:centered:momentum:gradientScale:regularizationScale:clipsGradientsTo:regularizationFunction:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>, float a8@<S2>, float a9@<S3>, float a10@<S4>, float a11@<S5>)
{
  *a5 = a6;
  *(a5 + 4) = a7;
  *(a5 + 8) = a8;
  *(a5 + 12) = result;
  *(a5 + 15) = 0x80;
  *(a5 + 13) = 0;
  v11 = HIDWORD(a2);
  *(a5 + 16) = a9;
  *(a5 + 20) = a10;
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  *(a5 + 24) = a11;
  if (a3)
  {
    LODWORD(v11) = 0;
  }

  *(a5 + 28) = a4;
  *(a5 + 32) = (a3 & 1) == 0;
  *(a5 + 36) = v12;
  *(a5 + 40) = v11;
  *(a5 + 44) = 0;
  *(a5 + 48) = 0;
  return result;
}

uint64_t BNNS.RMSPropOptimizer.bnnsOptimizerFunction.getter()
{
  if (*(v0 + 8) < 0)
  {
    return 9;
  }

  else
  {
    return 3;
  }
}

uint64_t protocol witness for BNNSOptimizer.step(parameters:gradients:accumulators:filterParameters:) in conformance BNNS.RMSPropOptimizer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(v9 + 32);
  v16 = *(v9 + 40);
  v17 = *(v9 + 48);
  v22[3] = a8;
  v22[4] = a9;
  v18 = swift_allocObject();
  v22[0] = v18;
  v19 = *(v9 + 16);
  *(v18 + 16) = *v9;
  *(v18 + 32) = v19;
  *(v18 + 48) = v15;
  *(v18 + 56) = v16;
  *(v18 + 64) = v17;
  specialized static BNNS.optimizerStep(function:parameters:gradients:accumulators:filterParameters:)(v22, a1, a2, a3, a4, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t protocol witness for BNNSOptimizer.bnnsOptimizerFunction.getter in conformance BNNS.RMSPropOptimizer()
{
  if (*(v0 + 8) < 0)
  {
    return 9;
  }

  else
  {
    return 3;
  }
}

uint64_t protocol witness for BNNSOptimizer.accumulatorCountMultiplier.getter in conformance BNNS.RMSPropOptimizer()
{
  v1 = 1;
  if ((*(v0 + 16) & 0x7FFFFFFF) != 0)
  {
    v1 = 2;
  }

  return v1 + (HIDWORD(*(v0 + 8)) & 1);
}

uint64_t protocol witness for WithOptimizerAlgFields.withOptimizerAlgFields(body:) in conformance BNNS.RMSPropOptimizer(uint64_t (*a1)(_OWORD *))
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = *(v1 + 32);
  v6 = v2;
  return a1(v5);
}

int *key path setter for BNNS.SGDMomentumOptimizer.learningRate : BNNS.SGDMomentumOptimizer(int *result, uint64_t *a2)
{
  v2 = *result;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  if ((v5 & 0x80000000) != 0)
  {
    v7 = a2[4];
    v8 = a2[5];
    *a2 = v2;
    *(a2 + 1) = HIDWORD(v4);
    *(a2 + 2) = v3;
    a2[2] = v5 & 0xFFFFFFFF80000001;
    a2[4] = v7;
    a2[5] = v8;
  }

  else
  {
    v6 = a2[3];
    *a2 = v2;
    *(a2 + 1) = HIDWORD(v4);
    *(a2 + 2) = v3;
    *(a2 + 4) = v5 & 1;
    *(a2 + 5) = HIDWORD(v5);
    *(a2 + 6) = v6;
    *(a2 + 28) = BYTE4(v6) & 1;
  }

  *(a2 + 3) = HIDWORD(v3);
  return result;
}

void BNNS.SGDMomentumOptimizer.learningRate.setter(float a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  if ((v4 & 0x80000000) != 0)
  {
    v6 = v1[4];
    v7 = v1[5];
    *v1 = a1;
    *(v1 + 1) = HIDWORD(v3);
    *(v1 + 2) = v2;
    v1[2] = v4 & 0xFFFFFFFF80000001;
    v1[4] = v6;
    v1[5] = v7;
  }

  else
  {
    v5 = v1[3];
    *v1 = a1;
    *(v1 + 1) = HIDWORD(v3);
    *(v1 + 2) = v2;
    *(v1 + 4) = v4 & 1;
    *(v1 + 5) = HIDWORD(v4);
    *(v1 + 6) = v5;
    *(v1 + 28) = BYTE4(v5) & 1;
  }

  *(v1 + 3) = HIDWORD(v2);
}

uint64_t **(*BNNS.SGDMomentumOptimizer.learningRate.modify(uint64_t a1))(uint64_t **a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return BNNS.SGDMomentumOptimizer.learningRate.modify;
}

uint64_t **BNNS.SGDMomentumOptimizer.learningRate.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = *(a1 + 2);
  result = a1 + 1;
  v4 = v3;
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  if ((v7 & 0x80000000) != 0)
  {
    v9 = v1[4];
    v10 = v1[5];
    *v1 = v4;
    *(v1 + 1) = HIDWORD(v6);
    v1[1] = v5;
    v1[2] = v7 & 0xFFFFFFFF80000001;
    v1[4] = v9;
    v1[5] = v10;
  }

  else
  {
    v8 = v1[3];
    *v1 = v4;
    *(v1 + 1) = HIDWORD(v6);
    *(v1 + 4) = v7 & 1;
    *(v1 + 5) = HIDWORD(v7);
    *(v1 + 6) = v8;
    *(v1 + 28) = BYTE4(v8) & 1;
    v1[1] = v5;
  }

  return result;
}

int *key path setter for BNNS.SGDMomentumOptimizer.momentum : BNNS.SGDMomentumOptimizer(int *result, uint64_t *a2)
{
  v2 = *result;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  if ((v5 & 0x80000000) != 0)
  {
    v8 = a2[4];
    v9 = a2[5];
    *a2 = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    a2[2] = v5 & 0xFFFFFFFF80000001;
    a2[4] = v8;
    a2[5] = v9;
  }

  else
  {
    v6 = a2[3];
    v7 = a2[2] & 1;
    *a2 = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    *(a2 + 4) = v7;
    *(a2 + 5) = HIDWORD(v5);
    *(a2 + 6) = v6;
    *(a2 + 28) = BYTE4(v6) & 1;
  }

  *(a2 + 3) = HIDWORD(v3);
  return result;
}

void BNNS.SGDMomentumOptimizer.momentum.setter(float a1)
{
  v3 = *v1;
  v2 = *(v1 + 1);
  v4 = *(v1 + 2);
  if ((v4 & 0x80000000) != 0)
  {
    v7 = *(v1 + 4);
    v8 = *(v1 + 5);
    *v1 = v3;
    v1[1] = a1;
    *(v1 + 2) = v2;
    *(v1 + 2) = v4 & 0xFFFFFFFF80000001;
    *(v1 + 4) = v7;
    *(v1 + 5) = v8;
  }

  else
  {
    v5 = *(v1 + 3);
    v6 = *(v1 + 2) & 1;
    *v1 = v3;
    v1[1] = a1;
    *(v1 + 2) = v2;
    *(v1 + 4) = v6;
    v1[5] = *(&v4 + 1);
    *(v1 + 6) = v5;
    *(v1 + 28) = BYTE4(v5) & 1;
  }

  v1[3] = *(&v2 + 1);
}

uint64_t **(*BNNS.SGDMomentumOptimizer.momentum.modify(uint64_t a1))(uint64_t **a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return BNNS.SGDMomentumOptimizer.momentum.modify;
}

uint64_t **BNNS.SGDMomentumOptimizer.momentum.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = *(a1 + 2);
  result = a1 + 1;
  v4 = v3;
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  if ((v7 & 0x80000000) != 0)
  {
    v10 = v1[4];
    v11 = v1[5];
    *v1 = v6;
    v1[2] = v7 & 0xFFFFFFFF80000001;
    v1[4] = v10;
    v1[5] = v11;
  }

  else
  {
    v8 = v1[3];
    v9 = v1[2] & 1;
    *v1 = v6;
    *(v1 + 4) = v9;
    *(v1 + 5) = HIDWORD(v7);
    *(v1 + 6) = v8;
    *(v1 + 28) = BYTE4(v8) & 1;
  }

  *(v1 + 1) = v4;
  v1[1] = v5;
  return result;
}

int *key path setter for BNNS.SGDMomentumOptimizer.gradientScale : BNNS.SGDMomentumOptimizer(int *result, uint64_t *a2)
{
  v2 = *result;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  if ((v5 & 0x80000000) != 0)
  {
    v8 = a2[4];
    v9 = a2[5];
    *a2 = v4;
    *(a2 + 2) = v2;
    a2[2] = v5 & 0xFFFFFFFF80000001;
    a2[4] = v8;
    a2[5] = v9;
  }

  else
  {
    v6 = a2[3];
    v7 = a2[2] & 1;
    *a2 = v4;
    *(a2 + 2) = v2;
    *(a2 + 4) = v7;
    *(a2 + 5) = HIDWORD(v5);
    *(a2 + 6) = v6;
    *(a2 + 28) = BYTE4(v6) & 1;
  }

  *(a2 + 3) = HIDWORD(v3);
  return result;
}

void BNNS.SGDMomentumOptimizer.gradientScale.setter(float a1)
{
  v3 = *v1;
  v2 = *(v1 + 1);
  v4 = *(v1 + 2);
  if ((v4 & 0x80000000) != 0)
  {
    v7 = *(v1 + 4);
    v8 = *(v1 + 5);
    *v1 = v3;
    v1[2] = a1;
    *(v1 + 2) = v4 & 0xFFFFFFFF80000001;
    *(v1 + 4) = v7;
    *(v1 + 5) = v8;
  }

  else
  {
    v5 = *(v1 + 3);
    v6 = *(v1 + 2) & 1;
    *v1 = v3;
    v1[2] = a1;
    *(v1 + 4) = v6;
    v1[5] = *(&v4 + 1);
    *(v1 + 6) = v5;
    *(v1 + 28) = BYTE4(v5) & 1;
  }

  v1[3] = *(&v2 + 1);
}

uint64_t **(*BNNS.SGDMomentumOptimizer.gradientScale.modify(uint64_t a1))(uint64_t **a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return BNNS.SGDMomentumOptimizer.gradientScale.modify;
}

uint64_t **BNNS.SGDMomentumOptimizer.gradientScale.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = *(a1 + 2);
  result = a1 + 1;
  v4 = v3;
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  if ((v7 & 0x80000000) != 0)
  {
    v10 = v1[4];
    v11 = v1[5];
    *v1 = v6;
    v1[2] = v7 & 0xFFFFFFFF80000001;
    v1[4] = v10;
    v1[5] = v11;
  }

  else
  {
    v8 = v1[3];
    v9 = v1[2] & 1;
    *v1 = v6;
    *(v1 + 4) = v9;
    *(v1 + 5) = HIDWORD(v7);
    *(v1 + 6) = v8;
    *(v1 + 28) = BYTE4(v8) & 1;
  }

  *(v1 + 2) = v4;
  *(v1 + 3) = HIDWORD(v5);
  return result;
}

int *key path setter for BNNS.SGDMomentumOptimizer.regularizationScale : BNNS.SGDMomentumOptimizer(int *result, uint64_t *a2)
{
  v2 = *result;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  if ((v5 & 0x80000000) != 0)
  {
    v7 = a2[4];
    v8 = a2[5];
    *a2 = v4;
    *(a2 + 2) = v3;
    a2[2] = v5 & 0xFFFFFFFF80000001;
    a2[4] = v7;
    a2[5] = v8;
  }

  else
  {
    v6 = a2[3];
    *a2 = v4;
    *(a2 + 2) = v3;
    *(a2 + 4) = v5 & 1;
    *(a2 + 5) = HIDWORD(v5);
    *(a2 + 6) = v6;
    *(a2 + 28) = BYTE4(v6) & 1;
  }

  *(a2 + 3) = v2;
  return result;
}

void BNNS.SGDMomentumOptimizer.regularizationScale.setter(float a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  if ((v4 & 0x80000000) != 0)
  {
    v6 = v1[4];
    v7 = v1[5];
    *v1 = v3;
    *(v1 + 2) = v2;
    v1[2] = v4 & 0xFFFFFFFF80000001;
    v1[4] = v6;
    v1[5] = v7;
  }

  else
  {
    v5 = v1[3];
    *v1 = v3;
    *(v1 + 2) = v2;
    *(v1 + 4) = v4 & 1;
    *(v1 + 5) = HIDWORD(v4);
    *(v1 + 6) = v5;
    *(v1 + 28) = BYTE4(v5) & 1;
  }

  *(v1 + 3) = a1;
}

uint64_t **(*BNNS.SGDMomentumOptimizer.regularizationScale.modify(uint64_t a1))(uint64_t **a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return BNNS.SGDMomentumOptimizer.regularizationScale.modify;
}

uint64_t **BNNS.SGDMomentumOptimizer.regularizationScale.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = *(a1 + 2);
  result = a1 + 1;
  v4 = v3;
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  if ((v7 & 0x80000000) != 0)
  {
    v10 = v1[4];
    v11 = v1[5];
    *v1 = v6;
    v1[2] = v7 & 0xFFFFFFFF80000001;
    v1[4] = v10;
    v1[5] = v11;
  }

  else
  {
    v8 = v1[3];
    v9 = v1[2] & 1;
    *v1 = v6;
    *(v1 + 4) = v9;
    *(v1 + 5) = HIDWORD(v7);
    *(v1 + 6) = v8;
    *(v1 + 28) = BYTE4(v8) & 1;
  }

  *(v1 + 2) = v5;
  *(v1 + 3) = v4;
  return result;
}

uint64_t BNNS.SGDMomentumOptimizer.gradientBounds.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  if ((v2 & 0x80000000) == 0)
  {
    if (v2)
    {
      v3 = HIDWORD(v2);
      if (*&v3 <= *&v1)
      {
        return v3 | (v1 << 32);
      }

      __break(1u);
      goto LABEL_10;
    }

    return 0;
  }

  if (HIDWORD(v1) != 1)
  {
    return 0;
  }

  result = v0[4];
  if (*&result > *(&result + 1))
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

unint64_t BNNS.SGDMomentumOptimizer.gradientBounds.setter(unint64_t result, int a2)
{
  v3 = v2[2];
  v4 = v2[3];
  if ((v3 & 0x80000000) != 0)
  {
    v8 = 0x100000000;
    if (a2)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v9 = result;
    }

    v2[4] = v9;
    v2[2] = v3 & 0xFFFFFFFF80000001;
    v2[3] = v8 & 0xFFFFFFFF00000000 | v4;
  }

  else
  {
    v5 = v4 & 0x100000000;
    v6 = HIDWORD(result);
    v7 = result << 32;
    if (a2)
    {
      v7 = 0;
      v6 = 0;
    }

    v2[2] = v7 & 0xFFFFFFFFFFFFFFFELL | ~a2 & 1;
    v2[3] = v5 | v6;
  }

  return result;
}

unint64_t (*BNNS.SGDMomentumOptimizer.gradientBounds.modify(unint64_t (*result)(uint64_t a1)))(uint64_t a1)
{
  *result = v1;
  v3 = v1[2];
  v2 = v1[3];
  if ((v3 & 0x80000000) == 0)
  {
    if (v3)
    {
      v4 = HIDWORD(v3);
      if (*(&v3 + 1) <= *&v2)
      {
        v5 = 0;
        v6 = v4 | (v2 << 32);
LABEL_9:
        *(result + 1) = v6;
        *(result + 16) = v5;
        return BNNS.SGDMomentumOptimizer.gradientBounds.modify;
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_8:
    v6 = 0;
    v5 = 1;
    goto LABEL_9;
  }

  if (HIDWORD(v2) != 1)
  {
    goto LABEL_8;
  }

  v6 = v1[4];
  if (*&v6 <= *(&v6 + 1))
  {
    v5 = 0;
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t BNNS.SGDMomentumOptimizer.usesNestrovMomentum.getter()
{
  v1 = *(v0 + 16);
  if (v1 >= 0)
  {
    LOBYTE(v1) = *(v0 + 28);
  }

  return v1 & 1;
}

uint64_t (*BNNS.SGDMomentumOptimizer.usesNestrovMomentum.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if ((v2 & 0x80000000) == 0)
  {
    LOBYTE(v2) = *(v1 + 28) & 1;
  }

  *(a1 + 8) = v2 & 1;
  return BNNS.SGDMomentumOptimizer.usesNestrovMomentum.modify;
}

unsigned __int8 *key path setter for BNNS.SGDMomentumOptimizer.usesNestrovMomentum : BNNS.SGDMomentumOptimizer(unsigned __int8 *result, uint64_t *a2)
{
  v2 = *result;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  if ((v5 & 0x80000000) != 0)
  {
    v8 = a2[4];
    v9 = a2[5];
    *a2 = v4;
    *(a2 + 2) = v3;
    a2[2] = v5 & 0xFFFFFFFF00000000 | v2 | 0x80000000;
    a2[4] = v8;
    a2[5] = v9;
  }

  else
  {
    v6 = a2[3];
    v7 = a2[2] & 1;
    *a2 = v4;
    *(a2 + 2) = v3;
    *(a2 + 4) = v7;
    *(a2 + 5) = HIDWORD(v5);
    *(a2 + 6) = v6;
    *(a2 + 28) = v2;
  }

  *(a2 + 3) = HIDWORD(v3);
  return result;
}

uint64_t BNNS.SGDMomentumOptimizer.usesNestrovMomentum.setter(uint64_t result)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  if ((v4 & 0x80000000) != 0)
  {
    v7 = v1[4];
    v8 = v1[5];
    *v1 = v3;
    *(v1 + 2) = v2;
    v1[2] = v4 & 0xFFFFFFFF00000000 | result & 1 | 0x80000000;
    v1[4] = v7;
    v1[5] = v8;
  }

  else
  {
    v5 = v1[3];
    v6 = v1[2] & 1;
    *v1 = v3;
    *(v1 + 2) = v2;
    *(v1 + 4) = v6;
    *(v1 + 5) = HIDWORD(v4);
    *(v1 + 6) = v5;
    *(v1 + 28) = result & 1;
  }

  *(v1 + 3) = HIDWORD(v2);
  return result;
}

uint64_t (*BNNS.SGDMomentumOptimizer.usesNesterovMomentum.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if ((v2 & 0x80000000) == 0)
  {
    LOBYTE(v2) = *(v1 + 28) & 1;
  }

  *(a1 + 8) = v2 & 1;
  return BNNS.SGDMomentumOptimizer.usesNesterovMomentum.modify;
}

unsigned __int8 *BNNS.SGDMomentumOptimizer.usesNestrovMomentum.modify(unsigned __int8 *result, char a2)
{
  v2 = *result;
  v3 = result[8];
  v5 = **result;
  v4 = *(*result + 8);
  v6 = *(*result + 16);
  if (a2)
  {
    if ((v6 & 0x80000000) != 0)
    {
      v7 = v2[4];
      v8 = v2[5];
      *v2 = v5;
      v2[1] = v4;
      v2[2] = v6 & 0xFFFFFFFF00000000 | v3 | 0x80000000;
      v2[4] = v7;
      v2[5] = v8;
      return result;
    }

    goto LABEL_5;
  }

  if ((v6 & 0x80000000) == 0)
  {
LABEL_5:
    v9 = v2[3];
    v10 = *(*result + 16) & 1;
    *v2 = v5;
    *(v2 + 4) = v10;
    *(v2 + 5) = HIDWORD(v6);
    *(v2 + 6) = v9;
    *(v2 + 28) = v3;
    v2[1] = v4;
    return result;
  }

  v11 = v2[4];
  v12 = v2[5];
  *v2 = v5;
  v2[1] = v4;
  v2[2] = v6 & 0xFFFFFFFF00000000 | v3 | 0x80000000;
  v2[4] = v11;
  v2[5] = v12;
  return result;
}

uint64_t BNNS.SGDMomentumOptimizer.regularizationFunction.getter()
{
  if (*(v0 + 16) < 0)
  {
    return *(v0 + 20);
  }

  else
  {
    return *(v0 + 32);
  }
}

unsigned int *key path setter for BNNS.SGDMomentumOptimizer.regularizationFunction : BNNS.SGDMomentumOptimizer(unsigned int *result, int *a2)
{
  v2 = *result;
  v4 = *a2;
  v3 = a2[1];
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if ((v6 & 0x80000000) != 0)
  {
    v11 = *(a2 + 5);
    *a2 = v4;
    a2[1] = v3;
    a2[2] = v5;
    *(a2 + 2) = v6 & 1 | (v2 << 32) | 0x80000000;
    *(a2 + 4) = v7;
    *(a2 + 5) = v11;
  }

  else
  {
    v8 = *(a2 + 3);
    v9 = v7 & 0xFFFFFFFF00000000 | v2;
    v10 = *(a2 + 2) & 1;
    *a2 = v4;
    a2[1] = v3;
    a2[2] = v5;
    a2[4] = v10;
    a2[5] = HIDWORD(v6);
    a2[6] = v8;
    *(a2 + 28) = BYTE4(v8) & 1;
    *(a2 + 4) = v9;
  }

  a2[3] = HIDWORD(v5);
  return result;
}

uint64_t BNNS.SGDMomentumOptimizer.regularizationFunction.setter(uint64_t result)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v8 = *(v1 + 5);
    *v1 = v3;
    v1[1] = v2;
    v1[2] = v4;
    *(v1 + 2) = v5 & 1 | (result << 32) | 0x80000000;
    *(v1 + 4) = v6;
    *(v1 + 5) = v8;
  }

  else
  {
    v7 = *(v1 + 3);
    *v1 = v3;
    v1[1] = v2;
    v1[2] = v4;
    v1[4] = v5 & 1;
    v1[5] = HIDWORD(v5);
    v1[6] = v7;
    *(v1 + 28) = BYTE4(v7) & 1;
    *(v1 + 4) = v6 & 0xFFFFFFFF00000000 | result;
  }

  v1[3] = HIDWORD(v4);
  return result;
}

unsigned int *(*BNNS.SGDMomentumOptimizer.regularizationFunction.modify(uint64_t a1))(unsigned int *result)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if ((v2 & 0x80000000) != 0)
  {
    v3 = HIDWORD(v2);
  }

  else
  {
    v3 = *(v1 + 32);
  }

  *(a1 + 8) = v3;
  return BNNS.SGDMomentumOptimizer.regularizationFunction.modify;
}

unsigned int *BNNS.SGDMomentumOptimizer.regularizationFunction.modify(unsigned int *result)
{
  v1 = result[2];
  v2 = *result;
  v4 = **result;
  v3 = *(*result + 4);
  v5 = *(*result + 8);
  v6 = *(*result + 16);
  v7 = *(*result + 32);
  if ((v6 & 0x80000000) != 0)
  {
    v11 = *(v2 + 5);
    *v2 = v4;
    v2[1] = v3;
    *(v2 + 1) = v5;
    *(v2 + 2) = v6 & 1 | (v1 << 32) | 0x80000000;
    *(v2 + 4) = v7;
    *(v2 + 5) = v11;
  }

  else
  {
    v8 = *(v2 + 3);
    v9 = v7 & 0xFFFFFFFF00000000 | v1;
    v10 = *(*result + 16) & 1;
    *v2 = v4;
    v2[1] = v3;
    v2[4] = v10;
    v2[5] = HIDWORD(v6);
    v2[6] = v8;
    *(v2 + 28) = BYTE4(v8) & 1;
    *(v2 + 4) = v9;
    *(v2 + 1) = v5;
  }

  return result;
}

uint64_t BNNS.SGDMomentumOptimizer.sgdMomentumVariant.getter()
{
  v1 = (v0 + 24);
  if ((*(v0 + 19) & 0x80) == 0)
  {
    v1 = (v0 + 36);
  }

  return *v1;
}

unsigned int *key path setter for BNNS.SGDMomentumOptimizer.sgdMomentumVariant : BNNS.SGDMomentumOptimizer(unsigned int *result, uint64_t *a2)
{
  v2 = *result;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  if ((v5 & 0x80000000) != 0)
  {
    v8 = a2[5];
    *a2 = v4;
    *(a2 + 2) = v3;
    a2[2] = v5 & 0xFFFFFFFF80000001;
    a2[3] = v6 & 0xFFFFFFFF00000000 | v2;
    a2[4] = v7;
    a2[5] = v8;
  }

  else
  {
    *a2 = v4;
    *(a2 + 2) = v3;
    *(a2 + 4) = v5 & 1;
    *(a2 + 5) = HIDWORD(v5);
    *(a2 + 6) = v6;
    *(a2 + 28) = BYTE4(v6) & 1;
    a2[4] = v7 | (v2 << 32);
  }

  *(a2 + 3) = HIDWORD(v3);
  return result;
}

uint64_t BNNS.SGDMomentumOptimizer.sgdMomentumVariant.setter(uint64_t result)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if ((v4 & 0x80000000) != 0)
  {
    v7 = v1[5];
    *v1 = v3;
    *(v1 + 2) = v2;
    v1[2] = v4 & 0xFFFFFFFF80000001;
    v1[3] = v5 & 0xFFFFFFFF00000000 | result;
    v1[4] = v6;
    v1[5] = v7;
  }

  else
  {
    *v1 = v3;
    *(v1 + 2) = v2;
    *(v1 + 4) = v4 & 1;
    *(v1 + 5) = HIDWORD(v4);
    *(v1 + 6) = v5;
    *(v1 + 28) = BYTE4(v5) & 1;
    v1[4] = v6 | (result << 32);
  }

  *(v1 + 3) = HIDWORD(v2);
  return result;
}

unsigned int *(*BNNS.SGDMomentumOptimizer.sgdMomentumVariant.modify(uint64_t a1))(unsigned int *result)
{
  *a1 = v1;
  if ((*(v1 + 19) & 0x80) != 0)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    LODWORD(v2) = *(v1 + 36);
  }

  *(a1 + 8) = v2;
  return BNNS.SGDMomentumOptimizer.sgdMomentumVariant.modify;
}

unsigned int *BNNS.SGDMomentumOptimizer.sgdMomentumVariant.modify(unsigned int *result)
{
  v1 = result[2];
  v2 = *result;
  v4 = **result;
  v3 = *(*result + 8);
  v5 = *(*result + 16);
  v6 = *(*result + 24);
  v7 = *(*result + 32);
  if ((v5 & 0x80000000) != 0)
  {
    v8 = v2[5];
    *v2 = v4;
    v2[2] = v5 & 0xFFFFFFFF80000001;
    v2[3] = v6 & 0xFFFFFFFF00000000 | v1;
    v2[4] = v7;
    v2[5] = v8;
  }

  else
  {
    *v2 = v4;
    *(v2 + 4) = v5 & 1;
    *(v2 + 5) = HIDWORD(v5);
    *(v2 + 6) = v6;
    *(v2 + 28) = BYTE4(v6) & 1;
    v2[4] = v7 | (v1 << 32);
  }

  v2[1] = v3;
  return result;
}

unint64_t BNNS.SGDMomentumOptimizer.init(learningRate:momentum:gradientScale:regularizationScale:clipsGradientsTo:usesNestrovMomentum:regularizationFunction:sgdMomentumVariant:)@<X0>(unint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>, float a9@<S2>, float a10@<S3>)
{
  *a6 = a7;
  *(a6 + 4) = a8;
  *(a6 + 8) = a9;
  *(a6 + 12) = a10;
  v10 = 0x100000000;
  if (a2)
  {
    v10 = 0;
  }

  *(a6 + 16) = a3 & 1 | (a4 << 32) | 0x80000000;
  *(a6 + 24) = v10 | a5;
  v11 = HIDWORD(result);
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = result;
  }

  if (a2)
  {
    LODWORD(v11) = 0;
  }

  *(a6 + 32) = v12;
  *(a6 + 36) = v11;
  *(a6 + 40) = 0;
  return result;
}

uint64_t BNNS.SGDMomentumOptimizer.bnnsOptimizerFunction.getter()
{
  if ((*(v0 + 19) & 0x80) != 0)
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

uint64_t protocol witness for BNNSOptimizer.step(parameters:gradients:accumulators:filterParameters:) in conformance BNNS.SGDMomentumOptimizer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(v9 + 32);
  v17 = *(v9 + 40);
  v21[3] = a8;
  v21[4] = a9;
  v18 = swift_allocObject();
  v21[0] = v18;
  v19 = *(v9 + 16);
  *(v18 + 16) = *v9;
  *(v18 + 32) = v19;
  *(v18 + 48) = v16;
  *(v18 + 56) = v17;
  specialized static BNNS.optimizerStep(function:parameters:gradients:accumulators:filterParameters:)(v21, a1, a2, a3, a4, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t protocol witness for BNNSOptimizer.bnnsOptimizerFunction.getter in conformance BNNS.SGDMomentumOptimizer()
{
  if ((*(v0 + 19) & 0x80) != 0)
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

uint64_t protocol witness for WithOptimizerAlgFields.withOptimizerAlgFields(body:) in conformance BNNS.SGDMomentumOptimizer(uint64_t (*a1)(_OWORD *))
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return a1(v4);
}

uint64_t protocol witness for BNNSOptimizer.step(parameters:gradients:accumulators:filterParameters:) in conformance BNNS.AdamWOptimizer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19[3] = a8;
  v19[4] = a9;
  v16 = swift_allocObject();
  v19[0] = v16;
  v17 = *(v9 + 16);
  *(v16 + 16) = *v9;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v9 + 32);
  *(v16 + 61) = *(v9 + 45);
  specialized static BNNS.optimizerStep(function:parameters:gradients:accumulators:filterParameters:)(v19, a1, a2, a3, a4, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t specialized static BNNS.optimizerStep(function:parameters:gradients:accumulators:filterParameters:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v98 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  if (v7 != *(a3 + 16))
  {
    goto LABEL_10;
  }

  v10 = *(a4 + 16);
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = (*(v11 + 24))(v12, v11);
  if ((v7 * v13) >> 64 != (v7 * v13) >> 63)
  {
    __break(1u);
  }

  if (v10 == v7 * v13)
  {
    v14 = v10;
    v79 = a1;
    v15 = MEMORY[0x1E69E7CC0];
    v80 = v7;
    if (v7)
    {
      v78 = v10;
      v86[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      v16 = v86[0];
      v17 = (a2 + 32);
      v18 = v7;
      do
      {
        v19 = v17[9];
        v95 = v17[8];
        v96 = v19;
        v97 = v17[10];
        v20 = v17[5];
        v91 = v17[4];
        v92 = v20;
        v21 = v17[7];
        v93 = v17[6];
        v94 = v21;
        v22 = v17[1];
        v87 = *v17;
        v88 = v22;
        v23 = v17[3];
        v89 = v17[2];
        v90 = v23;
        v24 = swift_slowAlloc();
        v25 = v96;
        v24[8] = v95;
        v24[9] = v25;
        v24[10] = v97;
        v26 = v92;
        v24[4] = v91;
        v24[5] = v26;
        v27 = v94;
        v24[6] = v93;
        v24[7] = v27;
        v28 = v88;
        *v24 = v87;
        v24[1] = v28;
        v29 = v90;
        v24[2] = v89;
        v24[3] = v29;
        v31 = *(v16 + 16);
        v30 = *(v16 + 24);
        v86[0] = v16;
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          v16 = v86[0];
        }

        *(v16 + 16) = v31 + 1;
        *(v16 + 8 * v31 + 32) = v24;
        v17 += 11;
        --v18;
      }

      while (v18);
      v85 = v16;
      v86[0] = v15;
      v34 = v80;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80, 0);
      v35 = (a3 + 32);
      do
      {
        v36 = v35[9];
        v95 = v35[8];
        v96 = v36;
        v97 = v35[10];
        v37 = v35[5];
        v91 = v35[4];
        v92 = v37;
        v38 = v35[7];
        v93 = v35[6];
        v94 = v38;
        v39 = v35[1];
        v87 = *v35;
        v88 = v39;
        v40 = v35[3];
        v89 = v35[2];
        v90 = v40;
        v41 = swift_slowAlloc();
        v42 = v96;
        v41[8] = v95;
        v41[9] = v42;
        v41[10] = v97;
        v43 = v92;
        v41[4] = v91;
        v41[5] = v43;
        v44 = v94;
        v41[6] = v93;
        v41[7] = v44;
        v45 = v88;
        *v41 = v87;
        v41[1] = v45;
        v46 = v90;
        v41[2] = v89;
        v41[3] = v46;
        v48 = *(v15 + 16);
        v47 = *(v15 + 24);
        v86[0] = v15;
        if (v48 >= v47 >> 1)
        {
          v49 = v41;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
          v41 = v49;
          v15 = v86[0];
        }

        *(v15 + 16) = v48 + 1;
        *(v15 + 8 * v48 + 32) = v41;
        v35 += 11;
        --v34;
      }

      while (v34);
      v14 = v78;
    }

    else
    {
      v85 = MEMORY[0x1E69E7CC0];
    }

    v84 = v15;
    v50 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v86[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v50 = v86[0];
      v51 = (a4 + 32);
      do
      {
        v52 = v51[9];
        v95 = v51[8];
        v96 = v52;
        v97 = v51[10];
        v53 = v51[5];
        v91 = v51[4];
        v92 = v53;
        v54 = v51[7];
        v93 = v51[6];
        v94 = v54;
        v55 = v51[1];
        v87 = *v51;
        v88 = v55;
        v56 = v51[3];
        v89 = v51[2];
        v90 = v56;
        v57 = swift_slowAlloc();
        v58 = v96;
        v57[8] = v95;
        v57[9] = v58;
        v57[10] = v97;
        v59 = v92;
        v57[4] = v91;
        v57[5] = v59;
        v60 = v94;
        v57[6] = v93;
        v57[7] = v60;
        v61 = v88;
        *v57 = v87;
        v57[1] = v61;
        v62 = v90;
        v57[2] = v89;
        v57[3] = v62;
        v64 = v50[2];
        v63 = v50[3];
        v86[0] = v50;
        if (v64 >= v63 >> 1)
        {
          v65 = v57;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
          v57 = v65;
          v50 = v86[0];
        }

        v50[2] = v64 + 1;
        v50[v64 + 4] = v57;
        v51 += 11;
        --v14;
      }

      while (v14);
    }

    outlined init with copy of BNNSGraph.Builder.SliceIndex(v79, &v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate13BNNSOptimizer_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate22WithOptimizerAlgFields_pMd);
    swift_dynamicCast();
    v66 = v86[4];
    v67 = __swift_project_boxed_opaque_existential_1(v86, v86[3]);
    MEMORY[0x1EEE9AC00](v67);
    if (a7 == 1)
    {
      (*(v66 + 8))(partial apply for closure #1 in closure #4 in static BNNS.optimizerStep(function:parameters:gradients:accumulators:filterParameters:));
    }

    else
    {
      (*(v66 + 8))(closure #1 in closure #4 in static BNNS.optimizerStep(function:parameters:gradients:accumulators:filterParameters:)partial apply);
    }

    __swift_destroy_boxed_opaque_existential_1(v86);
    v68 = *(v85 + 16);
    if (v68)
    {
      v69 = (v85 + 32);
      do
      {
        v70 = *v69++;
        MEMORY[0x1B8CB2C50](v70, -1, -1);
        --v68;
      }

      while (v68);
    }

    v71 = *(v84 + 16);
    if (v71)
    {
      v72 = (v84 + 32);
      do
      {
        v73 = *v72++;
        MEMORY[0x1B8CB2C50](v73, -1, -1);
        --v71;
      }

      while (v71);
    }

    v74 = v50[2];
    if (v74)
    {
      v75 = v50 + 4;
      do
      {
        v77 = *v75++;
        v76 = v77;
        if (v77)
        {
          MEMORY[0x1B8CB2C50](v76, -1, -1);
        }

        --v74;
      }

      while (v74);
    }
  }

  else
  {
LABEL_10:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v32 = 3;
    return swift_willThrow();
  }
}

uint64_t keypath_get_60Tm@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2 >= 0)
  {
    LOBYTE(v2) = HIDWORD(*(result + 24)) & 1;
  }

  *a2 = v2 & 1;
  return result;
}

__n128 __swift_memcpy54_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.AdamOptimizer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 54))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 52);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.AdamOptimizer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 54) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 54) = 0;
    }

    if (a2)
    {
      *(result + 52) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.SGDMomentumOptimizer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = (*(a1 + 16) & 0x7FFFFFFE | (*(a1 + 16) >> 31)) ^ 0x7FFFFFFF;
  if (v3 >= 0x7FFFFFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for BNNS.SGDMomentumOptimizer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = -a2 & 0x7FFFFFFE | (a2 << 31);
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.RMSPropOptimizer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 52))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = (((*(a1 + 8) >> 33) >> 30) & 0x80000001 | (2 * ((*(a1 + 8) >> 33) & 0x3FFFFFFF))) ^ 0x7FFFFFFF;
  if (v3 >= 0x7FFFFFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for BNNS.RMSPropOptimizer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 1) & 0x3FFFFFFF) - (a2 << 30)) << 33;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy53_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.AdamOptimizer.Fields(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 53))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 52);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.AdamOptimizer.Fields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 52) = -a2;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t BNNSGraph.Builder.Tensor.pooling(_:kernelSize:strides:padding:ceilingMode:)@<X0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v17 = *v4;
  v8 = v17;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);

  LOBYTE(v20) = 1;
  v15 = *(v4 + 8);
  v16 = *(v4 + 24);
  v11 = *(v4 + 8);
  *&v18 = v11;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v17, v10, v9, &v20);
  v17 = v8;
  v18 = v15;
  v19 = v16;
  result = BNNSGraph.Builder.Tensor.tensorData.getter();
  if (!result)
  {
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    if (v11)
    {
      outlined copy of BNNSGraph.Builder.ConvolutionPadding(v7);
      v13 = _bnns_graph_builder_register_l2_pool();
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (v6 == 3)
  {
    if (v11)
    {
      outlined copy of BNNSGraph.Builder.ConvolutionPadding(v7);
      v13 = _bnns_graph_builder_register_max_pool();
LABEL_10:
      v14 = v13;

      result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v14, 0xD000000000000032, 0x80000001B7E7D280);
LABEL_11:
      *a4 = v20;
      *(a4 + 8) = v21;
      *(a4 + 24) = v22;
      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11)
  {
    outlined copy of BNNSGraph.Builder.ConvolutionPadding(v7);
    v13 = _bnns_graph_builder_register_avg_pool();
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t outlined copy of BNNSGraph.Builder.ConvolutionPadding(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

double BNNS.FusedTernaryArithmeticParameters.layerParameters(inputA:inputB:inputC:output:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t *a5@<X8>)
{
  *&v23[116] = a2[7];
  *&v23[132] = a2[8];
  *&v23[148] = a2[9];
  *&v23[164] = a2[10];
  *&v23[52] = a2[3];
  *&v23[68] = a2[4];
  *&v23[84] = a2[5];
  *&v23[100] = a2[6];
  *&v23[4] = *a2;
  *&v23[20] = a2[1];
  *&v23[36] = a2[2];
  *&v22[116] = a3[7];
  *&v22[132] = a3[8];
  *&v22[148] = a3[9];
  *&v22[164] = a3[10];
  *&v22[52] = a3[3];
  *&v22[68] = a3[4];
  *&v22[84] = a3[5];
  *&v22[100] = a3[6];
  *&v22[4] = *a3;
  *&v22[20] = a3[1];
  *&v22[36] = a3[2];
  *&v21[100] = a4[6];
  *&v21[116] = a4[7];
  *&v21[132] = a4[8];
  *&v21[148] = a4[9];
  *&v21[164] = a4[10];
  *&v21[52] = a4[3];
  *&v21[68] = a4[4];
  *&v21[84] = a4[5];
  *&v21[4] = *a4;
  *&v21[20] = a4[1];
  v8 = *(v5 + 8);
  v9 = *(v5 + 9);
  v10 = *(v5 + 10);
  v11 = *(v5 + 11);
  *&v21[36] = a4[2];
  v12 = swift_slowAlloc();
  v13 = a1[9];
  *(v12 + 128) = a1[8];
  *(v12 + 144) = v13;
  *(v12 + 160) = a1[10];
  v14 = a1[5];
  *(v12 + 64) = a1[4];
  *(v12 + 80) = v14;
  v15 = a1[7];
  *(v12 + 96) = a1[6];
  *(v12 + 112) = v15;
  v16 = a1[1];
  *v12 = *a1;
  *(v12 + 16) = v16;
  v17 = a1[3];
  *(v12 + 32) = a1[2];
  *(v12 + 48) = v17;
  *(v12 + 324) = *&v23[144];
  *(v12 + 340) = *&v23[160];
  *(v12 + 244) = *&v23[64];
  *(v12 + 260) = *&v23[80];
  *(v12 + 276) = *&v23[96];
  *v5 = v12;
  *(v12 + 176) = v8;
  *(v12 + 356) = *&v23[176];
  *(v12 + 292) = *&v23[112];
  *(v12 + 308) = *&v23[128];
  *(v12 + 180) = *v23;
  *(v12 + 196) = *&v23[16];
  *(v12 + 212) = *&v23[32];
  *(v12 + 228) = *&v23[48];
  *(v12 + 360) = v9;
  *(v12 + 492) = *&v22[128];
  *(v12 + 508) = *&v22[144];
  *(v12 + 524) = *&v22[160];
  *(v12 + 540) = *&v22[176];
  *(v12 + 428) = *&v22[64];
  *(v12 + 444) = *&v22[80];
  *(v12 + 460) = *&v22[96];
  *(v12 + 476) = *&v22[112];
  *(v12 + 364) = *v22;
  *(v12 + 380) = *&v22[16];
  *(v12 + 396) = *&v22[32];
  *(v12 + 412) = *&v22[48];
  *(v12 + 544) = v10;
  *(v12 + 676) = *&v21[128];
  *(v12 + 692) = *&v21[144];
  *(v12 + 708) = *&v21[160];
  *(v12 + 724) = *&v21[176];
  *(v12 + 612) = *&v21[64];
  *(v12 + 628) = *&v21[80];
  *(v12 + 644) = *&v21[96];
  *(v12 + 660) = *&v21[112];
  *(v12 + 548) = *v21;
  *(v12 + 564) = *&v21[16];
  *(v12 + 580) = *&v21[32];
  *(v12 + 596) = *&v21[48];
  *(v12 + 728) = v11;
  type metadata accessor for BNNSLayerParametersArithmetic(0);
  a5[3] = v18;
  a5[4] = &protocol witness table for BNNSLayerParametersArithmetic;
  v19 = swift_allocObject();
  *a5 = v19;
  *(v19 + 16) = 28;
  *(v19 + 24) = v12;
  *(v19 + 32) = 0;
  *(v19 + 36) = vneg_f32(0x3F0000003FLL);
  *(v19 + 44) = 1;
  result = 0.0;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  return result;
}

char *BNNS.FusedTernaryArithmeticParameters.init(inputADescriptorType:inputBDescriptorType:inputCDescriptorType:outputDescriptorType:function:)@<X0>(char *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *result;
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  *a5 = 0;
  *(a5 + 8) = v5;
  *(a5 + 9) = v6;
  *(a5 + 10) = v7;
  *(a5 + 11) = v8;
  return result;
}

uint64_t protocol witness for FusableLayerParametersWrapperDeallocatable.deallocate() in conformance BNNS.FusedTernaryArithmeticParameters()
{
  result = *v0;
  if (*v0)
  {
    JUMPOUT(0x1B8CB2C50);
  }

  return result;
}

uint64_t BNNS.FusedParametersLayer.__allocating_init(inputA:inputB:inputC:output:fusedLayerParameters:filterParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint32_t a6, size_t a7, int (__cdecl *a8)(void **, size_t, size_t), void (__cdecl *a9)(void *))
{
  v51 = *MEMORY[0x1E69E9840];
  if (*(a5 + 16) != 2)
  {
    __break(1u);
    goto LABEL_23;
  }

  outlined init with copy of BNNSGraph.Builder.SliceIndex(a5 + 32, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate22FusableLayerParameters_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate41FusableTernaryInputLayerParametersWrapper_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {

    memset(__dst, 0, 40);
    outlined destroy of FusableTernaryInputLayerParametersWrapper?(__dst, &_s10Accelerate41FusableTernaryInputLayerParametersWrapper_pSgMd);
    return 0;
  }

  _s10Accelerate41FusableTernaryInputLayerParametersWrapper_pWOb_0(__dst, v48);
  if (*(a5 + 16) < 2uLL)
  {
LABEL_23:
    __break(1u);
  }

  outlined init with copy of BNNSGraph.Builder.SliceIndex(a5 + 72, __src);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate29FusableLayerParametersWrapper_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(__dst, 0, 40);
    outlined destroy of FusableTernaryInputLayerParametersWrapper?(__dst, &_s10Accelerate29FusableLayerParametersWrapper_pSgMd);
LABEL_19:
    __swift_destroy_boxed_opaque_existential_1(v48);
    return 0;
  }

  _s10Accelerate41FusableTernaryInputLayerParametersWrapper_pWOb_0(__dst, v45);
  v18 = v49;
  v17 = v50;
  __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  (*(v17 + 8))(v44, a1, a2, a3, a4, v18, v17);
  v19 = v46;
  v20 = v47;
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  (*(v20 + 8))(v43, a4, a4, v19, v20);
  v21 = v46;
  v22 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v23 = (*(v22 + 16))(v21, v22);
  if ((v23 - 2) > 3)
  {
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    goto LABEL_19;
  }

  v24 = v23;
  outlined init with copy of BNNSGraph.Builder.SliceIndex(v44, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate26BNNSFusableLayerParameters_pMd);
  type metadata accessor for BNNSLayerParametersArithmetic(0);
  swift_dynamicCast();
  *v41 = *&v41[9];
  *&v41[2] = *&v41[11];
  *&v41[4] = *&v41[13];
  *&v41[6] = *&v41[15];
  outlined init with copy of BNNSGraph.Builder.SliceIndex(v43, v40);
  type metadata accessor for BNNSLayerParametersNormalization(0);
  swift_dynamicCast();
  memcpy(__dst, __src, 0x468uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B7E77850;
  *(v25 + 32) = v41;
  v26 = (v25 + 32);
  *(v25 + 40) = __dst;
  if (a8 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
    v27 = swift_allocObject();
    *(v27 + 32) = 8;
    v28 = (v27 + 32);
    *(v27 + 36) = v24;
    v29 = v26;
    p_filter_params = 0;
  }

  else
  {
    filter_params.flags = a6;
    filter_params.n_threads = a7;
    filter_params.alloc_memory = a8;
    filter_params.free_memory = a9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
    v31 = swift_allocObject();
    *(v31 + 32) = 8;
    v28 = (v31 + 32);
    *(v31 + 36) = v24;
    p_filter_params = &filter_params;
    v29 = v26;
  }

  FusedLayer = BNNSFilterCreateFusedLayer(2uLL, v28, v29, p_filter_params);
  swift_setDeallocating();
  swift_deallocClassInstance();

  type metadata accessor for BNNS.FusedParametersLayer();
  v33 = swift_allocObject();
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  if (!FusedLayer)
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    goto LABEL_18;
  }

  *(v33 + 16) = FusedLayer;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate42FusableLayerParametersWrapperDeallocatable_pSgGMd);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B7E77850;
  outlined init with copy of BNNSGraph.Builder.SliceIndex(v48, __src);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate42FusableLayerParametersWrapperDeallocatable_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v35 + 64) = 0;
    *(v35 + 32) = 0u;
    *(v35 + 48) = 0u;
  }

  outlined init with copy of BNNSGraph.Builder.SliceIndex(v45, __dst);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v35 + 104) = 0;
    *(v35 + 88) = 0u;
    *(v35 + 72) = 0u;
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  *(v34 + 24) = v35;

  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v34;
}

uint64_t BNNS.FusedParametersLayer.apply(batchSize:inputA:inputB:inputC:output:for:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = *(a2 + 136);
  if (v7 && (v8 = *(a3 + 136)) != 0 && (v9 = *(a4 + 136)) != 0 && (v10 = *(a5 + 136)) != 0)
  {
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B7E76E00;
    *(v11 + 32) = v7;
    v12 = (v11 + 32);
    *(v11 + 40) = v8;
    *(v11 + 48) = v9;
    v13 = *(v6 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v14 = swift_allocObject();
    BNNSNDArrayDescriptor.shape.getter(v23);
    *(v14 + 32) = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v22);
    *(v14 + 40) = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v21);
    *(v14 + 48) = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v23);
    v15 = BNNS.Shape.batchStride.getter();
    v16 = BNNSFusedFilterApplyMultiInputBatch(v13, v24, 3uLL, v12, (v14 + 32), v10, v15, (a6 & 1) == 0);
    swift_setDeallocating();
    swift_deallocClassInstance();

    if (!v16)
    {
      return result;
    }

    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
  swift_allocError();
  *v19 = v18;
  return swift_willThrow();
}

uint64_t BNNS.FusedParametersLayer.applyBackward(batchSize:inputA:inputB:inputC:output:outputGradient:generatingInputAGradient:generatingInputBGradient:generatingInputCGradient:generatingParameterGradients:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, __int128 *a7, _OWORD *a8, __int128 *a9, uint64_t a10)
{
  v10 = a8;
  v12 = a6;
  v13 = a2;
  v104 = *MEMORY[0x1E69E9840];
  v14 = *(a10 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    *&v92[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = *&v92[0];
    v16 = (a10 + 32);
    do
    {
      v17 = v16[9];
      v101 = v16[8];
      v102 = v17;
      v103 = v16[10];
      v18 = v16[5];
      v97 = v16[4];
      v98 = v18;
      v19 = v16[7];
      v99 = v16[6];
      v100 = v19;
      v20 = v16[1];
      v93 = *v16;
      v94 = v20;
      v21 = v16[3];
      v95 = v16[2];
      v96 = v21;
      v22 = swift_slowAlloc();
      v23 = v102;
      v22[8] = v101;
      v22[9] = v23;
      v22[10] = v103;
      v24 = v98;
      v22[4] = v97;
      v22[5] = v24;
      v25 = v100;
      v22[6] = v99;
      v22[7] = v25;
      v26 = v94;
      *v22 = v93;
      v22[1] = v26;
      v27 = v96;
      v22[2] = v95;
      v22[3] = v27;
      v29 = *(v15 + 2);
      v28 = *(v15 + 3);
      *&v92[0] = v15;
      if (v29 >= v28 >> 1)
      {
        v30 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v22 = v30;
        v15 = *&v92[0];
      }

      *(v15 + 2) = v29 + 1;
      *&v15[8 * v29 + 32] = v22;
      v16 += 11;
      --v14;
    }

    while (v14);
    v10 = a8;
    v12 = a6;
    v13 = a2;
  }

  v31 = a7[8];
  v32 = a7[9];
  v33 = a7[6];
  v100 = a7[7];
  v101 = v31;
  v34 = a7[10];
  v102 = v32;
  v103 = v34;
  v35 = a7[4];
  v36 = a7[5];
  v37 = a7[2];
  v96 = a7[3];
  v97 = v35;
  v98 = v36;
  v99 = v33;
  v38 = *a7;
  v94 = a7[1];
  v95 = v37;
  v39 = v10[9];
  v92[8] = v10[8];
  v92[9] = v39;
  v92[10] = v10[10];
  v93 = v38;
  v40 = v10[5];
  v92[4] = v10[4];
  v92[5] = v40;
  v41 = v10[7];
  v92[6] = v10[6];
  v92[7] = v41;
  v42 = v10[1];
  v92[0] = *v10;
  v92[1] = v42;
  v43 = v10[3];
  v92[2] = v10[2];
  v92[3] = v43;
  v44 = a9[8];
  v45 = a9[9];
  v46 = a9[6];
  v91[7] = a9[7];
  v91[8] = v44;
  v47 = a9[10];
  v91[9] = v45;
  v91[10] = v47;
  v48 = a9[4];
  v49 = a9[5];
  v50 = a9[2];
  v91[3] = a9[3];
  v91[4] = v48;
  v91[5] = v49;
  v91[6] = v46;
  v51 = *a9;
  v91[1] = a9[1];
  v91[2] = v50;
  v52 = v12[9];
  *&v90.stride[7] = v12[8];
  *&v90.data_type = v52;
  *&v90.table_data_type = v12[10];
  v91[0] = v51;
  v53 = v12[5];
  *&v90.size[7] = v12[4];
  *&v90.stride[1] = v53;
  v54 = v12[7];
  *&v90.stride[3] = v12[6];
  *&v90.stride[5] = v54;
  v55 = v12[1];
  *&v90.flags = *v12;
  *&v90.size[1] = v55;
  v56 = v12[3];
  *&v90.size[3] = v12[2];
  *&v90.size[5] = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVSgGMd);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1B7E76E00;
  *(v57 + 32) = *(v13 + 136);
  v80 = (v57 + 32);
  v58 = *(a4 + 136);
  *(v57 + 40) = *(a3 + 136);
  *(v57 + 48) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySpySo21BNNSNDArrayDescriptoraGGMd);
  v59 = swift_allocObject();
  *(v59 + 32) = &v93;
  in_deltaa = (v59 + 32);
  *(v59 + 16) = xmmword_1B7E76E00;
  *(v59 + 40) = v92;
  *(v59 + 48) = v91;
  v82 = *(v81 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v60 = swift_allocObject();
  BNNSNDArrayDescriptor.shape.getter(v89);
  v60[4] = BNNS.Shape.batchStride.getter();
  in_stridea = v60 + 4;
  BNNSNDArrayDescriptor.shape.getter(v88);
  v60[5] = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v87);
  v60[6] = BNNS.Shape.batchStride.getter();
  v61 = swift_allocObject();
  BNNSNDArrayDescriptor.shape.getter(v89);
  *(v61 + 32) = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v88);
  *(v61 + 40) = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v87);
  *(v61 + 48) = BNNS.Shape.batchStride.getter();
  v62 = *(a5 + 136);
  BNNSNDArrayDescriptor.shape.getter(v89);
  out_stride = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v88);
  out_delta_stride = BNNS.Shape.batchStride.getter();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2), 0, v15);
  }

  v65 = (v15 + 32);

  v66 = BNNSFusedFilterApplyBackwardMultiInputBatch(v82, a1, 3uLL, v80, in_stridea, in_deltaa, (v61 + 32), v62, out_stride, &v90, out_delta_stride, v15 + 4);

  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  if (v66)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();
    for (i = *(v15 + 2); i; --i)
    {
      v70 = *v65++;
      v69 = v70;
      if (v70)
      {
        MEMORY[0x1B8CB2C50](v69, -1, -1);
      }
    }
  }

  else
  {
    for (j = *(v15 + 2); j; --j)
    {
      v74 = *v65++;
      v73 = v74;
      if (v74)
      {
        MEMORY[0x1B8CB2C50](v73, -1, -1);
      }
    }
  }
}

uint64_t outlined destroy of FusableTernaryInputLayerParametersWrapper?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t dispatch thunk of FusableTernaryInputLayerParametersWrapper.layerParameters(inputA:inputB:inputC:output:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[17];
  v7 = *(a1 + 36);
  v8 = a1[19];
  v9 = *(a1 + 40);
  v10 = a2[17];
  v11 = *(a2 + 36);
  v12 = a2[19];
  v13 = *(a2 + 40);
  v14 = a3[17];
  v15 = *(a3 + 36);
  v16 = a3[19];
  v17 = *(a3 + 40);
  v18 = a4[17];
  v19 = *(a4 + 36);
  v20 = a4[19];
  v21 = *(a4 + 40);
  v22 = *(a6 + 8);
  v70 = *a1;
  v71 = *(a1 + 1);
  v72 = *(a1 + 3);
  v73 = *(a1 + 5);
  v74 = *(a1 + 7);
  v75 = *(a1 + 9);
  v76 = *(a1 + 11);
  v77 = *(a1 + 13);
  v78 = *(a1 + 15);
  v79 = v6;
  v80 = v7;
  v81 = v8;
  v82 = v9;
  v83 = *(a1 + 164);
  v56 = *a2;
  v57 = *(a2 + 1);
  v58 = *(a2 + 3);
  v59 = *(a2 + 5);
  v60 = *(a2 + 7);
  v61 = *(a2 + 9);
  v62 = *(a2 + 11);
  v63 = *(a2 + 13);
  v64 = *(a2 + 15);
  v65 = v10;
  v66 = v11;
  v67 = v12;
  v68 = v13;
  v69 = *(a2 + 164);
  v42 = *a3;
  v43 = *(a3 + 1);
  v44 = *(a3 + 3);
  v45 = *(a3 + 5);
  v46 = *(a3 + 7);
  v47 = *(a3 + 9);
  v48 = *(a3 + 11);
  v49 = *(a3 + 13);
  v50 = *(a3 + 15);
  v51 = v14;
  v52 = v15;
  v53 = v16;
  v54 = v17;
  v55 = *(a3 + 164);
  v28 = *a4;
  v23 = *(a4 + 3);
  v29 = *(a4 + 1);
  v30 = v23;
  v24 = *(a4 + 7);
  v31 = *(a4 + 5);
  v32 = v24;
  v25 = *(a4 + 11);
  v33 = *(a4 + 9);
  v34 = v25;
  v26 = *(a4 + 15);
  v35 = *(a4 + 13);
  v36 = v26;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v41 = *(a4 + 164);
  return v22(&v70, &v56, &v42, &v28, a5);
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.FusedTernaryArithmeticParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 12))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.FusedTernaryArithmeticParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t BNNS.NormalizationLayer.__allocating_init(type:input:output:beta:gamma:momentum:epsilon:activation:filterParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int (__cdecl *a9)(void **, size_t, size_t), void (__cdecl *a10)(void *))
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v10;
  v171 = *MEMORY[0x1E69E9840];
  v23 = v22[9];
  v133 = v22[8];
  v134 = v23;
  v135 = v22[10];
  v24 = v22[5];
  v129 = v22[4];
  v130 = v24;
  v25 = v22[6];
  v132 = v22[7];
  v131 = v25;
  v26 = v22[1];
  v125 = *v22;
  v126 = v26;
  v27 = v22[2];
  v128 = v22[3];
  v127 = v27;
  v29 = v28[9];
  v144 = v28[8];
  v145 = v29;
  v146 = v28[10];
  v30 = v28[5];
  v140 = v28[4];
  v141 = v30;
  v31 = v28[6];
  v143 = v28[7];
  v142 = v31;
  v32 = v28[1];
  v136 = *v28;
  v137 = v32;
  v33 = v28[2];
  v139 = v28[3];
  v138 = v33;
  v35 = v34[9];
  v155 = v34[8];
  v156 = v35;
  v157 = v34[10];
  v36 = v34[5];
  v151 = v34[4];
  v152 = v36;
  v37 = v34[6];
  v154 = v34[7];
  v153 = v37;
  v38 = v34[1];
  v147 = *v34;
  v148 = v38;
  v39 = v34[2];
  v150 = v34[3];
  v149 = v39;
  v41 = v40[9];
  v166 = v40[8];
  v167 = v41;
  v168 = v40[10];
  v42 = v40[5];
  v162 = v40[4];
  v163 = v42;
  v43 = v40[6];
  v165 = v40[7];
  v164 = v43;
  v44 = v40[1];
  v158 = *v40;
  v159 = v44;
  v45 = v40[2];
  v161 = v40[3];
  v160 = v45;
  memcpy(v169, v10, sizeof(v169));
  v46 = *v16;
  v47 = *(v16 + 8);
  memcpy(v170, v21, 0x169uLL);
  v48 = _s10Accelerate4BNNSO17NormalizationTypeOWOg(v170);
  v49 = destructiveProjectEnumData for BNNS.NormalizationType(v170);
  if (v48 >= 2)
  {
    if (v48 == 2)
    {
      v62 = 0;
      v63 = 0uLL;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
    }

    else
    {
      v62 = *v49;
      v63 = 0uLL;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
    }

    v71 = v63;
    v72 = v63;
    v73 = v63;
    v74 = v63;
    v75 = v63;
    v76 = v63;
    v77 = v63;
    v78 = v63;
    v79 = v63;
    v80 = v63;
    v81 = v63;
  }

  else
  {
    v50 = *(v49 + 144);
    v109 = *(v49 + 128);
    v110 = v50;
    v111 = *(v49 + 160);
    v51 = *(v49 + 80);
    v105 = *(v49 + 64);
    v106 = v51;
    v52 = *(v49 + 112);
    v107 = *(v49 + 96);
    v108 = v52;
    v53 = *(v49 + 16);
    v101 = *v49;
    v102 = v53;
    v54 = *(v49 + 48);
    v103 = *(v49 + 32);
    v104 = v54;
    v55 = *(v49 + 328);
    v56 = *(v49 + 344);
    v57 = *(v49 + 296);
    v121 = *(v49 + 312);
    v122 = v55;
    v123 = v56;
    v58 = *(v49 + 264);
    v59 = *(v49 + 280);
    v117 = *(v49 + 248);
    v118 = v58;
    v112 = *(v49 + 176);
    v124 = *(v49 + 360);
    v119 = v59;
    v120 = v57;
    v60 = *(v49 + 200);
    v113 = *(v49 + 184);
    v114 = v60;
    v61 = *(v49 + 232);
    v115 = *(v49 + 216);
    v116 = v61;
    *&layer_params.i_desc.stride[7] = v109;
    *&layer_params.i_desc.data_type = v110;
    *&layer_params.i_desc.table_data_type = v111;
    LOBYTE(layer_params.o_desc.flags) = v112;
    *&layer_params.i_desc.size[7] = v105;
    *&layer_params.i_desc.stride[1] = v106;
    *&layer_params.i_desc.stride[3] = v107;
    *&layer_params.i_desc.stride[5] = v108;
    *&layer_params.i_desc.flags = v101;
    *&layer_params.i_desc.size[1] = v102;
    *&layer_params.i_desc.size[3] = v103;
    *&layer_params.i_desc.size[5] = v104;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(&layer_params) == 1)
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
    }

    else
    {
      v90 = v109;
      v91 = v110;
      v92 = v111;
      v86 = v105;
      v87 = v106;
      v88 = v107;
      v89 = v108;
      v82 = v101;
      v83 = v102;
      v84 = v103;
      v85 = v104;
    }

    __src[8] = v121;
    __src[9] = v122;
    __src[10] = v123;
    LOBYTE(__src[11]) = v124;
    __src[4] = v117;
    __src[5] = v118;
    __src[6] = v119;
    __src[7] = v120;
    __src[0] = v113;
    __src[1] = v114;
    __src[2] = v115;
    __src[3] = v116;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(__src) == 1)
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
    }

    else
    {
      v79 = v121;
      v80 = v122;
      v81 = v123;
      v75 = v117;
      v76 = v118;
      v77 = v119;
      v78 = v120;
      v71 = v113;
      v72 = v114;
      v73 = v115;
      v74 = v116;
    }

    v62 = 0;
  }

  v96 = v46;
  v97 = v47;
  BNNS.ActivationFunction.bnnsActivation.getter(&v99);
  memcpy(__dst, v169, 0x169uLL);
  if (_s10Accelerate4BNNSO17NormalizationTypeOWOg(__dst) == 2)
  {
    v64 = *destructiveProjectEnumData for BNNS.NormalizationType(__dst);
  }

  else
  {
    v64 = 0;
  }

  __src[8] = v166;
  __src[9] = v167;
  __src[4] = v162;
  __src[5] = v163;
  __src[6] = v164;
  __src[7] = v165;
  __src[0] = v158;
  __src[1] = v159;
  __src[2] = v160;
  __src[3] = v161;
  __src[18] = v154;
  __src[19] = v155;
  __src[20] = v156;
  __src[21] = v157;
  __src[14] = v150;
  __src[15] = v151;
  __src[16] = v152;
  __src[17] = v153;
  __src[10] = v168;
  __src[11] = v147;
  __src[12] = v148;
  __src[13] = v149;
  __src[30] = v144;
  __src[31] = v145;
  __src[26] = v140;
  __src[27] = v141;
  __src[29] = v143;
  __src[28] = v142;
  __src[22] = v136;
  __src[23] = v137;
  __src[25] = v139;
  __src[24] = v138;
  __src[40] = v132;
  __src[41] = v133;
  __src[42] = v134;
  __src[43] = v135;
  __src[36] = v128;
  __src[37] = v129;
  __src[38] = v130;
  __src[39] = v131;
  __src[32] = v146;
  __src[33] = v125;
  __src[34] = v126;
  __src[35] = v127;
  __src[52] = v90;
  __src[53] = v91;
  __src[48] = v86;
  __src[49] = v87;
  __src[51] = v89;
  __src[50] = v88;
  __src[44] = v82;
  __src[45] = v83;
  __src[47] = v85;
  __src[46] = v84;
  __src[62] = v78;
  __src[63] = v79;
  __src[64] = v80;
  __src[65] = v81;
  __src[58] = v74;
  __src[59] = v75;
  __src[60] = v76;
  __src[61] = v77;
  __src[54] = v92;
  __src[55] = v71;
  __src[56] = v72;
  __src[57] = v73;
  memcpy(&layer_params, __src, 0x420uLL);
  layer_params.momentum = v20;
  layer_params.epsilon = v18;
  layer_params.activation = v99;
  layer_params.num_groups = v62;
  layer_params.normalization_axis = v64;
  if (a9 == 1)
  {
    memcpy(v94, v169, 0x169uLL);
    v65 = _s10Accelerate4BNNSO17NormalizationTypeOWOg(v94);
    destructiveProjectEnumData for BNNS.NormalizationType(v94);
    v66 = v65 + 2;
    p_filter_params = 0;
  }

  else
  {
    filter_params.flags = v14;
    filter_params.n_threads = v12;
    filter_params.alloc_memory = a9;
    filter_params.free_memory = a10;
    memcpy(v94, v169, 0x169uLL);
    v68 = _s10Accelerate4BNNSO17NormalizationTypeOWOg(v94);
    destructiveProjectEnumData for BNNS.NormalizationType(v94);
    v66 = v68 + 2;
    p_filter_params = &filter_params;
  }

  v69 = BNNSFilterCreateLayerNormalization(v66, &layer_params, p_filter_params);
  type metadata accessor for BNNS.NormalizationLayer();
  result = swift_allocObject();
  if (v69)
  {
    *(result + 16) = v69;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.NormalizationLayer.apply(batchSize:input:output:for:)(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a2 + 136);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = *(v4 + 16);
  BNNSNDArrayDescriptor.shape.getter(v15);
  result = BNNS.Shape.batchStride.getter();
  v10 = *(a3 + 136);
  if (!v10)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v11 = result;
  BNNSNDArrayDescriptor.shape.getter(v14);
  v12 = BNNS.Shape.batchStride.getter();
  result = BNNSNormalizationFilterApplyBatch(v9, v8, v5, v11, v10, v12, (a4 & 1) == 0);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.NormalizationLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:generatingBetaGradient:generatingGammaGradient:)(size_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v74 = *MEMORY[0x1E69E9840];
  v11 = a5[8];
  v12 = a5[9];
  v13 = a5[6];
  *&in_delta.stride[5] = a5[7];
  *&in_delta.stride[7] = v11;
  v14 = a5[10];
  *&in_delta.data_type = v12;
  *&in_delta.table_data_type = v14;
  v15 = a5[4];
  v16 = a5[5];
  v17 = a5[2];
  *&in_delta.size[5] = a5[3];
  *&in_delta.size[7] = v15;
  *&in_delta.stride[1] = v16;
  *&in_delta.stride[3] = v13;
  v18 = *a5;
  *&in_delta.size[1] = a5[1];
  *&in_delta.size[3] = v17;
  v19 = a4[9];
  *&out_delta.stride[7] = a4[8];
  *&out_delta.data_type = v19;
  *&out_delta.table_data_type = a4[10];
  *&in_delta.flags = v18;
  v20 = a4[5];
  *&out_delta.size[7] = a4[4];
  *&out_delta.stride[1] = v20;
  v21 = a4[7];
  *&out_delta.stride[3] = a4[6];
  *&out_delta.stride[5] = v21;
  v22 = a4[1];
  *&out_delta.flags = *a4;
  *&out_delta.size[1] = v22;
  v23 = a4[3];
  *&out_delta.size[3] = a4[2];
  *&out_delta.size[5] = v23;
  v24 = *(a6 + 144);
  *&v72.stride[7] = *(a6 + 128);
  *&v72.data_type = v24;
  *&v72.table_data_type = *(a6 + 160);
  v25 = *(a6 + 80);
  *&v72.size[7] = *(a6 + 64);
  *&v72.stride[1] = v25;
  v26 = *(a6 + 112);
  *&v72.stride[3] = *(a6 + 96);
  *&v72.stride[5] = v26;
  v27 = *(a6 + 16);
  *&v72.flags = *a6;
  *&v72.size[1] = v27;
  v28 = *(a6 + 48);
  *&v72.size[3] = *(a6 + 32);
  v73 = *(a6 + 176);
  *&v72.size[5] = v28;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v72) == 1)
  {
    v29 = *(a7 + 144);
    *&v70.stride[7] = *(a7 + 128);
    *&v70.data_type = v29;
    *&v70.table_data_type = *(a7 + 160);
    v30 = *(a7 + 80);
    *&v70.size[7] = *(a7 + 64);
    *&v70.stride[1] = v30;
    v31 = *(a7 + 112);
    *&v70.stride[3] = *(a7 + 96);
    *&v70.stride[5] = v31;
    v32 = *(a7 + 16);
    *&v70.flags = *a7;
    *&v70.size[1] = v32;
    v33 = *(a7 + 48);
    *&v70.size[3] = *(a7 + 32);
    v71 = *(a7 + 176);
    *&v70.size[5] = v33;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v70) == 1)
    {
      v34 = *(v7 + 16);
      BNNSNDArrayDescriptor.shape.getter(&beta_delta);
      v35 = BNNS.Shape.batchStride.getter();
      v36 = *(a3 + 136);
      BNNSNDArrayDescriptor.shape.getter(&v62);
      v37 = BNNS.Shape.batchStride.getter();
      BNNSNDArrayDescriptor.shape.getter(v65);
      v38 = BNNS.Shape.batchStride.getter();
      result = BNNSNormalizationFilterApplyBackwardBatch(v34, a1, &in_delta, v35, v36, v37, &out_delta, v38, 0, 0);
    }

    else
    {
      beta_delta = v70;
      v50 = *(v7 + 16);
      BNNSNDArrayDescriptor.shape.getter(&v62);
      v51 = BNNS.Shape.batchStride.getter();
      v52 = *(a3 + 136);
      BNNSNDArrayDescriptor.shape.getter(v65);
      v53 = BNNS.Shape.batchStride.getter();
      BNNSNDArrayDescriptor.shape.getter(v63);
      v54 = BNNS.Shape.batchStride.getter();
      result = BNNSNormalizationFilterApplyBackwardBatch(v50, a1, &in_delta, v51, v52, v53, &out_delta, v54, 0, &beta_delta);
    }
  }

  else
  {
    beta_delta = v72;
    v40 = *(a7 + 144);
    *&v68.stride[7] = *(a7 + 128);
    *&v68.data_type = v40;
    *&v68.table_data_type = *(a7 + 160);
    v41 = *(a7 + 80);
    *&v68.size[7] = *(a7 + 64);
    *&v68.stride[1] = v41;
    v42 = *(a7 + 112);
    *&v68.stride[3] = *(a7 + 96);
    *&v68.stride[5] = v42;
    v43 = *(a7 + 16);
    *&v68.flags = *a7;
    *&v68.size[1] = v43;
    v44 = *(a7 + 48);
    *&v68.size[3] = *(a7 + 32);
    v69 = *(a7 + 176);
    *&v68.size[5] = v44;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v68) == 1)
    {
      v45 = *(v7 + 16);
      BNNSNDArrayDescriptor.shape.getter(&v62);
      v46 = BNNS.Shape.batchStride.getter();
      v47 = *(a3 + 136);
      BNNSNDArrayDescriptor.shape.getter(v65);
      v48 = BNNS.Shape.batchStride.getter();
      BNNSNDArrayDescriptor.shape.getter(v63);
      v49 = BNNS.Shape.batchStride.getter();
      result = BNNSNormalizationFilterApplyBackwardBatch(v45, a1, &in_delta, v46, v47, v48, &out_delta, v49, &beta_delta, 0);
    }

    else
    {
      v62 = v68;
      v55 = *(v7 + 16);
      BNNSNDArrayDescriptor.shape.getter(v65);
      v56 = BNNS.Shape.batchStride.getter();
      v57 = *(a3 + 136);
      BNNSNDArrayDescriptor.shape.getter(v63);
      v58 = BNNS.Shape.batchStride.getter();
      BNNSNDArrayDescriptor.shape.getter(v61);
      v59 = BNNS.Shape.batchStride.getter();
      result = BNNSNormalizationFilterApplyBackwardBatch(v55, a1, &in_delta, v56, v57, v58, &out_delta, v59, &beta_delta, &v62);
    }
  }

  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v60 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.NormalizationLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of BNNS.NormalizationLayer.apply(batchSize:input:output:for:)(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v5 = a2[17];
  v6 = *(a2 + 36);
  v7 = a2[19];
  v8 = *(a2 + 40);
  v9 = a3[17];
  v10 = *(a3 + 36);
  v11 = a3[19];
  v12 = *(a3 + 40);
  v13 = *(*v4 + 96);
  v29 = *a2;
  v30 = *(a2 + 1);
  v31 = *(a2 + 3);
  v32 = *(a2 + 5);
  v33 = *(a2 + 7);
  v34 = *(a2 + 9);
  v35 = *(a2 + 11);
  v36 = *(a2 + 13);
  v37 = *(a2 + 15);
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = v8;
  v42 = *(a2 + 164);
  v15 = *a3;
  v16 = *(a3 + 1);
  v17 = *(a3 + 3);
  v18 = *(a3 + 5);
  v19 = *(a3 + 7);
  v20 = *(a3 + 9);
  v21 = *(a3 + 11);
  v22 = *(a3 + 13);
  v23 = *(a3 + 15);
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = *(a3 + 164);
  return v13(a1, &v29, &v15, a4 & 1);
}

uint64_t dispatch thunk of BNNS.NormalizationLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:generatingBetaGradient:generatingGammaGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v8 = a2[17];
  v9 = *(a2 + 36);
  v10 = a2[19];
  v11 = *(a2 + 40);
  v12 = a3[17];
  v13 = *(a3 + 36);
  v14 = a3[19];
  v15 = *(a3 + 40);
  v16 = *(a4 + 136);
  v17 = *(a4 + 144);
  v18 = *(a4 + 152);
  v19 = *(a4 + 160);
  v20 = *(a5 + 136);
  v21 = *(a5 + 144);
  v22 = *(a5 + 152);
  v23 = *(a5 + 160);
  v24 = *(a6 + 176);
  v25 = *(a7 + 176);
  v146 = *(*v7 + 104);
  v141 = v8;
  v142 = v9;
  v143 = v10;
  v144 = v11;
  v26 = *a2;
  v27 = *(a2 + 1);
  v28 = *(a2 + 3);
  v29 = *(a2 + 5);
  v30 = *(a2 + 7);
  v31 = *(a2 + 9);
  v32 = *(a2 + 13);
  v33 = *(a2 + 15);
  v34 = *(a2 + 164);
  v138 = *(a2 + 11);
  v139 = v32;
  v140 = v33;
  v145 = v34;
  v127 = v12;
  v128 = v13;
  v129 = v14;
  v130 = v15;
  v35 = *a3;
  v36 = *(a3 + 1);
  v37 = *(a3 + 3);
  v38 = *(a3 + 5);
  v39 = *(a3 + 7);
  v40 = *(a3 + 9);
  v41 = *(a3 + 11);
  v42 = *(a3 + 13);
  v43 = *(a3 + 15);
  v44 = *(a3 + 164);
  v133 = v27;
  v134 = v28;
  v135 = v29;
  v136 = v30;
  v137 = v31;
  v124 = v41;
  v125 = v42;
  v126 = v43;
  v131 = v44;
  v113 = v16;
  v114 = v17;
  v115 = v18;
  v116 = v19;
  *&v27 = *a4;
  v45 = *(a4 + 8);
  v46 = *(a4 + 24);
  v47 = *(a4 + 40);
  v48 = *(a4 + 56);
  v49 = *(a4 + 72);
  v50 = *(a4 + 88);
  v51 = *(a4 + 104);
  v52 = *(a4 + 120);
  v53 = *(a4 + 164);
  v119 = v36;
  v120 = v37;
  v121 = v38;
  v122 = v39;
  v123 = v40;
  v110 = v50;
  v111 = v51;
  v112 = v52;
  v117 = v53;
  v99 = v20;
  v100 = v21;
  v101 = v22;
  v102 = v23;
  *&v50 = *a5;
  v54 = *(a5 + 8);
  v55 = *(a5 + 24);
  v56 = *(a5 + 40);
  v57 = *(a5 + 56);
  v58 = *(a5 + 72);
  v59 = *(a5 + 88);
  v60 = *(a5 + 104);
  v61 = *(a5 + 120);
  v62 = *(a5 + 164);
  v105 = v45;
  v106 = v46;
  v107 = v47;
  v108 = v48;
  v109 = v49;
  v91 = v54;
  v92 = v55;
  v93 = v56;
  v94 = v57;
  v95 = v58;
  v96 = v59;
  v97 = v60;
  v98 = v61;
  v103 = v62;
  v63 = *a6;
  v64 = a6[1];
  v65 = a6[2];
  v66 = a6[3];
  v67 = a6[4];
  v68 = a6[5];
  v69 = a6[6];
  v70 = a6[7];
  v71 = a6[8];
  v72 = a6[9];
  v73 = a6[10];
  v89 = v24;
  v74 = *a7;
  v75 = a7[1];
  v76 = a7[2];
  v77 = a7[3];
  v78 = a7[4];
  v79 = a7[5];
  v80 = a7[6];
  v81 = a7[7];
  v83 = a7[8];
  v82 = a7[9];
  v84 = a7[10];
  v87 = v25;
  v132 = v26;
  v118 = v35;
  v104 = v27;
  v90 = v50;
  v88[0] = v63;
  v88[1] = v64;
  v88[2] = v65;
  v88[3] = v66;
  v88[4] = v67;
  v88[5] = v68;
  v88[6] = v69;
  v88[7] = v70;
  v88[8] = v71;
  v88[9] = v72;
  v88[10] = v73;
  v86[0] = v74;
  v86[1] = v75;
  v86[2] = v76;
  v86[3] = v77;
  v86[4] = v78;
  v86[5] = v79;
  v86[6] = v80;
  v86[7] = v81;
  v86[8] = v83;
  v86[9] = v82;
  v86[10] = v84;
  return v146(a1, &v132, &v118, &v104, &v90, v88, v86);
}

uint64_t getEnumTagSinglePayload for BNNS.NormalizationType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 361))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.NormalizationType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 361) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 176) = 2 * -a2;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 360) = 0;
      *(result + 184) = 0u;
      result += 184;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      return result;
    }

    *(result + 361) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for BNNS.NormalizationType(uint64_t result, char a2)
{
  v2 = *(result + 360) & 1 | (a2 << 6);
  *(result + 176) &= 1uLL;
  *(result + 360) = v2;
  return result;
}

uint64_t static vDSP.rectangularToPolar<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.rectangularToPolar<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.rectangularToPolar<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.rectangularToPolar<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.rectangularToPolar<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t partial apply for closure #1 in static vDSP.rectangularToPolar<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.rectangularToPolar<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:));
}

{
  return closure #1 in static vDSP.rectangularToPolar<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:));
}

uint64_t static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:));
}

{
  return static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:));
}

uint64_t closure #1 in static vDSP.rectangularToPolar<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v16 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a8, a6);
  a9(a3, a1, a4, v15, a5, v16);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(a5 + 16))(a3, a5);
  result = (*(*(a6 + 8) + 16))(a4);
  if (result == v10)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a6 + 16))(a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static vDSP.polarToRectangular<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.rectangularToPolar<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.polarToRectangular<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.rectangularToPolar<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.polarToRectangular<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:));
}

{
  return static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:));
}

uint64_t static vDSP.rectangularToPolar<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  v10 = (*(a3 + 16))(a2, a3);
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  return a5(v10, a4, v12);
}

uint64_t static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (*(*(a6 + 8) + 16))(a4);
  result = (*(a5 + 16))(a3, a5);
  if (result == v11)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a6 + 16))(a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:)(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    if (a4 >= -1)
    {
      return a5();
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:));
}

uint64_t partial apply for closure #1 in static vDSP.polarToRectangular<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.rectangularToPolar<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:));
}

{
  return closure #1 in static vDSP.rectangularToPolar<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:));
}

uint64_t partial apply for closure #1 in static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:));
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convert<A, B>(polarCoordinates:toRectangularCoordinates:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:)(a1, a2, *(v2 + 16), *(v2 + 24), MEMORY[0x1E6958D58]);
}

{
  return closure #1 in closure #1 in static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:)(a1, a2, *(v2 + 16), *(v2 + 24), MEMORY[0x1E6958D50]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:)(a1, a2, *(v2 + 16), *(v2 + 24), MEMORY[0x1E6958D48]);
}

{
  return closure #1 in closure #1 in static vDSP.convert<A, B>(rectangularCoordinates:toPolarCoordinates:)(a1, a2, *(v2 + 16), *(v2 + 24), MEMORY[0x1E6958D40]);
}

Swift::Int vDSP.DFTTransformType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

uint64_t vDSP.DFT.init(previous:count:direction:transformType:ofType:)(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v5 = v4;
  v8 = *a3;
  v9 = *a4;
  v10 = *(*v5 + 88);
  v11 = *(*v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = v8;
  v16 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 16))(a1, a2, &v17, &v16, v11, v10, AssociatedTypeWitness, AssociatedConformanceWitness);

  if (v14)
  {
    *(v5 + 24) = v9;
    *(v5 + 16) = v14;
  }

  else
  {
    type metadata accessor for vDSP.DFT();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t vDSP.DFT.transform<A>(inputReal:inputImaginary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  result = Array.init(unsafeUninitializedCapacity:initializingWith:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in vDSP.DFT.transform<A>(inputReal:inputImaginary:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  *a3 = Array.init(unsafeUninitializedCapacity:initializingWith:)();

  *a2 = a4;
  return result;
}

uint64_t closure #1 in closure #1 in vDSP.DFT.transform<A>(inputReal:inputImaginary:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = type metadata accessor for UnsafeMutableBufferPointer();
  WitnessTable = swift_getWitnessTable();
  result = vDSP.DFT.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(a4, a5, a6, a1, a8, v15, a9, WitnessTable);
  *a2 = a7;
  return result;
}

uint64_t vDSP.DFT.transform<A, B>(inputReal:inputImaginary:outputReal:outputImaginary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(v8 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(v15, a1, a2, a3, a4, a5, a6, a7, a8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t vDSP.DFT.deinit()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(v0 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return v0;
}

uint64_t vDSP.DFT.__deallocating_deinit()
{
  vDSP.DFT.deinit();

  return swift_deallocClassInstance();
}

uint64_t static vDSP.VectorizableFloat.makeDFTSetup<A>(previous:count:direction:transformType:)(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(uint64_t))
{
  if (*a4)
  {
    if (result)
    {
      result = *(result + 16);
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a8(result);
    }

    __break(1u);
  }

  else
  {
    if (result)
    {
      result = *(result + 16);
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a7(result);
    }
  }

  __break(1u);
  return result;
}

uint64_t static vDSP.VectorizableFloat.transform<A, B>(dftSetup:inputReal:inputImaginary:outputReal:outputImaginary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[2] = a6;
  v11[3] = a7;
  v11[4] = a8;
  v11[5] = a9;
  v11[6] = a3;
  v11[7] = a4;
  v11[8] = a5;
  v11[9] = a1;
  return (*(a8 + 24))(a10, v11, MEMORY[0x1E69E7CA8] + 8, a6, a8);
}

void *closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.VectorizableFloat.transform<A, B>(dftSetup:inputReal:inputImaginary:outputReal:outputImaginary:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!*a7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*result)
  {
    return a8(a2, a3, a5);
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type vDSP.DFTTransformType and conformance vDSP.DFTTransformType()
{
  result = lazy protocol witness table cache variable for type vDSP.DFTTransformType and conformance vDSP.DFTTransformType;
  if (!lazy protocol witness table cache variable for type vDSP.DFTTransformType and conformance vDSP.DFTTransformType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vDSP.DFTTransformType and conformance vDSP.DFTTransformType);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Float(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Float and conformance Float();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Double(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Double and conformance Double();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.VectorizableDouble.transform<A, B>(dftSetup:inputReal:inputImaginary:outputReal:outputImaginary:)(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v3 = *(v2 + 80);
  v8 = *(v2 + 64);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  v7[2] = *(v2 + 56);
  v9 = v3;
  return (*(v5 + 16))(a2, v7, MEMORY[0x1E69E7CA8] + 8, v4);
}

Swift::Int vDSP.IntegrationRule.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

uint64_t static vDSP.integrate<A>(_:using:stepSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 16))(a3, a4);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v4, partial apply for closure #1 in static vDSP.integrate<A>(_:using:stepSize:));
}

{
  v4 = (*(a4 + 16))(a3, a4);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v4, partial apply for closure #1 in static vDSP.integrate<A>(_:using:stepSize:));
}

uint64_t closure #1 in static vDSP.integrate<A>(_:using:stepSize:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v13 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  static vDSP.integrate<A, B>(_:using:stepSize:result:)(a3, a4, a1, a5, v12, a6, v13);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v13 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  static vDSP.integrate<A, B>(_:using:stepSize:result:)(a3, a4, a1, a5, v12, a6, v13);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.integrate<A>(_:using:stepSize:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.integrate<A>(_:using:stepSize:)(a1, a2, v2[4], v2[5], v2[2], v2[3]);
}

{
  return closure #1 in static vDSP.integrate<A>(_:using:stepSize:)(a1, a2, v2[4], v2[5], v2[2], v2[3]);
}

uint64_t static vDSP.integrate<A, B>(_:using:stepSize:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a6 + 16))(a4, a6);
  result = (*(*(a7 + 8) + 16))(a5);
  if (result >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = result;
  }

  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a7 + 16))(partial apply for closure #1 in static vDSP.integrate<A, B>(_:using:stepSize:result:));
  }

  return result;
}

{
  v9 = (*(a6 + 16))(a4, a6);
  result = (*(*(a7 + 8) + 16))(a5);
  if (result >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = result;
  }

  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a7 + 16))(partial apply for closure #1 in static vDSP.integrate<A, B>(_:using:stepSize:result:));
  }

  return result;
}

void closure #1 in closure #1 in static vDSP.integrate<A, B>(_:using:stepSize:result:)(const float *a1, int a2, char a3, float **a4, vDSP_Length __N, float a6)
{
  if (!a3)
  {
    if (a1)
    {
      v9 = a6;
      v7 = *a4;
      if (v7)
      {
        vDSP_vrsum(a1, 1, &v9, v7, 1, __N);
        return;
      }

      goto LABEL_17;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    if (a1)
    {
      v10 = a6;
      v6 = *a4;
      if (v6)
      {
        vDSP_vsimps(a1, 1, &v10, v6, 1, __N);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!a1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = a6;
  v8 = *a4;
  if (!v8)
  {
LABEL_18:
    __break(1u);
    return;
  }

  vDSP_vtrapz(a1, 1, &v11, v8, 1, __N);
}

void closure #1 in closure #1 in static vDSP.integrate<A, B>(_:using:stepSize:result:)(const double *a1, int a2, char a3, double **a4, vDSP_Length __N, double a6)
{
  if (!a3)
  {
    if (a1)
    {
      v9 = a6;
      v7 = *a4;
      if (v7)
      {
        vDSP_vrsumD(a1, 1, &v9, v7, 1, __N);
        return;
      }

      goto LABEL_17;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    if (a1)
    {
      v10 = a6;
      v6 = *a4;
      if (v6)
      {
        vDSP_vsimpsD(a1, 1, &v10, v6, 1, __N);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!a1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = a6;
  v8 = *a4;
  if (!v8)
  {
LABEL_18:
    __break(1u);
    return;
  }

  vDSP_vtrapzD(a1, 1, &v11, v8, 1, __N);
}

uint64_t partial apply for closure #1 in static vDSP.integrate<A, B>(_:using:stepSize:result:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 60);
  v5 = *(v1 + 64);
  v7[16] = *(v1 + 56);
  v8 = v4;
  v9 = a1;
  v10 = v5;
  return (*(v3 + 24))(partial apply for closure #1 in closure #1 in static vDSP.integrate<A, B>(_:using:stepSize:result:), v7, MEMORY[0x1E69E7CA8] + 8, v2);
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v6[16] = *(v1 + 56);
  v7 = v4;
  v8 = a1;
  return (*(v3 + 24))(partial apply for closure #1 in closure #1 in static vDSP.integrate<A, B>(_:using:stepSize:result:), v6, MEMORY[0x1E69E7CA8] + 8, v2);
}

unint64_t lazy protocol witness table accessor for type vDSP.IntegrationRule and conformance vDSP.IntegrationRule()
{
  result = lazy protocol witness table cache variable for type vDSP.IntegrationRule and conformance vDSP.IntegrationRule;
  if (!lazy protocol witness table cache variable for type vDSP.IntegrationRule and conformance vDSP.IntegrationRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vDSP.IntegrationRule and conformance vDSP.IntegrationRule);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for vDSP.IntegrationRule(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for vDSP.IntegrationRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t BNNS.AdamWOptimizer.accumulatorCountMultiplier.getter()
{
  if (*(v0 + 52))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

float (*BNNS.AdamWOptimizer.learningRate.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return BNNS.AdamWOptimizer.learningRate.modify;
}

float BNNS.AdamWOptimizer.learningRate.modify(uint64_t a1)
{
  result = *(a1 + 8);
  **a1 = result;
  return result;
}

float (*BNNS.AdamWOptimizer.beta1.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return BNNS.AdamWOptimizer.beta1.modify;
}

float BNNS.AdamWOptimizer.beta1.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 4) = result;
  return result;
}

float (*BNNS.AdamWOptimizer.beta2.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return BNNS.AdamWOptimizer.beta2.modify;
}

float BNNS.AdamWOptimizer.beta2.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 8) = result;
  return result;
}

float (*BNNS.AdamWOptimizer.timeStep.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return BNNS.AdamWOptimizer.timeStep.modify;
}

float BNNS.AdamWOptimizer.timeStep.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 12) = result;
  return result;
}

float (*BNNS.AdamWOptimizer.epsilon.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return BNNS.AdamWOptimizer.epsilon.modify;
}

float BNNS.AdamWOptimizer.epsilon.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 16) = result;
  return result;
}

float (*BNNS.AdamWOptimizer.gradientScale.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 20);
  return BNNS.AdamWOptimizer.gradientScale.modify;
}

float BNNS.AdamWOptimizer.gradientScale.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 20) = result;
  return result;
}

float (*BNNS.AdamWOptimizer.weightDecay.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return BNNS.AdamWOptimizer.weightDecay.modify;
}

float BNNS.AdamWOptimizer.weightDecay.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 24) = result;
  return result;
}

void BNNS.AdamWOptimizer.gradientClipping.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 44);
  if (v2 == 3)
  {
    v7 = v3 | (*(v1 + 48) << 32);
    v6 = 2;
    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v7 = v3;
    v6 = 1;
    goto LABEL_9;
  }

  if (v2 != 1)
  {
    v7 = 0;
    v6 = 3;
    goto LABEL_9;
  }

  v5 = *(v1 + 36);
  v4 = *(v1 + 40);
  if (v5 <= v4)
  {
    v6 = 0;
    v7 = LODWORD(v5) | (LODWORD(v4) << 32);
LABEL_9:
    *a1 = v7;
    *(a1 + 8) = v6;
    return;
  }

  __break(1u);
}

uint64_t key path setter for BNNS.AdamWOptimizer.gradientClipping : BNNS.AdamWOptimizer(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  v3 = HIDWORD(*a1);
  if (v2 == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 2)
  {
    v5 = *a1;
  }

  else
  {
    v5 = 0;
  }

  if (v2 == 2)
  {
    v6 = HIDWORD(*a1);
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 8))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (*(a1 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (*(a1 + 8))
  {
    LODWORD(v3) = 0;
    v9 = *a1;
  }

  else
  {
    v9 = 0;
  }

  result = 0;
  v11 = v2 <= 1;
  if (v2 <= 1)
  {
    v12 = v7;
  }

  else
  {
    v12 = v4;
  }

  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = v9;
  }

  else
  {
    LODWORD(v3) = 0;
    v14 = v5;
  }

  if (v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = v6;
  }

  a2[8] = v12;
  a2[9] = v13;
  a2[10] = v3;
  a2[11] = v14;
  a2[12] = v15;
  return result;
}

uint64_t BNNS.AdamWOptimizer.gradientClipping.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = HIDWORD(*a1);
  if (v2 == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 2)
  {
    v5 = *a1;
  }

  else
  {
    v5 = 0;
  }

  if (v2 == 2)
  {
    v6 = HIDWORD(*a1);
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 8))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (*(a1 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (*(a1 + 8))
  {
    LODWORD(v3) = 0;
    v9 = *a1;
  }

  else
  {
    v9 = 0;
  }

  result = 0;
  v11 = v2 <= 1;
  if (v2 <= 1)
  {
    v12 = v7;
  }

  else
  {
    v12 = v4;
  }

  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = v9;
  }

  else
  {
    LODWORD(v3) = 0;
    v14 = v5;
  }

  if (v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = v6;
  }

  v1[8] = v12;
  v1[9] = v13;
  v1[10] = v3;
  v1[11] = v14;
  v1[12] = v15;
  return result;
}

uint64_t (*BNNS.AdamWOptimizer.gradientClipping.modify(uint64_t (*result)(uint64_t result)))(uint64_t result)
{
  *result = v1;
  v2 = *(v1 + 32);
  v3 = *(v1 + 44);
  if (v2 == 3)
  {
    v7 = v3 | (*(v1 + 48) << 32);
    v6 = 2;
    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v7 = v3;
    v6 = 1;
    goto LABEL_9;
  }

  if (v2 != 1)
  {
    v7 = 0;
    v6 = 3;
    goto LABEL_9;
  }

  v5 = *(v1 + 36);
  v4 = *(v1 + 40);
  if (v5 <= v4)
  {
    v6 = 0;
    v7 = LODWORD(v5) | (LODWORD(v4) << 32);
LABEL_9:
    *(result + 1) = v7;
    *(result + 16) = v6;
    return BNNS.AdamWOptimizer.gradientClipping.modify;
  }

  __break(1u);
  return result;
}

uint64_t BNNS.AdamWOptimizer.gradientClipping.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = HIDWORD(*(result + 8));
  if (v1 == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v1 == 2)
  {
    v4 = *(result + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v1 == 2)
  {
    v5 = HIDWORD(*(result + 8));
  }

  else
  {
    v5 = 0;
  }

  if (*(result + 16))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (*(result + 16))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(result + 8);
  }

  if (*(result + 16))
  {
    LODWORD(v2) = 0;
    v8 = *(result + 8);
  }

  else
  {
    v8 = 0;
  }

  if (*(result + 16) <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v3;
  }

  if (*(result + 16) <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  if (*(result + 16) <= 1u)
  {
    v11 = v8;
  }

  else
  {
    LODWORD(v2) = 0;
    v11 = v4;
  }

  if (*(result + 16) <= 1u)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  v13 = *result;
  v13[8] = v9;
  v13[9] = v10;
  v13[10] = v2;
  v13[11] = v11;
  v13[12] = v12;
  return result;
}

uint64_t BNNS.AdamWOptimizer.init(learningRate:beta1:beta2:timeStep:epsilon:gradientScale:weightDecay:gradientClipping:usesAMSGrad:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>, float a8@<S4>, float a9@<S5>, float a10@<S6>)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = HIDWORD(*a1);
  if (v11 == 2)
  {
    v13 = HIDWORD(*a1);
  }

  else
  {
    v13 = 0;
  }

  if (v11 == 2)
  {
    v14 = *a1;
  }

  else
  {
    v14 = 0;
  }

  if (v11 == 2)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  result = 0;
  if (v11)
  {
    v17 = v10;
  }

  else
  {
    v17 = 0;
  }

  if (v11)
  {
    LODWORD(v12) = 0;
    v18 = 0;
  }

  else
  {
    v18 = v10;
  }

  if (v11)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = v11 <= 1;
  if (v11 <= 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v13;
  }

  if (v11 <= 1)
  {
    v22 = v17;
  }

  else
  {
    v22 = v14;
  }

  if (v20)
  {
    v23 = v18;
  }

  else
  {
    LODWORD(v12) = 0;
    v23 = 0;
  }

  if (v20)
  {
    v24 = v19;
  }

  else
  {
    v24 = v15;
  }

  *a3 = a4;
  *(a3 + 4) = a5;
  *(a3 + 8) = a6;
  *(a3 + 12) = a7;
  *(a3 + 16) = a8;
  *(a3 + 20) = a9;
  *(a3 + 24) = a10;
  *(a3 + 28) = 0;
  *(a3 + 32) = v24;
  *(a3 + 36) = v23;
  *(a3 + 40) = v12;
  *(a3 + 44) = v22;
  *(a3 + 48) = v21;
  *(a3 + 52) = a2 & 1;
  return result;
}

uint64_t BNNS.AdamWOptimizer.bnnsOptimizerFunction.getter()
{
  if (*(v0 + 52))
  {
    return 12;
  }

  else
  {
    return 10;
  }
}

uint64_t protocol witness for BNNSOptimizer.bnnsOptimizerFunction.getter in conformance BNNS.AdamWOptimizer()
{
  if (*(v0 + 52))
  {
    return 12;
  }

  else
  {
    return 10;
  }
}

uint64_t protocol witness for BNNSOptimizer.accumulatorCountMultiplier.getter in conformance BNNS.AdamWOptimizer()
{
  if (*(v0 + 52))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t protocol witness for WithOptimizerAlgFields.withOptimizerAlgFields(body:) in conformance BNNS.AdamWOptimizer(uint64_t (*a1)(_OWORD *))
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = *(v1 + 32);
  v5 = *(v1 + 48);
  return a1(v4);
}

uint64_t BNNS.AdamOptimizer.init(learningRate:beta1:beta2:timeStep:epsilon:gradientScale:regularizationScale:gradientClipping:regularizationFunction:usesAMSGrad:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, float a7@<S2>, float a8@<S3>, float a9@<S4>, float a10@<S5>, float a11@<S6>)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = HIDWORD(*a1);
  if (v12 == 2)
  {
    v14 = HIDWORD(*a1);
  }

  else
  {
    v14 = 0;
  }

  if (v12 == 2)
  {
    v15 = *a1;
  }

  else
  {
    v15 = 0;
  }

  if (v12 == 2)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  result = 0;
  if (v12)
  {
    v18 = v11;
  }

  else
  {
    v18 = 0;
  }

  if (v12)
  {
    LODWORD(v13) = 0;
    v19 = 0;
  }

  else
  {
    v19 = v11;
  }

  if (v12)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = v12 <= 1;
  if (v12 <= 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v14;
  }

  if (v12 <= 1)
  {
    v23 = v18;
  }

  else
  {
    v23 = v15;
  }

  if (v21)
  {
    v24 = v19;
  }

  else
  {
    LODWORD(v13) = 0;
    v24 = 0;
  }

  if (v21)
  {
    v25 = v20;
  }

  else
  {
    v25 = v16;
  }

  *a4 = a5;
  *(a4 + 4) = a6;
  *(a4 + 8) = a7;
  *(a4 + 12) = a8;
  *(a4 + 16) = a9;
  *(a4 + 20) = a10;
  *(a4 + 24) = a11;
  *(a4 + 28) = a2;
  *(a4 + 32) = v25;
  *(a4 + 36) = v24;
  *(a4 + 40) = v13;
  *(a4 + 44) = v23;
  *(a4 + 48) = v22;
  *(a4 + 52) = 1;
  *(a4 + 53) = a3 & 1;
  return result;
}

_BYTE *(*BNNS.AdamOptimizer.usesAMSGrad.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 53);
  return BNNS.AdamOptimizer.usesAMSGrad.modify;
}

void BNNS.AdamOptimizer.gradientClipping.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 36);
  if (*(v1 + 52))
  {
    v4 = *(v1 + 44);
    switch(v2)
    {
      case 3:
        v8 = v4 | (*(v1 + 48) << 32);
        v6 = 2;
        goto LABEL_14;
      case 2:
        v8 = v4;
        v6 = 1;
        goto LABEL_14;
      case 1:
        v5 = *(v1 + 40);
        if (v3 <= v5)
        {
          v6 = 0;
          v2 = LODWORD(v3);
          v7 = LODWORD(v5);
LABEL_10:
          v8 = v2 | (v7 << 32);
LABEL_14:
          *a1 = v8;
          *(a1 + 8) = v6;
          return;
        }

        goto LABEL_16;
    }

LABEL_11:
    v8 = 0;
    v6 = 3;
    goto LABEL_14;
  }

  if ((*(v1 + 28) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v3 >= *&v2)
  {
    v6 = 0;
    v7 = LODWORD(v3);
    goto LABEL_10;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t BNNS.AdamOptimizer.gradientClipping.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = HIDWORD(*a1);
  if (v2 == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 2)
  {
    v5 = *a1;
  }

  else
  {
    v5 = 0;
  }

  if (v2 == 2)
  {
    v6 = HIDWORD(*a1);
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 8))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (*(a1 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (*(a1 + 8))
  {
    LODWORD(v3) = 0;
    v9 = *a1;
  }

  else
  {
    v9 = 0;
  }

  result = 0;
  v11 = v2 <= 1;
  if (v2 <= 1)
  {
    v12 = v7;
  }

  else
  {
    v12 = v4;
  }

  if (v2 <= 1)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = v3;
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = v9;
  }

  else
  {
    v15 = v5;
  }

  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v6;
  }

  if (*(v1 + 52))
  {
    v17 = 1;
    *(v1 + 40) = v14;
    *(v1 + 44) = v15;
    *(v1 + 48) = v16;
  }

  else
  {
    v17 = 0;
    v12 = v13;
    v13 = v14;
  }

  *(v1 + 32) = v12;
  *(v1 + 36) = v13;
  *(v1 + 52) = v17;
  return result;
}

uint64_t (*BNNS.AdamOptimizer.gradientClipping.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  BNNS.AdamOptimizer.gradientClipping.getter((a1 + 1));
  return BNNS.AdamOptimizer.gradientClipping.modify;
}

uint64_t BNNS.AdamOptimizer.gradientClipping.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = v1;
  return BNNS.AdamOptimizer.gradientClipping.setter(&v3);
}

uint64_t BNNS.SGDMomentumOptimizer.init(learningRate:momentum:gradientScale:regularizationScale:gradientClipping:usesNesterovMomentum:regularizationFunction:sgdMomentumVariant:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>, float a8@<S2>, float a9@<S3>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = HIDWORD(*a1);
  if (v10 == 2)
  {
    v12 = HIDWORD(*a1);
  }

  else
  {
    v12 = 0;
  }

  if (v10 == 2)
  {
    v13 = *a1;
  }

  else
  {
    v13 = 0;
  }

  if (v10 == 2)
  {
    v14 = 0x300000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0x200000000;
  result = 0;
  if (v10)
  {
    v17 = v9;
  }

  else
  {
    v17 = 0;
  }

  if (v10)
  {
    LODWORD(v11) = 0;
    v18 = 0;
  }

  else
  {
    v18 = v9;
  }

  if (!v10)
  {
    v15 = 0x100000000;
  }

  v19 = v10 <= 1;
  if (v10 <= 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v12;
  }

  if (v10 <= 1)
  {
    v21 = v17;
  }

  else
  {
    v21 = v13;
  }

  if (v19)
  {
    v22 = v18;
  }

  else
  {
    LODWORD(v11) = 0;
    v22 = 0;
  }

  if (v19)
  {
    v23 = v15;
  }

  else
  {
    v23 = v14;
  }

  *a5 = a6;
  *(a5 + 4) = a7;
  *(a5 + 8) = a8;
  *(a5 + 12) = a9;
  *(a5 + 16) = a2 & 1 | (a3 << 32) | 0x80000000;
  *(a5 + 24) = v23 | a4;
  *(a5 + 32) = v22;
  *(a5 + 36) = v11;
  *(a5 + 40) = v21;
  *(a5 + 44) = v20;
  return result;
}

void BNNS.SGDMomentumOptimizer.gradientClipping.getter(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  if ((v3 & 0x80000000) != 0)
  {
    v7 = HIDWORD(v2);
    if (v7 != 1)
    {
      v8 = v1[5];
      v9 = v8;
      if (v7 == 3)
      {
        v10 = 2;
      }

      else
      {
        v8 = 0;
        v10 = 3;
      }

      v11 = v7 == 2;
      if (v7 == 2)
      {
        v6 = v9;
      }

      else
      {
        v6 = v8;
      }

      if (v11)
      {
        v5 = 1;
      }

      else
      {
        v5 = v10;
      }

      goto LABEL_18;
    }

    v6 = v1[4];
    if (*&v6 <= *(&v6 + 1))
    {
      v5 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      v6 = 0;
      v5 = 3;
      goto LABEL_18;
    }

    v4 = HIDWORD(v3);
    if (*(&v3 + 1) <= *&v2)
    {
      v5 = 0;
      v6 = v4 | (v2 << 32);
LABEL_18:
      *a1 = v6;
      *(a1 + 8) = v5;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void key path getter for BNNS.SGDMomentumOptimizer.gradientClipping : BNNS.SGDMomentumOptimizer(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  v9 = a1[2];
  BNNS.SGDMomentumOptimizer.gradientClipping.getter(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
}

uint64_t BNNS.SGDMomentumOptimizer.gradientClipping.setter(unint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = 0x300000000;
  if (v2 == 2)
  {
    v5 = *a1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v2 == 2)
  {
    v6 = HIDWORD(*a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x100000000;
  if (*(a1 + 8))
  {
    v7 = 0x200000000;
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (*(a1 + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = HIDWORD(*a1);
  }

  if (!*(a1 + 8))
  {
    LODWORD(v3) = 0;
  }

  result = 0;
  v11 = v2 <= 1;
  if (v2 <= 1)
  {
    v12 = v8;
  }

  else
  {
    v7 = v4;
    v12 = 0;
  }

  if (v2 <= 1)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = v3;
  }

  else
  {
    v14 = v5;
  }

  if (v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = v6;
  }

  v16 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = *(v1 + 24);
  *v1 = *v1;
  *(v1 + 8) = v16;
  if ((v17 & 0x80000000) != 0)
  {
    *(v1 + 16) = v17 & 0xFFFFFFFF80000001;
    *(v1 + 24) = v18 | v7;
    *(v1 + 32) = v12;
    *(v1 + 36) = v13;
    *(v1 + 40) = v14;
    *(v1 + 44) = v15;
  }

  else
  {
    *(v1 + 16) = v17 & 1;
    *(v1 + 20) = v12;
    *(v1 + 24) = v13;
    *(v1 + 28) = BYTE4(v18) & 1;
  }

  *(v1 + 12) = HIDWORD(v16);
  return result;
}

uint64_t (*BNNS.SGDMomentumOptimizer.gradientClipping.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  BNNS.SGDMomentumOptimizer.gradientClipping.getter((a1 + 1));
  return BNNS.SGDMomentumOptimizer.gradientClipping.modify;
}

uint64_t BNNS.SGDMomentumOptimizer.gradientClipping.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = v1;
  return BNNS.SGDMomentumOptimizer.gradientClipping.setter(&v3);
}

uint64_t BNNS.RMSPropOptimizer.init(learningRate:alpha:epsilon:centered:momentum:gradientScale:regularizationScale:gradientClipping:regularizationFunction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, float a7@<S2>, float a8@<S3>, float a9@<S4>, float a10@<S5>)
{
  v10 = *(a2 + 8);
  v11 = HIDWORD(*a2);
  if (v10 == 2)
  {
    v12 = HIDWORD(*a2);
  }

  else
  {
    v12 = 0;
  }

  if (v10 == 2)
  {
    v13 = *a2;
  }

  else
  {
    v13 = 0;
  }

  if (v10 == 2)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  if (*(a2 + 8))
  {
    v15 = *a2;
  }

  else
  {
    v15 = 0;
  }

  if (*(a2 + 8))
  {
    LODWORD(v11) = 0;
    v16 = 0;
  }

  else
  {
    v16 = *a2;
  }

  if (*(a2 + 8))
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if (*(a2 + 8) <= 1u)
  {
    v18 = 0;
  }

  else
  {
    v18 = v12;
  }

  if (*(a2 + 8) <= 1u)
  {
    v19 = v15;
  }

  else
  {
    v19 = v13;
  }

  if (*(a2 + 8) <= 1u)
  {
    v20 = v16;
  }

  else
  {
    LODWORD(v11) = 0;
    v20 = 0;
  }

  if (*(a2 + 8) <= 1u)
  {
    v21 = v17;
  }

  else
  {
    v21 = v14;
  }

  *a4 = a5;
  *(a4 + 4) = a6;
  *(a4 + 8) = a7;
  *(a4 + 12) = result & 1;
  *(a4 + 15) = 0x80;
  *(a4 + 13) = 0;
  *(a4 + 16) = a8;
  *(a4 + 20) = a9;
  *(a4 + 24) = a10;
  *(a4 + 28) = a3;
  *(a4 + 32) = v21;
  *(a4 + 36) = v20;
  *(a4 + 40) = v11;
  *(a4 + 44) = v19;
  *(a4 + 48) = v18;
  return result;
}

void BNNS.RMSPropOptimizer.gradientClipping.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if ((*(v1 + 8) & 0x8000000000000000) != 0)
  {
    v4 = *(v1 + 40);
    if (v2 != 1)
    {
      v5 = HIDWORD(v4);
      v6 = v5 | (*(v1 + 48) << 32);
      if (v2 == 3)
      {
        v7 = 2;
      }

      else
      {
        v6 = 0;
        v7 = 3;
      }

      v8 = v2 == 2;
      if (v2 == 2)
      {
        v2 = v5;
      }

      else
      {
        v2 = v6;
      }

      if (v8)
      {
        v3 = 1;
      }

      else
      {
        v3 = v7;
      }

      goto LABEL_18;
    }

    v9 = HIDWORD(v2);
    if (*&v9 <= *&v4)
    {
      v3 = 0;
      v2 = v9 | (v4 << 32);
      goto LABEL_18;
    }
  }

  else
  {
    if ((*(v1 + 28) & 1) == 0)
    {
      v2 = 0;
      v3 = 3;
LABEL_18:
      *a1 = v2;
      *(a1 + 8) = v3;
      return;
    }

    if (*&v2 <= *(&v2 + 1))
    {
      v3 = 0;
      goto LABEL_18;
    }

    __break(1u);
  }

  __break(1u);
}

void key path getter for BNNS.RMSPropOptimizer.gradientClipping : BNNS.RMSPropOptimizer(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 12);
  v4 = a1[1];
  v8 = *a1;
  v9 = v4;
  v10 = a1[2];
  v11 = v3;
  BNNS.RMSPropOptimizer.gradientClipping.getter(&v6);
  v5 = v7;
  *a2 = v6;
  *(a2 + 8) = v5;
}

uint64_t BNNS.RMSPropOptimizer.gradientClipping.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 2)
  {
    v5 = HIDWORD(*a1);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 8))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (*(a1 + 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = *a1;
  }

  if (*(a1 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = HIDWORD(*a1);
  }

  if (*(a1 + 8))
  {
    v9 = *a1;
  }

  else
  {
    v9 = 0;
  }

  v10 = v2 <= 1;
  if (v2 <= 1)
  {
    v11 = v6;
  }

  else
  {
    v11 = v3;
  }

  if (v2 <= 1)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = v9;
  }

  else
  {
    v14 = v4;
  }

  if (v10)
  {
    v5 = 0;
  }

  result = *v1;
  v16 = v1[1];
  v17 = *(v1 + 1);
  v19 = v1[4];
  v18 = v1[5];
  v20 = *(v1 + 3);
  if (v17 < 0)
  {
    *v1 = result;
    v1[1] = v16;
    v1[2] = v17;
    *(v1 + 12) = BYTE4(v17) & 1;
    *(v1 + 15) = 0x80;
    *(v1 + 13) = 0;
    v1[4] = v19;
    v1[5] = v18;
    *(v1 + 3) = v20;
    v1[10] = v13;
    v1[11] = v14;
    v1[12] = v5;
    v1[8] = v11;
    v1[9] = v12;
  }

  else
  {
    v21 = v1[10];
    *v1 = result;
    v1[1] = v16;
    v1[2] = v17;
    *(v1 + 12) = BYTE4(v17) & 1;
    *(v1 + 15) = 0;
    *(v1 + 13) = 0;
    v1[4] = v19;
    v1[5] = v18;
    v1[6] = v20;
    *(v1 + 28) = BYTE4(v20) & 1;
    *(v1 + 5) = v21;
    v1[8] = v12;
    v1[9] = v13;
  }

  return result;
}

uint64_t (*BNNS.RMSPropOptimizer.gradientClipping.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  BNNS.RMSPropOptimizer.gradientClipping.getter((a1 + 1));
  return BNNS.RMSPropOptimizer.gradientClipping.modify;
}

uint64_t BNNS.RMSPropOptimizer.gradientClipping.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = v1;
  return BNNS.RMSPropOptimizer.gradientClipping.setter(&v3);
}

uint64_t getEnumTagSinglePayload for BNNS.GradientClipping(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.GradientClipping(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for BNNS.GradientClipping(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for BNNS.GradientClipping(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.AdamWOptimizer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 53))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 52);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.AdamWOptimizer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 52) = a2 + 1;
    }
  }

  return result;
}

BOOL static BNNSGraph.Builder.PoolingFunction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

void BNNSGraph.Builder.PoolingFunction.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (v1 == 3)
  {
    v2 = 2;
LABEL_5:
    MEMORY[0x1B8CB1810](v2);
    return;
  }

  MEMORY[0x1B8CB1810](0);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int BNNSGraph.Builder.PoolingFunction.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x1B8CB1810](0);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
    }

    v2 = 2;
  }

  MEMORY[0x1B8CB1810](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BNNSGraph.Builder.PoolingFunction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x1B8CB1810](0);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
    }

    v2 = 2;
  }

  MEMORY[0x1B8CB1810](v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance BNNSGraph.Builder.PoolingFunction()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (v1 == 3)
  {
    v2 = 2;
LABEL_5:
    MEMORY[0x1B8CB1810](v2);
    return;
  }

  MEMORY[0x1B8CB1810](0);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BNNSGraph.Builder.PoolingFunction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x1B8CB1810](0);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
    }

    v2 = 2;
  }

  MEMORY[0x1B8CB1810](v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance BNNSGraph.Builder.PoolingFunction(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 2;
  v5 = v3 == 3;
  v6 = v3 & 0xFE;
  v7 = v3 ^ v2 ^ 1;
  if (v6 == 2)
  {
    v7 = 0;
  }

  if (v2 == 3)
  {
    v7 = v5;
  }

  if (v2 == 2)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t static BNNSGraph.Builder.Padding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = LODWORD(v3) == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

void BNNSGraph.Builder.Padding.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    MEMORY[0x1B8CB1810](v2);
  }

  else
  {
    MEMORY[0x1B8CB1810](0);
    if ((v1 & 0x7FFFFFFF) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    Hasher._combine(_:)(v3);
  }
}

Swift::Int BNNSGraph.Builder.Padding.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    MEMORY[0x1B8CB1810](v3);
  }

  else
  {
    MEMORY[0x1B8CB1810](0);
    if ((v1 & 0x7FFFFFFF) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BNNSGraph.Builder.Padding()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    MEMORY[0x1B8CB1810](v3);
  }

  else
  {
    MEMORY[0x1B8CB1810](0);
    if ((v1 & 0x7FFFFFFF) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}