unint64_t sub_1B8AE02E4()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD00000000000001FLL;
  if (v2 != 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v2 == 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000017;
  if (v2 != 1)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = v4;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1B8AE0388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8AE1BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8AE03B0(uint64_t a1)
{
  v2 = sub_1B8AE282C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE03EC(uint64_t a1)
{
  v2 = sub_1B8AE282C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE0428()
{
  if (*v0)
  {
    result = 0x6E6F6974636E7566;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1B8AE0458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B8AE052C(uint64_t a1)
{
  v2 = sub_1B8AE2A24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE0568(uint64_t a1)
{
  v2 = sub_1B8AE2A24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE05A4(uint64_t a1)
{
  v2 = sub_1B8AE29D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE05E0(uint64_t a1)
{
  v2 = sub_1B8AE29D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE061C(uint64_t a1)
{
  v2 = sub_1B8AE297C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE0658(uint64_t a1)
{
  v2 = sub_1B8AE297C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE0694()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x6874646977;
  }

  *v0;
  return result;
}

uint64_t sub_1B8AE06C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B8AE079C(uint64_t a1)
{
  v2 = sub_1B8AE2928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE07D8(uint64_t a1)
{
  v2 = sub_1B8AE2928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE0814(uint64_t a1)
{
  v2 = sub_1B8AE28D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE0850(uint64_t a1)
{
  v2 = sub_1B8AE28D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE088C(uint64_t a1)
{
  v2 = sub_1B8AE2880();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE08C8(uint64_t a1)
{
  v2 = sub_1B8AE2880();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE0904@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B8AE1DBC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

unint64_t sub_1B8AE095C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v6 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v7;
  v8 = sub_1B8AD6CF4(v1, v2, v3, v4);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v10 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v10;
}

uint64_t sub_1B8AE0A38(uint64_t a1)
{
  v2 = sub_1B8AD9C28();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AE0A74(uint64_t a1)
{
  v2 = sub_1B8AD9C28();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

__CFData *CVBufferRef.encode(format:quality:)(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
  v9 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  [v8 extent];
  v10 = [v9 createCGImage:v8 fromRect:?];
  if (v10)
  {
    v11 = v10;
    v4 = sub_1B8ADCB20(a1, a2 | ((HIDWORD(a2) & 1) << 32));
  }

  else
  {
    sub_1B8A7BACC();
    swift_allocError();
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *v12 = 1;
    *(v12 + 24) = 3;
    swift_willThrow();
  }

  return v4;
}

void static CVBufferRef.create(width:height:format:ioSurfaceBacked:rowAlignment:)(int64_t a1, int64_t a2, OSType a3, char a4, __CVBuffer *a5, char a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1 < 1 || a2 <= 0)
  {
    sub_1B8A7BACC();
    swift_allocError();
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = 0;
    *(v20 + 24) = 1;
    swift_willThrow();
  }

  else
  {
    sub_1B8AE6B28(MEMORY[0x1E69E7CC0]);
    if (a4)
    {
      v12 = *MEMORY[0x1E69660D8];
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97518, &qword_1B8AFC2C0);
      pixelBufferOut[0] = MEMORY[0x1E69E7CC8];
      sub_1B8AAB328(pixelBufferOut, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1B8AC5824(v22, v12, isUniquelyReferenced_nonNull_native);
    }

    if ((a6 & 1) == 0)
    {
      v14 = *MEMORY[0x1E6966020];
      v24 = MEMORY[0x1E69E6530];
      pixelBufferOut[0] = a5;
      sub_1B8AAB328(pixelBufferOut, v22);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_1B8AC5824(v22, v14, v15);
    }

    pixelBufferOut[0] = 0;
    v16 = *MEMORY[0x1E695E480];
    type metadata accessor for CFString(0);
    sub_1B8AE18D4();
    v17 = sub_1B8AF0598();

    v18 = CVPixelBufferCreate(v16, a1, a2, a3, v17, pixelBufferOut);

    if (!pixelBufferOut[0])
    {
      sub_1B8A7BACC();
      swift_allocError();
      *v19 = v18;
      *(v19 + 8) = 0xD000000000000013;
      *(v19 + 16) = 0x80000001B8B07080;
      *(v19 + 24) = 0;
      swift_willThrow();
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CVBufferRef.transferFrom(image:)(CGImageRef image)
{
  v3 = CVPixelBufferLockBaseAddress(v1, 0);
  if (v3)
  {
    v4 = v3;
    sub_1B8A7BACC();
    swift_allocError();
    *v5 = v4;
    *(v5 + 8) = 0xD00000000000001CLL;
    *(v5 + 16) = 0x80000001B8B070A0;
    *(v5 + 24) = 0;
    swift_willThrow();
  }

  else
  {
    sub_1B8AE146C(v1, image);
    sub_1B8AE12C0(v1, 0);
  }
}

CVPixelBufferRef static CVBufferRef.load(path:)(uint64_t a1, uint64_t a2)
{
  pixelBufferOut[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1B8ADD9C8(a1, a2);
  if (!v3)
  {
    v5 = v4;
    Width = CGImageGetWidth(v4);
    Height = CGImageGetHeight(v5);
    v8 = Height;
    if (Width < 1 || Height < 1)
    {
      sub_1B8A7BACC();
      v2 = swift_allocError();
      *v17 = Width;
      *(v17 + 8) = v8;
      *(v17 + 16) = 0;
      *(v17 + 24) = 1;
      swift_willThrow();
    }

    else
    {
      sub_1B8AE6B28(MEMORY[0x1E69E7CC0]);
      v9 = *MEMORY[0x1E69660D8];
      pixelBufferOut[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97518, &qword_1B8AFC2C0);
      pixelBufferOut[0] = MEMORY[0x1E69E7CC8];
      sub_1B8AAB328(pixelBufferOut, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1B8AC5824(v21, v9, isUniquelyReferenced_nonNull_native);
      pixelBufferOut[0] = 0;
      v11 = *MEMORY[0x1E695E480];
      type metadata accessor for CFString(0);
      sub_1B8AE18D4();
      v12 = sub_1B8AF0598();

      v13 = CVPixelBufferCreate(v11, Width, v8, 0x42475241u, v12, pixelBufferOut);

      v2 = pixelBufferOut[0];
      if (pixelBufferOut[0])
      {
        v14 = CVPixelBufferLockBaseAddress(pixelBufferOut[0], 0);
        if (v14)
        {
          v15 = v14;
          sub_1B8A7BACC();
          swift_allocError();
          *v16 = v15;
          *(v16 + 8) = 0xD00000000000001CLL;
          *(v16 + 16) = 0x80000001B8B070A0;
          *(v16 + 24) = 0;
          swift_willThrow();
        }

        else
        {
          sub_1B8AE146C(v2, v5);
          sub_1B8AE12C0(v2, 0);
        }
      }

      else
      {
        sub_1B8A7BACC();
        v2 = swift_allocError();
        *v18 = v13;
        *(v18 + 8) = 0xD000000000000013;
        *(v18 + 16) = 0x80000001B8B07080;
        *(v18 + 24) = 0;
        swift_willThrow();
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v2;
}

void CVBufferRef.withLock<A>(flags:block:)(CVPixelBufferLockFlags lockFlags, void (*a2)(void))
{
  v5 = CVPixelBufferLockBaseAddress(v2, lockFlags);
  if (v5)
  {
    v6 = v5;
    sub_1B8A7BACC();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0xD00000000000001CLL;
    *(v7 + 16) = 0x80000001B8B070A0;
    *(v7 + 24) = 0;
    swift_willThrow();
  }

  else
  {
    a2();
    sub_1B8AE12C0(v2, lockFlags);
  }
}

void sub_1B8AE12C0(__CVBuffer *a1, CVPixelBufferLockFlags a2)
{
  v2 = CVPixelBufferUnlockBaseAddress(a1, a2);
  if (v2)
  {
    v3 = v2;
    if (qword_1EBA96488 != -1)
    {
      swift_once();
    }

    v4 = sub_1B8AF03A8();
    __swift_project_value_buffer(v4, qword_1EBAA5858);
    oslog = sub_1B8AF0388();
    v5 = sub_1B8AF08E8();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = v3;
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_1B8A7BACC();
      swift_allocError();
      *v9 = v6;
      *(v9 + 8) = 0xD00000000000001ELL;
      *(v9 + 16) = 0x80000001B8B070C0;
      *(v9 + 24) = 0;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1B8A3C000, oslog, v5, "ignoring error: %@", v7, 0xCu);
      sub_1B8A897C4(v8, &qword_1EBA96B08, &qword_1B8AF94B0);
      MEMORY[0x1B8CC7D70](v8, -1, -1);
      MEMORY[0x1B8CC7D70](v7, -1, -1);
    }
  }
}

void sub_1B8AE146C(__CVBuffer *a1, CGImage *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == 1111970369)
  {
    v5 = 8194;
  }

  else
  {
    if (PixelFormatType != 1380401729)
    {
      v13 = CVPixelBufferGetPixelFormatType(a1);
      sub_1B8A7BACC();
      swift_allocError();
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = v13;
      *(v14 + 24) = 2;
      swift_willThrow();
      return;
    }

    v5 = 1;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v11 = __CGBitmapContextCreate(BaseAddress, Width, Height, BytesPerRow, DeviceRGB, v5);
  if (v11)
  {
    v12 = v11;
    CGImageGetWidth(a2);
    CGImageGetHeight(a2);
    CGRectMake();
    sub_1B8AF08B8();
  }

  else
  {
    sub_1B8A7BACC();
    swift_allocError();
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *v15 = 0;
    *(v15 + 24) = 3;
    swift_willThrow();
  }
}

CVPixelBufferRef sub_1B8AE1600()
{
  pixelBufferOut[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1B8ADCD40();
  if (!v1)
  {
    v3 = v2;
    Width = CGImageGetWidth(v2);
    Height = CGImageGetHeight(v3);
    v6 = Height;
    if (Width < 1 || Height < 1)
    {
      sub_1B8A7BACC();
      v0 = swift_allocError();
      *v15 = Width;
      *(v15 + 8) = v6;
      *(v15 + 16) = 0;
      *(v15 + 24) = 1;
      swift_willThrow();
    }

    else
    {
      sub_1B8AE6B28(MEMORY[0x1E69E7CC0]);
      v7 = *MEMORY[0x1E69660D8];
      pixelBufferOut[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97518, &qword_1B8AFC2C0);
      pixelBufferOut[0] = MEMORY[0x1E69E7CC8];
      sub_1B8AAB328(pixelBufferOut, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1B8AC5824(v19, v7, isUniquelyReferenced_nonNull_native);
      pixelBufferOut[0] = 0;
      v9 = *MEMORY[0x1E695E480];
      type metadata accessor for CFString(0);
      sub_1B8AE18D4();
      v10 = sub_1B8AF0598();

      v11 = CVPixelBufferCreate(v9, Width, v6, 0x42475241u, v10, pixelBufferOut);

      v0 = pixelBufferOut[0];
      if (pixelBufferOut[0])
      {
        v12 = CVPixelBufferLockBaseAddress(pixelBufferOut[0], 0);
        if (v12)
        {
          v13 = v12;
          sub_1B8A7BACC();
          swift_allocError();
          *v14 = v13;
          *(v14 + 8) = 0xD00000000000001CLL;
          *(v14 + 16) = 0x80000001B8B070A0;
          *(v14 + 24) = 0;
          swift_willThrow();
        }

        else
        {
          sub_1B8AE146C(v0, v3);
          sub_1B8AE12C0(v0, 0);
        }
      }

      else
      {
        sub_1B8A7BACC();
        v0 = swift_allocError();
        *v16 = v11;
        *(v16 + 8) = 0xD000000000000013;
        *(v16 + 16) = 0x80000001B8B07080;
        *(v16 + 24) = 0;
        swift_willThrow();
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v0;
}

unint64_t sub_1B8AE18D4()
{
  result = qword_1EBA964D8;
  if (!qword_1EBA964D8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA964D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So11CVBufferRefa26SensitiveContentAnalysisMLE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B8AE195C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1B8AE19A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B8AE19EC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1B8AE1A18(void *a1)
{
  a1[1] = sub_1B8AD9C28();
  a1[2] = sub_1B8AE1A68();
  a1[3] = sub_1B8AE1ABC();
  a1[4] = sub_1B8AE1B10();
  a1[5] = sub_1B8AE1B64();
  result = sub_1B8AD9BAC();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AE1A68()
{
  result = qword_1EBA97520;
  if (!qword_1EBA97520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97520);
  }

  return result;
}

unint64_t sub_1B8AE1ABC()
{
  result = qword_1EBA97528;
  if (!qword_1EBA97528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97528);
  }

  return result;
}

unint64_t sub_1B8AE1B10()
{
  result = qword_1EBA97530;
  if (!qword_1EBA97530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97530);
  }

  return result;
}

unint64_t sub_1B8AE1B64()
{
  result = qword_1EBA97538;
  if (!qword_1EBA97538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97538);
  }

  return result;
}

uint64_t sub_1B8AE1BB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001B8B070E0 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B8B07100 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B8B07120 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B8B07140 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B8B07160 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B8B07180 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B8AE1DBC(uint64_t *a1)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97540, &qword_1B8AFC4E8);
  v63 = *(v60 - 8);
  v2 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v67 = &v51 - v3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97548, &qword_1B8AFC4F0);
  v59 = *(v61 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v66 = &v51 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97550, &qword_1B8AFC4F8);
  v62 = *(v55 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v65 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97558, &qword_1B8AFC500);
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97560, &qword_1B8AFC508);
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97568, &qword_1B8AFC510);
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97570, &unk_1B8AFC518);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v51 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1B8AE282C();
  v26 = v68;
  sub_1B8AF1048();
  if (!v26)
  {
    v52 = v14;
    v27 = v18;
    v51 = v15;
    v28 = v65;
    v29 = v66;
    v30 = v67;
    v68 = v19;
    v31 = sub_1B8AF0C78();
    v32 = (2 * *(v31 + 16)) | 1;
    v70 = v31;
    v71 = v31 + 32;
    v72 = 0;
    v73 = v32;
    v33 = sub_1B8AE4FD4();
    if (v33 == 6 || v72 != v73 >> 1)
    {
      v38 = sub_1B8AF0B08();
      swift_allocError();
      v14 = v39;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190) + 48);
      *v14 = &_s5ErrorON_0;
      v41 = v68;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v38 - 8) + 104))(v14, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      (*(v20 + 8))(v23, v41);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    if (v33 > 2u)
    {
      if (v33 == 3)
      {
        v74 = 3;
        sub_1B8AE2928();
        v46 = v68;
        sub_1B8AF0BF8();
        v74 = 0;
        v47 = v55;
        v48 = v28;
        v14 = sub_1B8AF0C28();
        v74 = 1;
        sub_1B8AF0C28();
        (*(v62 + 8))(v48, v47);
        (*(v20 + 8))(v23, v46);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v43 = v68;
      if (v33 == 4)
      {
        v74 = 4;
        sub_1B8AE28D4();
        sub_1B8AF0BF8();
        (*(v59 + 8))(v29, v61);
        (*(v20 + 8))(v23, v43);
        swift_unknownObjectRelease();
        v14 = 2;
        goto LABEL_9;
      }

      v74 = 5;
      sub_1B8AE2880();
      sub_1B8AF0BF8();
      v50 = v60;
      LODWORD(v14) = sub_1B8AF0C68();
      (*(v63 + 8))(v30, v50);
      (*(v20 + 8))(v23, v43);
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v20;
      if (v33)
      {
        v35 = v23;
        v36 = v68;
        if (v33 == 1)
        {
          v74 = 1;
          sub_1B8AE29D0();
          v37 = v52;
          sub_1B8AF0BF8();
          (*(v53 + 8))(v37, v54);
          (*(v20 + 8))(v35, v36);
          swift_unknownObjectRelease();
          v14 = 0;
        }

        else
        {
          v74 = 2;
          sub_1B8AE297C();
          v49 = v64;
          sub_1B8AF0BF8();
          (*(v57 + 8))(v49, v58);
          (*(v20 + 8))(v35, v36);
          swift_unknownObjectRelease();
          v14 = 1;
        }

        goto LABEL_9;
      }

      v74 = 0;
      sub_1B8AE2A24();
      v44 = v68;
      sub_1B8AF0BF8();
      v74 = 0;
      v45 = v51;
      LODWORD(v14) = sub_1B8AF0C58();
      v74 = 1;
      sub_1B8AF0C18();
      (*(v56 + 8))(v27, v45);
      (*(v34 + 8))(v23, v44);
      swift_unknownObjectRelease();
    }

    v14 = v14;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(v69);
  return v14;
}

unint64_t sub_1B8AE282C()
{
  result = qword_1EBA97578;
  if (!qword_1EBA97578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97578);
  }

  return result;
}

unint64_t sub_1B8AE2880()
{
  result = qword_1EBA97580;
  if (!qword_1EBA97580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97580);
  }

  return result;
}

unint64_t sub_1B8AE28D4()
{
  result = qword_1EBA97588;
  if (!qword_1EBA97588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97588);
  }

  return result;
}

unint64_t sub_1B8AE2928()
{
  result = qword_1EBA97590;
  if (!qword_1EBA97590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97590);
  }

  return result;
}

unint64_t sub_1B8AE297C()
{
  result = qword_1EBA97598;
  if (!qword_1EBA97598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97598);
  }

  return result;
}

unint64_t sub_1B8AE29D0()
{
  result = qword_1EBA975A0;
  if (!qword_1EBA975A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA975A0);
  }

  return result;
}

unint64_t sub_1B8AE2A24()
{
  result = qword_1EBA975A8;
  if (!qword_1EBA975A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA975A8);
  }

  return result;
}

unint64_t sub_1B8AE2B14()
{
  result = qword_1EBA975E8;
  if (!qword_1EBA975E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA975E8);
  }

  return result;
}

unint64_t sub_1B8AE2B6C()
{
  result = qword_1EBA975F0;
  if (!qword_1EBA975F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA975F0);
  }

  return result;
}

unint64_t sub_1B8AE2BC4()
{
  result = qword_1EBA975F8;
  if (!qword_1EBA975F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA975F8);
  }

  return result;
}

unint64_t sub_1B8AE2C1C()
{
  result = qword_1EBA97600;
  if (!qword_1EBA97600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97600);
  }

  return result;
}

unint64_t sub_1B8AE2C74()
{
  result = qword_1EBA97608;
  if (!qword_1EBA97608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97608);
  }

  return result;
}

unint64_t sub_1B8AE2CCC()
{
  result = qword_1EBA97610;
  if (!qword_1EBA97610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97610);
  }

  return result;
}

unint64_t sub_1B8AE2D24()
{
  result = qword_1EBA97618;
  if (!qword_1EBA97618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97618);
  }

  return result;
}

unint64_t sub_1B8AE2D7C()
{
  result = qword_1EBA97620;
  if (!qword_1EBA97620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97620);
  }

  return result;
}

unint64_t sub_1B8AE2DD4()
{
  result = qword_1EBA97628;
  if (!qword_1EBA97628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97628);
  }

  return result;
}

unint64_t sub_1B8AE2E2C()
{
  result = qword_1EBA97630;
  if (!qword_1EBA97630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97630);
  }

  return result;
}

unint64_t sub_1B8AE2E84()
{
  result = qword_1EBA97638;
  if (!qword_1EBA97638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97638);
  }

  return result;
}

unint64_t sub_1B8AE2EDC()
{
  result = qword_1EBA97640;
  if (!qword_1EBA97640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97640);
  }

  return result;
}

unint64_t sub_1B8AE2F34()
{
  result = qword_1EBA97648;
  if (!qword_1EBA97648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97648);
  }

  return result;
}

unint64_t sub_1B8AE2F8C()
{
  result = qword_1EBA97650;
  if (!qword_1EBA97650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97650);
  }

  return result;
}

unint64_t sub_1B8AE2FE4()
{
  result = qword_1EBA97658;
  if (!qword_1EBA97658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97658);
  }

  return result;
}

unint64_t sub_1B8AE303C()
{
  result = qword_1EBA97660;
  if (!qword_1EBA97660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97660);
  }

  return result;
}

unint64_t sub_1B8AE3094()
{
  result = qword_1EBA97668;
  if (!qword_1EBA97668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97668);
  }

  return result;
}

unint64_t sub_1B8AE30EC()
{
  result = qword_1EBA97670;
  if (!qword_1EBA97670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97670);
  }

  return result;
}

uint64_t sub_1B8AE315C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8AE32B0(a1, a2);
  v3 = v2[2];
  if (v3)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B8AD844C(0, v3, 0);
    v4 = 4;
    v5 = v18;
    do
    {
      v6 = v2[v4];
      v7 = v6;
      v8 = sub_1B8AEFBC8();
      v9 = [v8 domain];
      v10 = sub_1B8AF0668();
      v12 = v11;

      v13 = [v8 code];
      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B8AD844C((v14 > 1), v15 + 1, 1);
      }

      *(v18 + 16) = v15 + 1;
      v16 = (v18 + 24 * v15);
      v16[4] = v10;
      v16[5] = v12;
      v16[6] = v13;
      ++v4;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

void *sub_1B8AE32B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7CC0];
  (*(v4 + 16))(v7, v8, a1);
  v9 = sub_1B8AF0E88();
  if (v9)
  {
    v10 = v9;
    (*(v4 + 8))(v7, a1);
  }

  else
  {
    v10 = swift_allocError();
    (*(v4 + 32))(v11, v7, a1);
  }

  sub_1B8AE3410(v10, &v14, a1, a2);

  return v14;
}

uint64_t sub_1B8AE3410(void *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1B8ABA9E4(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1B8ABA9E4((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v8[v10 + 4] = a1;
  *a2 = v8;
  v11 = a1;
  v12 = sub_1B8AEFBC8();
  v13 = [v12 underlyingErrors];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DE0, &qword_1B8AF9CB0);
  v14 = sub_1B8AF0818();

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 32);
    do
    {
      v17 = *v16++;
      v18 = v17;
      sub_1B8AE3410(v17, a2, a3, a4);

      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1B8AE356C()
{
  v0 = sub_1B8AF03A8();
  __swift_allocate_value_buffer(v0, qword_1EBAA5828);
  __swift_project_value_buffer(v0, qword_1EBAA5828);
  return sub_1B8AF0398();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1B8AE371C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B8AF03A8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1B8AF0398();
}

uint64_t sub_1B8AE3794()
{
  v0 = sub_1B8AF03A8();
  __swift_allocate_value_buffer(v0, qword_1EDB75AF0);
  __swift_project_value_buffer(v0, qword_1EDB75AF0);
  return sub_1B8AF0398();
}

uint64_t sub_1B8AE3814()
{
  v0 = sub_1B8AF03A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B8AF0328();
  __swift_allocate_value_buffer(v5, qword_1EDB75B50);
  __swift_project_value_buffer(v5, qword_1EDB75B50);
  if (qword_1EDB75380 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDB75B20);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1B8AF0308();
}

SensitiveContentAnalysisML::PublicError::TextSanitizer::TextTooLongErrorInfo __swiftcall PublicError.TextSanitizer.TextTooLongErrorInfo.init(utf16WordCount:utf16WordCountMaximum:)(Swift::Int utf16WordCount, Swift::Int utf16WordCountMaximum)
{
  *v2 = utf16WordCount;
  v2[1] = utf16WordCountMaximum;
  result.utf16WordCountMaximum = utf16WordCountMaximum;
  result.utf16WordCount = utf16WordCount;
  return result;
}

unint64_t sub_1B8AE3968()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x726F573631667475;
  }

  *v0;
  return result;
}

uint64_t sub_1B8AE39B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F573631667475 && a2 == 0xEE00746E756F4364;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B8B071E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B8AE3AA0(uint64_t a1)
{
  v2 = sub_1B8AE3CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE3ADC(uint64_t a1)
{
  v2 = sub_1B8AE3CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PublicError.TextSanitizer.TextTooLongErrorInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97678, &qword_1B8AFCC60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AE3CA4();
  sub_1B8AF1058();
  v14 = 0;
  sub_1B8AF0CA8();
  if (!v2)
  {
    v13 = 1;
    sub_1B8AF0CA8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B8AE3CA4()
{
  result = qword_1EBA97680;
  if (!qword_1EBA97680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97680);
  }

  return result;
}

uint64_t PublicError.TextSanitizer.TextTooLongErrorInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97688, &qword_1B8AFCC68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AE3CA4();
  sub_1B8AF1048();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1B8AF0C28();
    v15 = 1;
    v12 = sub_1B8AF0C28();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B8AE3F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C6F6F5474786574 && a2 == 0xEB00000000676E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AE3F8C(uint64_t a1)
{
  v2 = sub_1B8AE4294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE3FC8(uint64_t a1)
{
  v2 = sub_1B8AE4294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AE4004(uint64_t a1)
{
  v2 = sub_1B8AE42E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AE4040(uint64_t a1)
{
  v2 = sub_1B8AE42E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PublicError.TextSanitizer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97690, &qword_1B8AFCC70);
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97698, &qword_1B8AFCC78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *v1;
  v18 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AE4294();
  sub_1B8AF1058();
  sub_1B8AE42E8();
  sub_1B8AF0C88();
  v21 = v13;
  v22 = v18;
  sub_1B8AE433C();
  v15 = v19;
  sub_1B8AF0CC8();
  (*(v20 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1B8AE4294()
{
  result = qword_1EBA976A0;
  if (!qword_1EBA976A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976A0);
  }

  return result;
}

unint64_t sub_1B8AE42E8()
{
  result = qword_1EBA976A8;
  if (!qword_1EBA976A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976A8);
  }

  return result;
}

unint64_t sub_1B8AE433C()
{
  result = qword_1EBA976B0;
  if (!qword_1EBA976B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976B0);
  }

  return result;
}

uint64_t PublicError.TextSanitizer.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA976B8, &qword_1B8AFCC80);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA976C0, &unk_1B8AFCC88);
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AE4294();
  sub_1B8AF1048();
  if (v2)
  {
    goto LABEL_5;
  }

  v22 = a1;
  v23 = v8;
  v13 = v27;
  if (*(sub_1B8AF0C78() + 16) != 1)
  {
    v15 = sub_1B8AF0B08();
    swift_allocError();
    v16 = v13;
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190) + 48);
    *v18 = &type metadata for PublicError.TextSanitizer;
    sub_1B8AF0C08();
    sub_1B8AF0AF8();
    (*(*(v15 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    (*(v23 + 8))(v11, v16);
    swift_unknownObjectRelease();
    a1 = v22;
LABEL_5:
    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  sub_1B8AE42E8();
  sub_1B8AF0BF8();
  v14 = v23;
  sub_1B8AE4778();
  sub_1B8AF0C48();
  (*(v25 + 8))(v7, v4);
  (*(v14 + 8))(v11, v13);
  swift_unknownObjectRelease();
  *v24 = v26;
  v21 = v22;
  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_1B8AE4710()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8AE4744()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B8AE4778()
{
  result = qword_1EBA976C8;
  if (!qword_1EBA976C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976C8);
  }

  return result;
}

unint64_t sub_1B8AE47CC(void *a1)
{
  a1[1] = sub_1B8AE481C();
  a1[2] = sub_1B8AE4870();
  a1[3] = sub_1B8AE48C4();
  a1[4] = sub_1B8AE4918();
  a1[5] = sub_1B8AE496C();
  result = sub_1B8AD9EA0();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AE481C()
{
  result = qword_1EBA976D0;
  if (!qword_1EBA976D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976D0);
  }

  return result;
}

unint64_t sub_1B8AE4870()
{
  result = qword_1EBA976D8;
  if (!qword_1EBA976D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976D8);
  }

  return result;
}

unint64_t sub_1B8AE48C4()
{
  result = qword_1EBA976E0;
  if (!qword_1EBA976E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976E0);
  }

  return result;
}

unint64_t sub_1B8AE4918()
{
  result = qword_1EBA976E8;
  if (!qword_1EBA976E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976E8);
  }

  return result;
}

unint64_t sub_1B8AE496C()
{
  result = qword_1EBA976F0;
  if (!qword_1EBA976F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976F0);
  }

  return result;
}

uint64_t sub_1B8AE49C0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8AE49F4()
{
  v2 = *v0;
  sub_1B8AE4918();
  return sub_1B8AF0D28();
}

uint64_t sub_1B8AE4A38()
{
  v1 = *v0;
  v2 = v0[1];
  v9 = sub_1B8AD7528(*v0, v2);
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v3 = sub_1B8AD67D0(v1, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v5 = MEMORY[0x1B8CC6010](v3, v4);
  v7 = v6;

  MEMORY[0x1B8CC5F50](v5, v7);

  return v9;
}

unint64_t sub_1B8AE4B2C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v4 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v5;
  v6 = sub_1B8AD7528(v1, v2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8AB3660(inited + 32);
  return v8;
}

uint64_t sub_1B8AE4BE0(uint64_t a1)
{
  v2 = sub_1B8AE481C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AE4C1C(uint64_t a1)
{
  v2 = sub_1B8AE481C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1B8AE4CBC()
{
  result = qword_1EBA976F8;
  if (!qword_1EBA976F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA976F8);
  }

  return result;
}

unint64_t sub_1B8AE4D14()
{
  result = qword_1EBA97700;
  if (!qword_1EBA97700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97700);
  }

  return result;
}

unint64_t sub_1B8AE4D6C()
{
  result = qword_1EBA97708;
  if (!qword_1EBA97708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97708);
  }

  return result;
}

unint64_t sub_1B8AE4DC4()
{
  result = qword_1EBA97710;
  if (!qword_1EBA97710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97710);
  }

  return result;
}

unint64_t sub_1B8AE4E1C()
{
  result = qword_1EBA97718;
  if (!qword_1EBA97718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97718);
  }

  return result;
}

unint64_t sub_1B8AE4E74()
{
  result = qword_1EBA97720;
  if (!qword_1EBA97720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97720);
  }

  return result;
}

unint64_t sub_1B8AE4ECC()
{
  result = qword_1EBA97728;
  if (!qword_1EBA97728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97728);
  }

  return result;
}

unint64_t sub_1B8AE4F24()
{
  result = qword_1EBA97730;
  if (!qword_1EBA97730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97730);
  }

  return result;
}

unint64_t sub_1B8AE4F7C()
{
  result = qword_1EBA97738;
  if (!qword_1EBA97738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97738);
  }

  return result;
}

uint64_t sub_1B8AE5014(void (*a1)(uint64_t *__return_ptr))
{
  a1(v5);
  v1 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v2 = *(*(v1 + 8) + 8);
  v3 = sub_1B8AEFE68();
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t FeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for FeatureFlags;
  v4[4] = sub_1B8A9708C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_1B8AEFCD8();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

const char *sub_1B8AE50E8()
{
  result = "AfmPlusCustomized";
  switch(*v0)
  {
    case 1:
      result = "AfmPlusStandard";
      break;
    case 2:
      result = "BackgroundEstimation";
      break;
    case 3:
      result = "FlagsAndMapsCustomized";
      break;
    case 4:
      result = "FlagsAndMapsStandard";
      break;
    case 5:
      result = "PeopleCounterCustomized";
      break;
    case 6:
      result = "PeopleCounterStandard";
      break;
    case 7:
      result = "PrepubescentCustomized";
      break;
    case 8:
      result = "PrepubescentStandard";
      break;
    case 9:
      result = "StructuralIntegrityCustomized";
      break;
    case 0xA:
      result = "StructuralIntegrityStandard";
      break;
    case 0xB:
      result = "ViolenceAndGoreCustomized";
      break;
    case 0xC:
      result = "ViolenceAndGoreStandard";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1B8AF1018();
  MEMORY[0x1B8CC6810](v1);
  return sub_1B8AF1038();
}

unint64_t sub_1B8AE5274()
{
  result = qword_1EBA97740;
  if (!qword_1EBA97740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97740);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B8AE5448()
{
  sub_1B8AE5884(&unk_1F3747B50);
  sub_1B8AE5884(&unk_1F3747BD0);
  v0 = sub_1B8ABE324(&unk_1F3747AA0);

  qword_1EBA97748 = v0;
  return result;
}

id SCMLLocale.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCMLLocale.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLLocale();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SCMLLocale.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLLocale();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8AE5794(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1B8AF0BA8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1B8AF0BA8();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1B8AE5978(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B8ADAB2C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B8AE5884(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B8ABAC24(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B8AE5978(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1B8AF0BA8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1B8AF0AE8();
  *v1 = result;
  return result;
}

uint64_t _s26SensitiveContentAnalysisML10SCMLLocaleC11isSupported6localeSb10Foundation6LocaleVSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97758, &unk_1B8AFD388);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v38 - v4;
  v5 = sub_1B8AEFCA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97750, &qword_1B8AFD380);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v38 - v19;
  v21 = sub_1B8AEFCC8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AA2E1C(a1, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1B8A897C4(v20, &qword_1EBA96528, &unk_1B8AF64B0);
    return 0;
  }

  (*(v22 + 32))(v25, v20, v21);
  sub_1B8AEFCB8();
  sub_1B8AEFC88();
  v26 = *(v6 + 8);
  v39 = v5;
  v40 = v6 + 8;
  v26(v12, v5);
  v27 = sub_1B8AEFC48();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v16, 1, v27) == 1)
  {
    sub_1B8A897C4(v16, &qword_1EBA97750, &qword_1B8AFD380);
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {
    sub_1B8AEFC38();
    (*(v28 + 8))(v16, v27);
    v29 = sub_1B8AF06C8();
    v30 = v31;
  }

  v32 = v39;
  if (qword_1EDB75600 != -1)
  {
    swift_once();
  }

  if ((sub_1B8AD1830(v29, v30, qword_1EBA97748) & 1) == 0)
  {
    (*(v22 + 8))(v25, v21);

    return 0;
  }

  if (v29 == 26746 && v30 == 0xE200000000000000)
  {
  }

  else
  {
    v34 = sub_1B8AF0EA8();

    if ((v34 & 1) == 0)
    {
      (*(v22 + 8))(v25, v21);
      return 1;
    }
  }

  sub_1B8AEFCB8();
  v35 = v41;
  sub_1B8AEFC98();
  v26(v10, v32);
  v36 = sub_1B8AEFC78();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    (*(v22 + 8))(v25, v21);
    sub_1B8A897C4(v35, &qword_1EBA97758, &unk_1B8AFD388);
  }

  else
  {
    sub_1B8AEFC38();
    (*(v37 + 8))(v35, v36);
    sub_1B8AF06C8();

    (*(v22 + 8))(v25, v21);
  }

  return 1;
}

uint64_t _s26SensitiveContentAnalysisML10SCMLLocaleC15isEnglishLocaleySb10Foundation0H0VFZ_0()
{
  v0 = sub_1B8AEFCA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97750, &qword_1B8AFD380);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  sub_1B8AEFCB8();
  sub_1B8AEFC88();
  (*(v1 + 8))(v4, v0);
  v9 = sub_1B8AEFC48();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B8A897C4(v8, &qword_1EBA97750, &qword_1B8AFD380);
    v11 = 0;
  }

  else
  {
    sub_1B8AEFC38();
    (*(v10 + 8))(v8, v9);
    v12 = sub_1B8AF06C8();
    v14 = v13;

    if (v12 == 28261 && v14 == 0xE200000000000000)
    {

      v11 = 1;
    }

    else
    {
      v11 = sub_1B8AF0EA8();
    }
  }

  return v11 & 1;
}

uint64_t SimpleError.description.getter(uint64_t a1, uint64_t a2)
{
  v10 = SimpleError.localizedDescription.getter(a1, a2);
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v4 = sub_1B8AE315C(a1, *(*(a2 + 8) + 8));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v6 = MEMORY[0x1B8CC6010](v4, v5);
  v8 = v7;

  MEMORY[0x1B8CC5F50](v6, v8);

  return v10;
}

unint64_t SimpleError.errorUserInfo.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v6;
  v7 = SimpleError.localizedDescription.getter(a1, a2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8AB3660(inited + 32);
  return v9;
}

uint64_t SimpleError.localizedDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 48);
  v9[3] = a1;
  v9[4] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  v7 = TerseEncoder.encode(_:typeNameStyle:)(v9, &unk_1F3746E88);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v7;
}

unint64_t sub_1B8AE647C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97770, &qword_1B8AFD3C8);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B8AC402C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97108, &unk_1B8AFAB60);
    v3 = sub_1B8AF0BD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8A8975C(v4, &v13, &qword_1EBA965D0, &qword_1B8AF6740);
      v5 = v13;
      v6 = v14;
      result = sub_1B8AC402C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B8AAB328(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE66C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97798, &unk_1B8AFD420);
    v3 = sub_1B8AF0BD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8A8975C(v4, &v13, &qword_1EBA96558, qword_1B8AF64E0);
      v5 = v13;
      v6 = v14;
      result = sub_1B8AC402C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B8A4270C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE67F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97790, &unk_1B8AFD410);
    v3 = sub_1B8AF0BD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8A8975C(v4, &v13, &qword_1EBA967D0, &qword_1B8AF7358);
      v5 = v13;
      v6 = v14;
      result = sub_1B8AC402C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B8A4270C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97100, &qword_1B8AFAB58);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B8AC402C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6A2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97788, &unk_1B8AFD3F0);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B8AC402C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6B28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970E8, &qword_1B8AFD3D0);
    v3 = sub_1B8AF0BD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8A8975C(v4, &v11, &qword_1EBA97778, &qword_1B8AFD3D8);
      v5 = v11;
      result = sub_1B8AC4058(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B8AAB328(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97120, &unk_1B8AFD400);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B8AC402C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6D54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97118, &qword_1B8AFAB70);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 44); ; i += 16)
    {
      v5 = *(i - 12);
      v6 = *(i - 8);
      v7 = *(i - 7);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_1B8AC4110(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v12 = v3[7] + 12 * result;
      *v12 = v6;
      *(v12 + 1) = v7;
      *(v12 + 4) = v8;
      *(v12 + 8) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B8AE6E68(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970F8, &qword_1B8AFAB50);
  v3 = sub_1B8AF0BD8();
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = sub_1B8A3FBF0(v4, v5);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v5;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = 16 * v10;
    v14 = (v3[6] + v13);
    *v14 = v4;
    v14[1] = result;
    v15 = (v3[7] + v13);
    *v15 = v7;
    v15[1] = v6;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v12 + 4;
    v4 = *(v12 - 3);
    v20 = *(v12 - 2);
    v7 = *(v12 - 1);
    v21 = *v12;

    v10 = sub_1B8A3FBF0(v4, v20);
    v12 = v19;
    v6 = v21;
    result = v20;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B8AE6FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97780, &unk_1B8AFD3E0);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B8AC402C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE70AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97760, &qword_1B8AFD3B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97768, &qword_1B8AFD3C0);
    v8 = sub_1B8AF0BD8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B8A8975C(v10, v6, &qword_1EBA97760, &qword_1B8AFD3B8);
      result = sub_1B8AC41B0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1B8AF0B88();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_1B8AAB328(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t StandaloneBinarySemaphore.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  type metadata accessor for Condition();
  v1 = swift_allocObject();
  *(v1 + 16) = *sub_1B8AF0188();
  *(v0 + 120) = v1;

  return v0;
}

uint64_t StandaloneBinarySemaphore.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  type metadata accessor for Condition();
  v1 = swift_allocObject();
  *(v1 + 16) = *sub_1B8AF0188();
  *(v0 + 120) = v1;

  return v0;
}

uint64_t sub_1B8AE7358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_1B8AE73EC;

  return sub_1B8AE78B4();
}

uint64_t sub_1B8AE73EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 24);
  v4 = *v0;

  v10 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v4;
  v6[1] = sub_1B8AE75B4;
  v7 = v1[4];
  v8 = v1[2];

  return v10(v8);
}

uint64_t sub_1B8AE75B4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1B8AE7790;
  }

  else
  {
    v4 = sub_1B8AE76DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1B8AE76DC()
{
  v2 = *(v0 + 40);
  if (*(v2 + 112) == 1)
  {
    v3 = *(v2 + 120);
    sub_1B8A9E818();

    v4 = sub_1B8ADEA08(v2);

    if ((v4 & 1) == 0)
    {
      *(*(v0 + 40) + 112) = 0;
    }

    v5 = *(v0 + 8);

    v5();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B8AE7790(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 40);
  if (*(v5 + 112) == 1)
  {
    v6 = *(v5 + 120);
    sub_1B8A9E818();

    v7 = sub_1B8ADEA08(v5);

    if ((v7 & 1) == 0)
    {
      *(*(v3 + 40) + 112) = 0;
    }

    a1 = sub_1B8AE7848;
    a2 = 0;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8AE7848()
{
  v1 = *(v0 + 64);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1B8AE78D4()
{
  v1 = v0[2];
  if (*(v1 + 112) == 1)
  {
    v0[3] = *(v1 + 120);
    v0[4] = sub_1B8A9E818();

    swift_getObjectType();
    v3 = sub_1B8AF0858();
    v0[5] = v3;
    v0[6] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1B8AE79BC, v3, v2);
  }

  else
  {
    *(v1 + 112) = 1;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1B8AE79BC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1B8AE7AA0;
  v5 = v0[3];

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B8AE7AA0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1B8AE7BC0, v4, v3);
}

uint64_t sub_1B8AE7BC0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1B8AE7C28, v2, 0);
}

uint64_t sub_1B8AE7C28()
{
  if (*(*(v0 + 16) + 112) == 1)
  {
    return (*(v0 + 8))();
  }

  __break(1u);
  return result;
}

uint64_t StandaloneBinarySemaphore.deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t StandaloneBinarySemaphore.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of StandaloneBinarySemaphore.withLock<A>(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 160);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1B8A7B414;

  return v14(a1, a2, a3, a4);
}

uint64_t TerseEncoder.encode(_:typeNameStyle:)(void *a1, uint64_t a2)
{
  sub_1B8A85238(a1, &v12);
  v5 = type metadata accessor for TerseEncoder.Impl();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v6[9] = 0;
  v6[10] = 0;
  v6[8] = v7;
  sub_1B8A4270C(&v12, (v6 + 2));
  v6[7] = a2;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v5;
  v14 = sub_1B8AE7FA4();
  *&v12 = v6;

  v10 = v9;
  sub_1B8AF05D8();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v12);
    v10 = sub_1B8AE8254();
  }

  return v10;
}

unint64_t sub_1B8AE7FA4()
{
  result = qword_1EDB75368;
  if (!qword_1EDB75368)
  {
    type metadata accessor for TerseEncoder.Impl();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB75368);
  }

  return result;
}

uint64_t sub_1B8AE7FFC()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v0 = sub_1B8AF06D8();
  v2 = sub_1B8AEC790(v0, v1);

  return v2;
}

uint64_t TerseEncoder.TypeNameStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1B8AF1018();
  MEMORY[0x1B8CC6810](v1);
  return sub_1B8AF1038();
}

uint64_t sub_1B8AE80F4()
{
  v0 = sub_1B8AE647C(&unk_1F3746B78);
  result = sub_1B8AEC9D0(&unk_1F3746B98);
  off_1EBA977A0 = v0;
  return result;
}

void sub_1B8AE8134()
{
  v1 = *(v0 + 56);
  if (*(v1 + 16))
  {
    v2 = v0 + 16;
    if (*(v1 + 32) - 1 > 1)
    {
      sub_1B8A85238(v2, v5);
      __swift_project_boxed_opaque_existential_1(v5, v6);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D0, &unk_1B8AFD5E0);
      v3 = sub_1B8AF06D8();
      sub_1B8AEC790(v3, v4);
    }

    else
    {
      sub_1B8A85238(v2, v5);
      __swift_project_boxed_opaque_existential_1(v5, v6);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D0, &unk_1B8AFD5E0);
      sub_1B8AF06B8();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B8AE8254()
{
  swift_beginAccess();
  v19 = v0[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
  sub_1B8AAA7CC();
  v1 = sub_1B8AF0608();
  v3 = v2;

  v4 = v0[10];
  if (!v4)
  {
    sub_1B8A85238((v0 + 2), &v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977E0, &qword_1B8AFD5F8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v17);
    }

    else if (swift_dynamicCast())
    {
    }

    else if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97110, &qword_1B8AFD600);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608), swift_dynamicCast()))
      {

        v17 = 91;
        v18 = 0xE100000000000000;
        MEMORY[0x1B8CC5F50](v1, v3);

        v14 = 93;
      }

      else
      {
        if (v1 == 7104878 && v3 == 0xE300000000000000 || (sub_1B8AF0EA8() & 1) != 0)
        {
          goto LABEL_21;
        }

        sub_1B8AE8134();
        v17 = v15;
        v18 = v16;
        MEMORY[0x1B8CC5F50](40, 0xE100000000000000);
        MEMORY[0x1B8CC5F50](v1, v3);

        v14 = 41;
      }

      MEMORY[0x1B8CC5F50](v14, 0xE100000000000000);
      v1 = v17;
    }

LABEL_21:
    __swift_destroy_boxed_opaque_existential_0(&v19);
    return v1;
  }

  v5 = v0[9];
  v6 = HIBYTE(v3) & 0xF;
  v7 = v0[10];
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {

    sub_1B8AE8134();
    v19 = v8;
    v20 = v9;
    MEMORY[0x1B8CC5F50](46, 0xE100000000000000);
    MEMORY[0x1B8CC5F50](v5, v4);

    MEMORY[0x1B8CC5F50](40, 0xE100000000000000);
    MEMORY[0x1B8CC5F50](v1, v3);

    MEMORY[0x1B8CC5F50](41, 0xE100000000000000);
    return v19;
  }

  v11 = v0[7];
  if (*(v11 + 16))
  {
    if (*(v11 + 32) == 2)
    {
      v19 = 46;
      v20 = 0xE100000000000000;
    }

    else
    {
      sub_1B8AE8134();
      v19 = v12;
      v20 = v13;
      MEMORY[0x1B8CC5F50](46, 0xE100000000000000);
    }

    MEMORY[0x1B8CC5F50](v5, v4);

    return v19;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B8AE85D4()
{
  result = qword_1EBA977A8;
  if (!qword_1EBA977A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA977A8);
  }

  return result;
}

uint64_t sub_1B8AE8648(void *a1)
{
  v3 = *(v1 + 56);
  v4 = *(v3 + 16);
  if (__PAIR128__(v4, 1) < v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = a1;
  if (v4 > 1)
  {
LABEL_6:
    sub_1B8ACE80C(v3, v3 + 32, v4 > 1, (2 * v4) | 1);
    v3 = v8;
    goto LABEL_4;
  }

  v5 = *(v1 + 56);

LABEL_4:
  v6 = TerseEncoder.encode(_:typeNameStyle:)(v2, v3);

  return v6;
}

uint64_t sub_1B8AE86EC()
{
  type metadata accessor for TerseEncoder.KeyedContainer();

  swift_getWitnessTable();
  return sub_1B8AF0CF8();
}

uint64_t sub_1B8AE876C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[10];

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1B8AE8838@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v5 = *v3;
  a3[3] = a1;
  a3[4] = a2();
  *a3 = v5;
}

unint64_t sub_1B8AE8884()
{
  result = qword_1EBA977B0;
  if (!qword_1EBA977B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA977B0);
  }

  return result;
}

unint64_t sub_1B8AE88D8()
{
  result = qword_1EBA977B8;
  if (!qword_1EBA977B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA977B8);
  }

  return result;
}

uint64_t sub_1B8AE892C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1B8AF1078();
  if (v13)
  {
    sub_1B8A85238(a3 + 16, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
    if (swift_dynamicCast())
    {

      sub_1B8AF1068();
      v14 = sub_1B8AF0708();
      v16 = v15;

      goto LABEL_7;
    }

    v17 = sub_1B8AF1068();
  }

  else
  {
    v32 = v12;
    v17 = sub_1B8AF0D28();
  }

  v14 = v17;
  v16 = v18;
LABEL_7:
  v34 = a5;
  v35 = a7;
  v19 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(a5 - 8) + 16))(v19, a1, a5);
  v20 = sub_1B8AE8648(&v32);
  if (v7)
  {

    return __swift_destroy_boxed_opaque_existential_0(&v32);
  }

  else
  {
    v23 = v21;
    v24 = v20;
    __swift_destroy_boxed_opaque_existential_0(&v32);
    v32 = v14;
    v33 = v16;
    MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
    MEMORY[0x1B8CC5F50](v24, v23);

    v25 = v32;
    v26 = v33;
    swift_beginAccess();
    v27 = *(a3 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 64) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1B8ABAC24(0, *(v27 + 2) + 1, 1, v27);
      *(a3 + 64) = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_1B8ABAC24((v29 > 1), v30 + 1, 1, v27);
    }

    *(v27 + 2) = v30 + 1;
    v31 = &v27[16 * v30];
    *(v31 + 4) = v25;
    *(v31 + 5) = v26;
    *(a3 + 64) = v27;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AE8B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = sub_1B8AF1068();
  v8 = *(v4 + 80);
  *(v4 + 72) = v7;
  *(v4 + 80) = v9;

  return sub_1B8AE86EC();
}

uint64_t sub_1B8AE8C10@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = &type metadata for TerseEncoder.UnkeyedContainer;
  a1[4] = sub_1B8AE88D8();
  *a1 = v3;
}

uint64_t sub_1B8AE8C60@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for TerseEncoder.Impl();
  a1[4] = sub_1B8AE7FA4();
  *a1 = v3;
}

uint64_t sub_1B8AE8D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  return sub_1B8AE892C(v6, a3, *v4, *(a4 + 16), MEMORY[0x1E69E6158], *(a4 + 24), MEMORY[0x1E69E6160]);
}

uint64_t sub_1B8AE93D4(char a1, uint64_t a2)
{
  sub_1B8A85238(a2 + 16, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v7 = *(*(a2 + 64) + 16);
    if (v7)
    {
      v30 = MEMORY[0x1E69E6370];
      v31 = MEMORY[0x1E69E6378];
      LOBYTE(v28) = a1 & 1;
      v8 = a2;
      v9 = sub_1B8AE8648(&v28);
      v11 = v10;
      result = __swift_destroy_boxed_opaque_existential_0(&v28);
      if (v2)
      {
        return result;
      }

      v13 = *(a2 + 64);
      if (v7 > *(v13 + 16))
      {
        __break(1u);
      }

      else
      {
        v3 = v7 - 1;
        v14 = v13 + 16 * (v7 - 1);
        v15 = *(v14 + 40);
        v28 = *(v14 + 32);
        v29 = v15;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v9, v11);

        v9 = v28;
        v4 = v29;
        swift_beginAccess();
        v8 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v8;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v8);
      v8 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v7 > *(v8 + 16))
      {
        __break(1u);
      }

      else
      {
        v16 = v8 + 16 * v3;
        v17 = *(v16 + 40);
        *(v16 + 32) = v9;
        *(v16 + 40) = v4;
        *(a2 + 64) = v8;
        swift_endAccess();
      }

      return result;
    }
  }

  v30 = MEMORY[0x1E69E6370];
  v31 = MEMORY[0x1E69E6378];
  LOBYTE(v28) = a1 & 1;
  v18 = sub_1B8AE8648(&v28);
  v20 = v19;
  result = __swift_destroy_boxed_opaque_existential_0(&v28);
  if (!v2)
  {
    swift_beginAccess();
    v21 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1B8ABAC24(0, *(v21 + 2) + 1, 1, v21);
      *(a2 + 64) = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      v27 = sub_1B8ABAC24((v23 > 1), v24 + 1, 1, v21);
      v25 = v24 + 1;
      v21 = v27;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v24];
    *(v26 + 4) = v18;
    *(v26 + 5) = v20;
    *(a2 + 64) = v21;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AE9684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8A85238(a3 + 16, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v9 = *(*(a3 + 64) + 16);
    if (v9)
    {
      v32 = MEMORY[0x1E69E6158];
      v33 = MEMORY[0x1E69E6160];
      v30 = a1;
      v31 = a2;

      v10 = a3;
      v11 = sub_1B8AE8648(&v30);
      v13 = v12;
      result = __swift_destroy_boxed_opaque_existential_0(&v30);
      if (v3)
      {
        return result;
      }

      v15 = *(a3 + 64);
      if (v9 > *(v15 + 16))
      {
        __break(1u);
      }

      else
      {
        v4 = v9 - 1;
        v16 = v15 + 16 * (v9 - 1);
        v17 = *(v16 + 40);
        v30 = *(v16 + 32);
        v31 = v17;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v11, v13);

        v11 = v30;
        v5 = v31;
        swift_beginAccess();
        v10 = *(a3 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + 64) = v10;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v10);
      v10 = result;
      *(a3 + 64) = result;
LABEL_6:
      if (v9 > *(v10 + 16))
      {
        __break(1u);
      }

      else
      {
        v18 = v10 + 16 * v4;
        v19 = *(v18 + 40);
        *(v18 + 32) = v11;
        *(v18 + 40) = v5;
        *(a3 + 64) = v10;
        swift_endAccess();
      }

      return result;
    }
  }

  v32 = MEMORY[0x1E69E6158];
  v33 = MEMORY[0x1E69E6160];
  v30 = a1;
  v31 = a2;

  v20 = sub_1B8AE8648(&v30);
  v22 = v21;
  result = __swift_destroy_boxed_opaque_existential_0(&v30);
  if (!v3)
  {
    swift_beginAccess();
    v23 = *(a3 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 64) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1B8ABAC24(0, *(v23 + 2) + 1, 1, v23);
      *(a3 + 64) = v23;
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v29 = sub_1B8ABAC24((v25 > 1), v26 + 1, 1, v23);
      v27 = v26 + 1;
      v23 = v29;
    }

    *(v23 + 2) = v27;
    v28 = &v23[16 * v26];
    *(v28 + 4) = v20;
    *(v28 + 5) = v22;
    *(a3 + 64) = v23;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AE9940(uint64_t a1, double a2)
{
  sub_1B8A85238(a1 + 16, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v7 = *(*(a1 + 64) + 16);
    if (v7)
    {
      v30 = MEMORY[0x1E69E63B0];
      v31 = MEMORY[0x1E69E63C0];
      v28 = a2;
      v8 = a1;
      v9 = sub_1B8AE8648(&v28);
      v11 = v10;
      result = __swift_destroy_boxed_opaque_existential_0(&v28);
      if (v2)
      {
        return result;
      }

      v13 = *(a1 + 64);
      if (v7 > *(v13 + 16))
      {
        __break(1u);
      }

      else
      {
        v3 = v7 - 1;
        v14 = v13 + 16 * (v7 - 1);
        v15 = *(v14 + 40);
        v28 = *(v14 + 32);
        v29 = v15;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v9, v11);

        v9 = *&v28;
        v4 = v29;
        swift_beginAccess();
        v8 = *(a1 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 64) = v8;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v8);
      v8 = result;
      *(a1 + 64) = result;
LABEL_6:
      if (v7 > *(v8 + 16))
      {
        __break(1u);
      }

      else
      {
        v16 = v8 + 16 * v3;
        v17 = *(v16 + 40);
        *(v16 + 32) = v9;
        *(v16 + 40) = v4;
        *(a1 + 64) = v8;
        swift_endAccess();
      }

      return result;
    }
  }

  v30 = MEMORY[0x1E69E63B0];
  v31 = MEMORY[0x1E69E63C0];
  v28 = a2;
  v18 = sub_1B8AE8648(&v28);
  v20 = v19;
  result = __swift_destroy_boxed_opaque_existential_0(&v28);
  if (!v2)
  {
    swift_beginAccess();
    v21 = *(a1 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 64) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1B8ABAC24(0, *(v21 + 2) + 1, 1, v21);
      *(a1 + 64) = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      v32 = v24 + 1;
      v27 = sub_1B8ABAC24((v23 > 1), v24 + 1, 1, v21);
      v25 = v32;
      v21 = v27;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v24];
    *(v26 + 4) = v18;
    *(v26 + 5) = v20;
    *(a1 + 64) = v21;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AE9BF0(uint64_t a1, float a2)
{
  sub_1B8A85238(a1 + 16, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v7 = *(*(a1 + 64) + 16);
    if (v7)
    {
      v30 = MEMORY[0x1E69E6448];
      v31 = MEMORY[0x1E69E6458];
      *&v28 = a2;
      v8 = a1;
      v9 = sub_1B8AE8648(&v28);
      v11 = v10;
      result = __swift_destroy_boxed_opaque_existential_0(&v28);
      if (v2)
      {
        return result;
      }

      v13 = *(a1 + 64);
      if (v7 > *(v13 + 16))
      {
        __break(1u);
      }

      else
      {
        v3 = v7 - 1;
        v14 = v13 + 16 * (v7 - 1);
        v15 = *(v14 + 40);
        v28 = *(v14 + 32);
        v29 = v15;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v9, v11);

        v9 = v28;
        v4 = v29;
        swift_beginAccess();
        v8 = *(a1 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 64) = v8;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v8);
      v8 = result;
      *(a1 + 64) = result;
LABEL_6:
      if (v7 > *(v8 + 16))
      {
        __break(1u);
      }

      else
      {
        v16 = v8 + 16 * v3;
        v17 = *(v16 + 40);
        *(v16 + 32) = v9;
        *(v16 + 40) = v4;
        *(a1 + 64) = v8;
        swift_endAccess();
      }

      return result;
    }
  }

  v30 = MEMORY[0x1E69E6448];
  v31 = MEMORY[0x1E69E6458];
  *&v28 = a2;
  v18 = sub_1B8AE8648(&v28);
  v20 = v19;
  result = __swift_destroy_boxed_opaque_existential_0(&v28);
  if (!v2)
  {
    swift_beginAccess();
    v21 = *(a1 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 64) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1B8ABAC24(0, *(v21 + 2) + 1, 1, v21);
      *(a1 + 64) = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      v32 = v24 + 1;
      v27 = sub_1B8ABAC24((v23 > 1), v24 + 1, 1, v21);
      v25 = v32;
      v21 = v27;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v24];
    *(v26 + 4) = v18;
    *(v26 + 5) = v20;
    *(a1 + 64) = v21;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AE9EA0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A85238(a2 + 16, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v11 = *(*(a2 + 64) + 16);
    if (v11)
    {
      v34 = a3;
      v35 = a4;
      LOBYTE(v32) = a1;
      v12 = a2;
      v13 = sub_1B8AE8648(&v32);
      v15 = v14;
      result = __swift_destroy_boxed_opaque_existential_0(&v32);
      if (v4)
      {
        return result;
      }

      v17 = *(a2 + 64);
      if (v11 > *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = v11 - 1;
        v18 = v17 + 16 * (v11 - 1);
        v19 = *(v18 + 40);
        v32 = *(v18 + 32);
        v33 = v19;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v13, v15);

        v13 = v32;
        v6 = v33;
        swift_beginAccess();
        v12 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v12;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v12);
      v12 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v11 > *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v20 = v12 + 16 * v5;
        v21 = *(v20 + 40);
        *(v20 + 32) = v13;
        *(v20 + 40) = v6;
        *(a2 + 64) = v12;
        swift_endAccess();
      }

      return result;
    }
  }

  v34 = a3;
  v35 = a4;
  LOBYTE(v32) = a1;
  v22 = sub_1B8AE8648(&v32);
  v24 = v23;
  result = __swift_destroy_boxed_opaque_existential_0(&v32);
  if (!v4)
  {
    swift_beginAccess();
    v25 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1B8ABAC24(0, *(v25 + 2) + 1, 1, v25);
      *(a2 + 64) = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v31 = sub_1B8ABAC24((v27 > 1), v28 + 1, 1, v25);
      v29 = v28 + 1;
      v25 = v31;
    }

    *(v25 + 2) = v29;
    v30 = &v25[16 * v28];
    *(v30 + 4) = v22;
    *(v30 + 5) = v24;
    *(a2 + 64) = v25;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AEA130(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A85238(a2 + 16, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v11 = *(*(a2 + 64) + 16);
    if (v11)
    {
      v34 = a3;
      v35 = a4;
      LOWORD(v32) = a1;
      v12 = a2;
      v13 = sub_1B8AE8648(&v32);
      v15 = v14;
      result = __swift_destroy_boxed_opaque_existential_0(&v32);
      if (v4)
      {
        return result;
      }

      v17 = *(a2 + 64);
      if (v11 > *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = v11 - 1;
        v18 = v17 + 16 * (v11 - 1);
        v19 = *(v18 + 40);
        v32 = *(v18 + 32);
        v33 = v19;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v13, v15);

        v13 = v32;
        v6 = v33;
        swift_beginAccess();
        v12 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v12;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v12);
      v12 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v11 > *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v20 = v12 + 16 * v5;
        v21 = *(v20 + 40);
        *(v20 + 32) = v13;
        *(v20 + 40) = v6;
        *(a2 + 64) = v12;
        swift_endAccess();
      }

      return result;
    }
  }

  v34 = a3;
  v35 = a4;
  LOWORD(v32) = a1;
  v22 = sub_1B8AE8648(&v32);
  v24 = v23;
  result = __swift_destroy_boxed_opaque_existential_0(&v32);
  if (!v4)
  {
    swift_beginAccess();
    v25 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1B8ABAC24(0, *(v25 + 2) + 1, 1, v25);
      *(a2 + 64) = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v31 = sub_1B8ABAC24((v27 > 1), v28 + 1, 1, v25);
      v29 = v28 + 1;
      v25 = v31;
    }

    *(v25 + 2) = v29;
    v30 = &v25[16 * v28];
    *(v30 + 4) = v22;
    *(v30 + 5) = v24;
    *(a2 + 64) = v25;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AEA3C0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A85238(a2 + 16, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v11 = *(*(a2 + 64) + 16);
    if (v11)
    {
      v34 = a3;
      v35 = a4;
      LODWORD(v32) = a1;
      v12 = a2;
      v13 = sub_1B8AE8648(&v32);
      v15 = v14;
      result = __swift_destroy_boxed_opaque_existential_0(&v32);
      if (v4)
      {
        return result;
      }

      v17 = *(a2 + 64);
      if (v11 > *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = v11 - 1;
        v18 = v17 + 16 * (v11 - 1);
        v19 = *(v18 + 40);
        v32 = *(v18 + 32);
        v33 = v19;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v13, v15);

        v13 = v32;
        v6 = v33;
        swift_beginAccess();
        v12 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v12;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v12);
      v12 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v11 > *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v20 = v12 + 16 * v5;
        v21 = *(v20 + 40);
        *(v20 + 32) = v13;
        *(v20 + 40) = v6;
        *(a2 + 64) = v12;
        swift_endAccess();
      }

      return result;
    }
  }

  v34 = a3;
  v35 = a4;
  LODWORD(v32) = a1;
  v22 = sub_1B8AE8648(&v32);
  v24 = v23;
  result = __swift_destroy_boxed_opaque_existential_0(&v32);
  if (!v4)
  {
    swift_beginAccess();
    v25 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1B8ABAC24(0, *(v25 + 2) + 1, 1, v25);
      *(a2 + 64) = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v31 = sub_1B8ABAC24((v27 > 1), v28 + 1, 1, v25);
      v29 = v28 + 1;
      v25 = v31;
    }

    *(v25 + 2) = v29;
    v30 = &v25[16 * v28];
    *(v30 + 4) = v22;
    *(v30 + 5) = v24;
    *(a2 + 64) = v25;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AEA650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A85238(a2 + 16, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v11 = *(*(a2 + 64) + 16);
    if (v11)
    {
      v34 = a3;
      v35 = a4;
      v32 = a1;
      v12 = a2;
      v13 = sub_1B8AE8648(&v32);
      v15 = v14;
      result = __swift_destroy_boxed_opaque_existential_0(&v32);
      if (v4)
      {
        return result;
      }

      v17 = *(a2 + 64);
      if (v11 > *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = v11 - 1;
        v18 = v17 + 16 * (v11 - 1);
        v19 = *(v18 + 40);
        v32 = *(v18 + 32);
        v33 = v19;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v13, v15);

        v13 = v32;
        v6 = v33;
        swift_beginAccess();
        v12 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v12;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v12);
      v12 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v11 > *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v20 = v12 + 16 * v5;
        v21 = *(v20 + 40);
        *(v20 + 32) = v13;
        *(v20 + 40) = v6;
        *(a2 + 64) = v12;
        swift_endAccess();
      }

      return result;
    }
  }

  v34 = a3;
  v35 = a4;
  v32 = a1;
  v22 = sub_1B8AE8648(&v32);
  v24 = v23;
  result = __swift_destroy_boxed_opaque_existential_0(&v32);
  if (!v4)
  {
    swift_beginAccess();
    v25 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1B8ABAC24(0, *(v25 + 2) + 1, 1, v25);
      *(a2 + 64) = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v31 = sub_1B8ABAC24((v27 > 1), v28 + 1, 1, v25);
      v29 = v28 + 1;
      v25 = v31;
    }

    *(v25 + 2) = v29;
    v30 = &v25[16 * v28];
    *(v30 + 4) = v22;
    *(v30 + 5) = v24;
    *(a2 + 64) = v25;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AEA8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A85238(a2 + 16, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v11 = *(*(a2 + 64) + 16);
    if (v11)
    {
      v36 = a3;
      v37 = a4;
      v12 = __swift_allocate_boxed_opaque_existential_1(&v34);
      (*(*(a3 - 8) + 16))(v12, a1, a3);
      v13 = a2;
      v14 = sub_1B8AE8648(&v34);
      v16 = v15;
      result = __swift_destroy_boxed_opaque_existential_0(&v34);
      if (v4)
      {
        return result;
      }

      v18 = *(a2 + 64);
      if (v11 > *(v18 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = v11 - 1;
        v19 = v18 + 16 * (v11 - 1);
        v20 = *(v19 + 40);
        v34 = *(v19 + 32);
        v35 = v20;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v14, v16);

        v14 = v34;
        v6 = v35;
        swift_beginAccess();
        v13 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v13;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v13);
      v13 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v11 > *(v13 + 16))
      {
        __break(1u);
      }

      else
      {
        v21 = v13 + 16 * v5;
        v22 = *(v21 + 40);
        *(v21 + 32) = v14;
        *(v21 + 40) = v6;
        *(a2 + 64) = v13;
        swift_endAccess();
      }

      return result;
    }
  }

  v36 = a3;
  v37 = a4;
  v23 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(*(a3 - 8) + 16))(v23, a1, a3);
  v24 = sub_1B8AE8648(&v34);
  v26 = v25;
  result = __swift_destroy_boxed_opaque_existential_0(&v34);
  if (!v4)
  {
    swift_beginAccess();
    v27 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1B8ABAC24(0, *(v27 + 2) + 1, 1, v27);
      *(a2 + 64) = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v33 = sub_1B8ABAC24((v29 > 1), v30 + 1, 1, v27);
      v31 = v30 + 1;
      v27 = v33;
    }

    *(v27 + 2) = v31;
    v32 = &v27[16 * v30];
    *(v32 + 4) = v24;
    *(v32 + 5) = v26;
    *(a2 + 64) = v27;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AEB180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
}

uint64_t sub_1B8AEB194(char a1)
{
  v3 = *v1;
  sub_1B8A85238(*v1 + 16, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1B8A85238((v3 + 2), &v16);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v4 = v15;
    v5 = v3[10];
    v3[9] = v14;
    v3[10] = v4;
  }

  else
  {
    sub_1B8A85238((v3 + 2), &v16);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    LOBYTE(v14) = a1 & 1;
    sub_1B8AF0B78();
    v7 = v16;
    v8 = v17;
    swift_beginAccess();
    v9 = v3[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B8ABAC24(0, *(v9 + 2) + 1, 1, v9);
      v3[8] = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B8ABAC24((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    v3[8] = v9;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEB38C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  sub_1B8A85238(*v2 + 16, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v17);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1B8A85238((v5 + 2), &v19);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v19);
    v6 = v18;
    v7 = v5[10];
    v5[9] = v17;
    v5[10] = v6;
  }

  else
  {
    sub_1B8A85238((v5 + 2), &v19);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v17);
      v19 = 0;
      v20 = 0xE000000000000000;
      v17 = a1;
      v18 = a2;
      sub_1B8AF0B78();
      v9 = v19;
      v10 = v20;
    }

    else
    {
      v9 = sub_1B8AF0708();
      v10 = v11;
    }

    swift_beginAccess();
    v12 = v5[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5[8] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B8ABAC24(0, *(v12 + 2) + 1, 1, v12);
      v5[8] = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B8ABAC24((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[16 * v15];
    *(v16 + 4) = v9;
    *(v16 + 5) = v10;
    v5[8] = v12;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEB59C(double a1)
{
  v3 = *v1;
  sub_1B8A85238((*v1 + 2), &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
    v14 = 0.0;
    v15 = 0xE000000000000000;
    sub_1B8A85238((v3 + 2), &v16);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v4 = v15;
    v5 = *(v3 + 10);
    v3[9] = v14;
    *(v3 + 10) = v4;
  }

  else
  {
    sub_1B8A85238((v3 + 2), &v16);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    v14 = a1;
    sub_1B8AF0B78();
    v7 = v16;
    v8 = v17;
    swift_beginAccess();
    v9 = *(v3 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 8) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B8ABAC24(0, *(v9 + 2) + 1, 1, v9);
      *(v3 + 8) = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B8ABAC24((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    *(v3 + 8) = v9;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEB798(float a1)
{
  v3 = *v1;
  sub_1B8A85238(*v1 + 16, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1B8A85238((v3 + 2), &v16);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v4 = v15;
    v5 = v3[10];
    v3[9] = v14;
    v3[10] = v4;
  }

  else
  {
    sub_1B8A85238((v3 + 2), &v16);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    *&v14 = a1;
    sub_1B8AF0B78();
    v7 = v16;
    v8 = v17;
    swift_beginAccess();
    v9 = v3[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B8ABAC24(0, *(v9 + 2) + 1, 1, v9);
      v3[8] = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B8ABAC24((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    v3[8] = v9;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEB994(char a1)
{
  v3 = *v1;
  sub_1B8A85238(*v1 + 16, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1B8A85238((v3 + 2), &v16);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v4 = v15;
    v5 = v3[10];
    v3[9] = v14;
    v3[10] = v4;
  }

  else
  {
    sub_1B8A85238((v3 + 2), &v16);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    LOBYTE(v14) = a1;
    sub_1B8AF0B78();
    v7 = v16;
    v8 = v17;
    swift_beginAccess();
    v9 = v3[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B8ABAC24(0, *(v9 + 2) + 1, 1, v9);
      v3[8] = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B8ABAC24((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    v3[8] = v9;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEBB88(__int16 a1)
{
  v3 = *v1;
  sub_1B8A85238(*v1 + 16, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1B8A85238((v3 + 2), &v16);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v4 = v15;
    v5 = v3[10];
    v3[9] = v14;
    v3[10] = v4;
  }

  else
  {
    sub_1B8A85238((v3 + 2), &v16);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    LOWORD(v14) = a1;
    sub_1B8AF0B78();
    v7 = v16;
    v8 = v17;
    swift_beginAccess();
    v9 = v3[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B8ABAC24(0, *(v9 + 2) + 1, 1, v9);
      v3[8] = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B8ABAC24((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    v3[8] = v9;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEBD7C(int a1)
{
  v3 = *v1;
  sub_1B8A85238(*v1 + 16, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1B8A85238((v3 + 2), &v16);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v4 = v15;
    v5 = v3[10];
    v3[9] = v14;
    v3[10] = v4;
  }

  else
  {
    sub_1B8A85238((v3 + 2), &v16);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    LODWORD(v14) = a1;
    sub_1B8AF0B78();
    v7 = v16;
    v8 = v17;
    swift_beginAccess();
    v9 = v3[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B8ABAC24(0, *(v9 + 2) + 1, 1, v9);
      v3[8] = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B8ABAC24((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    v3[8] = v9;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEBF70(uint64_t a1)
{
  v3 = *v1;
  sub_1B8A85238(*v1 + 16, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1B8A85238((v3 + 2), &v16);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v4 = v15;
    v5 = v3[10];
    v3[9] = v14;
    v3[10] = v4;
  }

  else
  {
    sub_1B8A85238((v3 + 2), &v16);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    v14 = a1;
    sub_1B8AF0B78();
    v7 = v16;
    v8 = v17;
    swift_beginAccess();
    v9 = v3[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B8ABAC24(0, *(v9 + 2) + 1, 1, v9);
      v3[8] = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B8ABAC24((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    v3[8] = v9;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEC164(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1B8A85238(*v2 + 16, &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v21);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1B8A85238((v9 + 2), &v23);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v23);
    v10 = v22;
    v11 = v9[10];
    v9[9] = v21;
    v9[10] = v10;
  }

  sub_1B8A85238((v9 + 2), &v23);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v21);
LABEL_7:
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1B8AF0E98();
    v13 = v23;
    v15 = v24;
    goto LABEL_8;
  }

  (*(v5 + 16))(v8, a1, a2);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v13 = sub_1B8AF0708();
  v15 = v14;

LABEL_8:
  swift_beginAccess();
  v16 = v9[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1B8ABAC24(0, *(v16 + 2) + 1, 1, v16);
    v9[8] = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1B8ABAC24((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[16 * v19];
  *(v20 + 4) = v13;
  *(v20 + 5) = v15;
  v9[8] = v16;
  return swift_endAccess();
}

uint64_t sub_1B8AEC418()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 64) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B8ABAC24(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 64) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1B8ABAC24((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v5 + 1;
  v6 = &v2[16 * v5];
  *(v6 + 4) = 7104878;
  *(v6 + 5) = 0xE300000000000000;
  *(v1 + 64) = v2;
  return swift_endAccess();
}

unint64_t sub_1B8AEC6E0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1B8AF0748();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1B8AF07D8();
}

uint64_t sub_1B8AEC790(uint64_t a1, unint64_t a2)
{
  if (qword_1EBA96498 != -1)
  {
LABEL_14:
    swift_once();
  }

  v3 = off_1EBA977A0;
  v4 = off_1EBA977A0 + 64;
  v5 = 1 << *(off_1EBA977A0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(off_1EBA977A0 + 8);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v9 << 10) | (16 * v11);
    v13 = (v3[6] + v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (v3[7] + v12);
    v17 = *v16;
    v18 = v16[1];

    if (sub_1B8AF07A8())
    {
      v19 = sub_1B8AF0728();

      sub_1B8AEC6E0(v19, a1, a2);

      sub_1B8AEC97C();
      sub_1B8AF0758();

      a2 = v18;
      a1 = v17;
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *&v4[8 * v9];
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  return a1;
}

unint64_t sub_1B8AEC97C()
{
  result = qword_1EBA977C0;
  if (!qword_1EBA977C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA977C0);
  }

  return result;
}

uint64_t sub_1B8AEC9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977C8, &qword_1B8AFD5D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8AECA50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B8AECAD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8AECB48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1B8AECC88(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1B8AECEA8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97950, &qword_1B8AFDCD0);
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97958, &qword_1B8AFDCD8);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97960, &qword_1B8AFDCE0);
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AEE8B0();
  sub_1B8AF1058();
  v18 = *v2;
  v17 = v2[1];
  v19 = v2[2];
  v26[1] = v2[3];
  v26[2] = v19;
  if (v2[6])
  {
    v20 = v2[4];
    v21 = v2[5];
    v38 = 1;
    sub_1B8AEE904();
    sub_1B8AF0C88();
    v37 = 0;
    v23 = v29;
    v22 = v30;
    sub_1B8AF0C98();
    if (!v22)
    {
      v36 = 1;
      sub_1B8AF0C98();
      v35 = 2;
      sub_1B8AF0C98();
    }

    (*(v28 + 8))(v7, v23);
  }

  else
  {
    v34 = 0;
    sub_1B8AEE958();
    sub_1B8AF0C88();
    v33 = 0;
    v24 = v30;
    sub_1B8AF0C98();
    if (!v24)
    {
      v32 = 1;
      sub_1B8AF0C98();
    }

    (*(v27 + 8))(v11, v8);
  }

  return (*(v31 + 8))(v15, v12);
}

uint64_t sub_1B8AED244()
{
  if (*v0)
  {
    result = 8461777051906630000;
  }

  else
  {
    result = 0x6F6F426573726170;
  }

  *v0;
  return result;
}

uint64_t sub_1B8AED28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6F426573726170 && a2 == 0xEC0000006E61656CLL;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 8461777051906630000 && a2 == 0xE90000000000006DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B8AED374(uint64_t a1)
{
  v2 = sub_1B8AEE8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AED3B0(uint64_t a1)
{
  v2 = sub_1B8AEE8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AED3EC()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_1B8AED41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B8AED4F4(uint64_t a1)
{
  v2 = sub_1B8AEE958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AED530(uint64_t a1)
{
  v2 = sub_1B8AEE958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AED56C()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x657079546D756E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1B8AED5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8AEE12C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8AED5E4(uint64_t a1)
{
  v2 = sub_1B8AEE904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AED620(uint64_t a1)
{
  v2 = sub_1B8AEE904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1B8AED65C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B8AEE240(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_1B8AED6C4()
{
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v2 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v3;
  v4 = sub_1B8AD6C1C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8AB3660(inited + 32);
  return v6;
}

uint64_t sub_1B8AED788(uint64_t a1)
{
  v2 = sub_1B8ADA438();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AED7C4(uint64_t a1)
{
  v2 = sub_1B8ADA438();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

id static SCMLUserDefaults.globalBool(name:defaultValue:)(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1B8AEDA08(a1, a2);
  if (!v3)
  {
    if (result == 2)
    {
      v6 = a3;
    }

    else
    {
      v6 = result;
    }

    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  return result;
}

id SCMLUserDefaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCMLUserDefaults.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLUserDefaults();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SCMLUserDefaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLUserDefaults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8AEDA08(uint64_t a1, uint64_t a2)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    if (!internalBuild)
    {
      return 2;
    }

    v7 = [objc_opt_self() standardUserDefaults];
    *&v19[0] = 0xD000000000000025;
    *(&v19[0] + 1) = 0x80000001B8B07500;
    MEMORY[0x1B8CC5F50](a1, a2);
    v8 = sub_1B8AF0658();

    v9 = [v7 objectForKey_];

    if (!v9)
    {
      return 2;
    }

    sub_1B8AF0A18();
    swift_unknownObjectRelease();
    sub_1B8AAB328(v19, v20);
    sub_1B8A7BBE0(v20, v19);
    sub_1B8AEDD48();
    if (swift_dynamicCast())
    {
      v10 = [v18 integerValue];

      __swift_destroy_boxed_opaque_existential_0(v20);
      return v10 != 0;
    }

    sub_1B8A7BBE0(v20, v19);
    if (swift_dynamicCast())
    {
      v11 = sub_1B8AF06C8();
      v13 = v12;

      if (v11 == 7562617 && v13 == 0xE300000000000000 || (sub_1B8AF0EA8() & 1) != 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v20);

        return 1;
      }

      if (v11 == 28526 && v13 == 0xE200000000000000)
      {

LABEL_16:
        __swift_destroy_boxed_opaque_existential_0(v20);
        return 0;
      }

      v14 = sub_1B8AF0EA8();

      if (v14)
      {
        goto LABEL_16;
      }
    }

    *&v19[0] = 0xD000000000000025;
    *(&v19[0] + 1) = 0x80000001B8B07500;
    MEMORY[0x1B8CC5F50](a1, a2);
    v15 = v19[0];
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;
    sub_1B8AF0B78();
    v16 = v19[0];
    sub_1B8ADA48C();
    swift_allocError();
    *v17 = v15;
    *(v17 + 16) = v16;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B8AEDD48()
{
  result = qword_1EBA978F8;
  if (!qword_1EBA978F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA978F8);
  }

  return result;
}

id sub_1B8AEDD94(uint64_t a1, uint64_t a2)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    if (internalBuild && (v7 = [objc_opt_self() standardUserDefaults], MEMORY[0x1B8CC5F50](a1, a2), v8 = sub_1B8AF0658(), , v9 = objc_msgSend(v7, sel_stringForKey_, v8), v7, v8, v9))
    {
      v10 = sub_1B8AF0668();

      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B8AEDED4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1B8AEDF1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B8AEDF8C(void *a1)
{
  a1[1] = sub_1B8ADA438();
  a1[2] = sub_1B8AEDFDC();
  a1[3] = sub_1B8AEE030();
  a1[4] = sub_1B8AEE084();
  a1[5] = sub_1B8AEE0D8();
  result = sub_1B8ADA320();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AEDFDC()
{
  result = qword_1EBA97900;
  if (!qword_1EBA97900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97900);
  }

  return result;
}

unint64_t sub_1B8AEE030()
{
  result = qword_1EBA97908;
  if (!qword_1EBA97908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97908);
  }

  return result;
}

unint64_t sub_1B8AEE084()
{
  result = qword_1EBA97910;
  if (!qword_1EBA97910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97910);
  }

  return result;
}

unint64_t sub_1B8AEE0D8()
{
  result = qword_1EBA97918;
  if (!qword_1EBA97918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97918);
  }

  return result;
}

uint64_t sub_1B8AEE12C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657079546D756E65 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B8AF0EA8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B8AEE240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97920, &qword_1B8AFDCB0);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97928, &qword_1B8AFDCB8);
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97930, &unk_1B8AFDCC0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B8AEE8B0();
  v18 = v54;
  sub_1B8AF1048();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(v55);
  }

  v49 = v7;
  v19 = v6;
  v20 = v52;
  v21 = v53;
  v54 = v12;
  v22 = sub_1B8AF0C78();
  v23 = (2 * *(v22 + 16)) | 1;
  v56 = v22;
  v57 = v22 + 32;
  v58 = 0;
  v59 = v23;
  v24 = sub_1B8AE4FD0();
  v25 = v15;
  if (v24 == 2 || v58 != v59 >> 1)
  {
    v30 = sub_1B8AF0B08();
    swift_allocError();
    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190) + 48);
    *v32 = &_s5ErrorON_1;
    sub_1B8AF0C08();
    sub_1B8AF0AF8();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v54 + 8))(v25, v11);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v55);
  }

  v60 = v24;
  if (v24)
  {
    v61 = 1;
    sub_1B8AEE904();
    v26 = v19;
    sub_1B8AF0BF8();
    v27 = v54;
    v28 = v21;
    v29 = v25;
    v61 = 0;
    v48 = sub_1B8AF0C18();
    v50 = v37;
    v61 = 1;
    v46 = sub_1B8AF0C18();
    v47 = v40;
    v61 = 2;
    v49 = sub_1B8AF0C18();
    v43 = v42;
    (*(v51 + 8))(v26, v20);
    (*(v27 + 8))(v29, v11);
    swift_unknownObjectRelease();
    v44 = v50;
  }

  else
  {
    v61 = 0;
    sub_1B8AEE958();
    sub_1B8AF0BF8();
    v34 = v54;
    v28 = v21;
    v61 = 0;
    v35 = v49;
    v36 = sub_1B8AF0C18();
    v44 = v38;
    v48 = v36;
    v61 = 1;
    v46 = sub_1B8AF0C18();
    v47 = v41;
    (*(v50 + 8))(v10, v35);
    (*(v34 + 8))(v15, v11);
    swift_unknownObjectRelease();
    v49 = 0;
    v43 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v55);
  *v28 = v48;
  *(v28 + 8) = v44;
  v45 = v47;
  *(v28 + 16) = v46;
  *(v28 + 24) = v45;
  *(v28 + 32) = v49;
  *(v28 + 40) = v43;
  *(v28 + 48) = v60 & 1;
  return result;
}

unint64_t sub_1B8AEE8B0()
{
  result = qword_1EBA97938;
  if (!qword_1EBA97938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97938);
  }

  return result;
}

unint64_t sub_1B8AEE904()
{
  result = qword_1EBA97940;
  if (!qword_1EBA97940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97940);
  }

  return result;
}

unint64_t sub_1B8AEE958()
{
  result = qword_1EBA97948;
  if (!qword_1EBA97948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97948);
  }

  return result;
}

unint64_t sub_1B8AEE9E0()
{
  result = qword_1EBA97968;
  if (!qword_1EBA97968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97968);
  }

  return result;
}

unint64_t sub_1B8AEEA38()
{
  result = qword_1EBA97970;
  if (!qword_1EBA97970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97970);
  }

  return result;
}

unint64_t sub_1B8AEEA90()
{
  result = qword_1EBA97978;
  if (!qword_1EBA97978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97978);
  }

  return result;
}

unint64_t sub_1B8AEEAE8()
{
  result = qword_1EBA97980;
  if (!qword_1EBA97980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97980);
  }

  return result;
}

unint64_t sub_1B8AEEB40()
{
  result = qword_1EBA97988;
  if (!qword_1EBA97988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97988);
  }

  return result;
}

unint64_t sub_1B8AEEB98()
{
  result = qword_1EBA97990;
  if (!qword_1EBA97990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97990);
  }

  return result;
}

unint64_t sub_1B8AEEBF0()
{
  result = qword_1EBA97998;
  if (!qword_1EBA97998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97998);
  }

  return result;
}

unint64_t sub_1B8AEEC48()
{
  result = qword_1EBA979A0;
  if (!qword_1EBA979A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA979A0);
  }

  return result;
}

unint64_t sub_1B8AEECA0()
{
  result = qword_1EBA979A8;
  if (!qword_1EBA979A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA979A8);
  }

  return result;
}

void anonymous namespace::tensorViewCHW()
{
  __assert_rtn("tensorViewCHW", "SCMLImageAnalyzer.mm", 501, "buf->sequence_length == 1");
}

{
  __assert_rtn("tensorViewCHW", "SCMLImageAnalyzer.mm", 502, "buf->batch_number == 1");
}

void scaledPixelBuffer32BGRAFromCGImage_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void scaledPixelBuffer32BGRAFromCGImage_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void saveCGImageToPng_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void saveCGImageToPng_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void saveCVPixelBufferToPng_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp()
{
  return MEMORY[0x1EEE02E98]();
}

{
  return MEMORY[0x1EEE02EA0]();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A18](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A20](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__stem(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A48](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x1EEE63B28](this, a2);
}

{
  return MEMORY[0x1EEE63B40](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x1EEE63B50](this);
}

{
  MEMORY[0x1EEE63B58](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB0]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}