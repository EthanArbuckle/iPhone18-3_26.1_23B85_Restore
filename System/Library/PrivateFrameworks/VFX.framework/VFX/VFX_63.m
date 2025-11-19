uint64_t sub_1AF60F868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a6;
  v36 = a8;
  v39[5] = *MEMORY[0x1E69E9840];
  v33 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v13 * v12;
  if (v13 + v13 * v12 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v13 + v13 * v12;
  }

  v21 = v15[5];
  v20 = v15[6];
  sub_1AF441150(v15 + 2, v21);
  (*(v20 + 24))(v39, *(*(a4 + 64) + 8 * v18 + 32), v21, v20);
  v22 = v33;
  v23 = sub_1AF60AA00(v39);
  if (v18 == v19)
  {
LABEL_8:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v39);
  }

  else
  {
    v34 = a9;
    v24 = (v22 + 8);
    while (!*a5)
    {
      sub_1AF441194(v23 + 72, v38);
      v25 = sub_1AF60A9E4();
      v26 = *(v23 + 48);
      v37[0] = v25;
      v37[1] = v26;

      v27 = sub_1AF611FA0(v25, v38, v25, a7, &type metadata for _BinaryDecoder.SingleValueStore, a7, &off_1F2531380, v36);
      MEMORY[0x1EEE9AC00](v27, v28);
      *(&v33 - 6) = a7;
      *(&v33 - 5) = v29;
      v30 = v35;
      *(&v33 - 4) = v34;
      *(&v33 - 3) = v30;
      *(&v33 - 2) = v18;
      sub_1AF648DE8(v17, sub_1AF61521C, (&v33 - 8), a7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v31);
      (*v24)(v17, a7);
      sub_1AF6151E8(v37);
      if (v19 == ++v18)
      {
        goto LABEL_8;
      }
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v39);
  }
}

uint64_t sub_1AF60FB3C()
{
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF60FBA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for RenderPass.Dimension(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1AF60FC00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for RenderPass.Dimension(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for RenderPass.Dimension(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t destroy for BinaryDecoder.Options(uint64_t a1)
{

  if (*(a1 + 16))
  {
  }

  return result;
}

uint64_t initializeWithCopy for BinaryDecoder.Options(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = (a2 + 16);
  v4 = *(a2 + 16);

  if (v4)
  {
    v6 = *(a2 + 24);
    *(a1 + 16) = v4;
    *(a1 + 24) = v6;
  }

  else
  {
    *(a1 + 16) = *v5;
  }

  return a1;
}

uint64_t assignWithCopy for BinaryDecoder.Options(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  if (!v4)
  {
    if (v5)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) = v5;
      *(a1 + 24) = v7;

      return a1;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    return a1;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;

  return a1;
}

uint64_t assignWithTake for BinaryDecoder.Options(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  if (!v5)
  {
    if (v4)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) = v4;
      *(a1 + 24) = v7;
      return a1;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for BinaryDecoder.Options(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BinaryDecoder.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1AF60FFA8()
{
  result = qword_1ED7271A8[0];
  if (!qword_1ED7271A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7271A8);
  }

  return result;
}

uint64_t sub_1AF60FFFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_1AF610084()
{
  v2 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AF60DF74(0x60u);
  if (!v1)
  {
    v7 = v6;
    v8 = v0[3];
    v9 = v0[4];
    sub_1AF441150(v0, v8);
    v10 = (*(v9 + 16))(v7, v8, v9);
    v13 = v10;
    v18[0] = v10;
    v18[1] = v11;
    v14 = v11;
    sub_1AFDFCF58();
    sub_1AF6155B0();
    v15 = sub_1AFDFCF28();
    if (v16)
    {
      v5 = v15;
    }

    else
    {
      sub_1AF60A3B8();
      v5 = swift_allocError();
      *v17 = xmmword_1AFE505D0;
      *(v17 + 16) = 6;
      swift_willThrow();
    }

    sub_1AF439ED8(v13, v14);
  }

  return v5;
}

char *sub_1AF610200(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AF60E1BC(0x60u, a1, a2);
  if (!v2)
  {
    v10 = (*(a2 + 16))(v9, a1, a2);
    v13 = v10;
    v18[0] = v10;
    v18[1] = v11;
    v14 = v11;
    sub_1AFDFCF58();
    sub_1AF6155B0();
    v15 = sub_1AFDFCF28();
    if (v16)
    {
      v8 = v15;
    }

    else
    {
      sub_1AF60A3B8();
      v8 = swift_allocError();
      *v17 = xmmword_1AFE505D0;
      *(v17 + 16) = 6;
      swift_willThrow();
    }

    sub_1AF439ED8(v13, v14);
  }

  return v8;
}

uint64_t sub_1AF61036C(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 40))();
  if (!v2)
  {
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      (*(a2 + 48))(a1, a2);
      v6 = 1;
    }
  }

  return v6 & 1;
}

uint64_t sub_1AF6103E4()
{
  v2 = v0[3];
  v3 = v0[4];
  sub_1AF441150(v0, v2);
  v4 = (*(v3 + 8))(0, v2, v3);
  if (!v1)
  {
    if ((v4 & 0xE0) != 0)
    {
      v6 = v4 & 0xE0;
      v7 = 3;
      v8 = &unk_1F24FF898;
    }

    else
    {
      if (v4 >= 0x10u)
      {
        v5 = v4 & 1;
        return v5 & 1;
      }

      v6 = 0;
      v7 = 4;
      v8 = 16;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v9 = v8;
    *(v9 + 8) = v6;
    *(v9 + 16) = v7;
    swift_willThrow();
  }

  return v5 & 1;
}

uint64_t sub_1AF6104C0()
{
  v1 = sub_1AF60B7E8();
  if (!v0)
  {
    if ((v1 & 0xE0) != 0)
    {
      v3 = v1 & 0xE0;
      v4 = 3;
      v5 = &unk_1F24FF8C0;
    }

    else
    {
      if (v1 >= 0x10u)
      {
        v2 = v1 & 1;
        return v2 & 1;
      }

      v3 = 0;
      v4 = 4;
      v5 = 16;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t sub_1AF610564(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 48))();
  if (!v2)
  {
    if ((v3 & 0xE0) != 0)
    {
      v5 = v3 & 0xE0;
      v6 = 3;
      v7 = &unk_1F24FF8E8;
    }

    else
    {
      if (v3 >= 0x10u)
      {
        v4 = v3 & 1;
        return v4 & 1;
      }

      v5 = 0;
      v6 = 4;
      v7 = 16;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v8 = v7;
    *(v8 + 8) = v5;
    *(v8 + 16) = v6;
    swift_willThrow();
  }

  return v4 & 1;
}

unint64_t sub_1AF610618()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x20)
    {
      v2 = result;
      result &= 0xFu;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      if (result == 3)
      {
        return bswap64(sub_1AF60C130());
      }

      v3 = 0;
      v5 = ((result << 8) | 3);
      v4 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v4 = 3;
      v5 = &unk_1F24FF910;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF610704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v9 = v3[4];
  sub_1AF441150(v3, v8);
  result = (*(v9 + 8))(0, v8, v9);
  if (!v4)
  {
    if ((result & 0xE0) == 0x20)
    {
      v11 = result;
      result &= 0xFu;
      if ((v11 & 0x10) == 0)
      {
        return result;
      }

      if (result == 3)
      {
        v12 = v3[3];
        v13 = v3[4];
        sub_1AF441150(v3, v12);
        (*(v13 + 32))(&v18, a2, a3, v12, v13);
        return bswap64(v18);
      }

      v17 = (result << 8) | 3;
      sub_1AF60A3B8();
      swift_allocError();
      *v15 = v17;
      *(v15 + 8) = 0;
      v16 = 5;
    }

    else
    {
      v14 = result & 0xE0;
      sub_1AF60A3B8();
      swift_allocError();
      *v15 = a1;
      *(v15 + 8) = v14;
      v16 = 3;
    }

    *(v15 + 16) = v16;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1AF610878()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x20)
    {
      v2 = result;
      result &= 0xFu;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      if (result == 3)
      {
        return bswap64(sub_1AF60C130());
      }

      v3 = 0;
      v5 = ((result << 8) | 3);
      v4 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v4 = 3;
      v5 = &unk_1F24FF988;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF610930()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x20)
    {
      v2 = result;
      result &= 0xFu;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      if (!result)
      {
        return sub_1AF60C350();
      }

      v3 = 0;
      v4 = (result << 8);
      v5 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v5 = 3;
      v4 = &unk_1F24FF9B0;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v4;
    *(v6 + 8) = v3;
    *(v6 + 16) = v5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF6109DC()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x20)
    {
      v2 = result;
      result &= 0xFu;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      if (result == 1)
      {
        return bswap32(sub_1AF60C56C()) >> 16;
      }

      v3 = 0;
      v5 = ((result << 8) | 1);
      v4 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v4 = 3;
      v5 = &unk_1F24FF9D8;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF610A98()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x20)
    {
      v2 = result;
      result &= 0xFu;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      if (result == 2)
      {
        return bswap32(sub_1AF60C78C());
      }

      v3 = 0;
      v5 = ((result << 8) | 2);
      v4 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v4 = 3;
      v5 = &unk_1F24FFA00;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1AF610B50()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x20)
    {
      v2 = result;
      result &= 0xFu;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      if (result == 3)
      {
        return bswap64(sub_1AF60C130());
      }

      v3 = 0;
      v5 = ((result << 8) | 3);
      v4 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v4 = 3;
      v5 = &unk_1F24FFA28;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF610C08()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x20)
    {
      v2 = result;
      result &= 0xFu;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      if (!result)
      {
        return sub_1AF60C350();
      }

      v3 = 0;
      v4 = (result << 8);
      v5 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v5 = 3;
      v4 = &unk_1F24FFA50;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v4;
    *(v6 + 8) = v3;
    *(v6 + 16) = v5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF610CB4()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x20)
    {
      v2 = result;
      result &= 0xFu;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      if (result == 1)
      {
        return bswap32(sub_1AF60C56C()) >> 16;
      }

      v3 = 0;
      v5 = ((result << 8) | 1);
      v4 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v4 = 3;
      v5 = &unk_1F24FFA78;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF610D70()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x20)
    {
      v2 = result;
      result &= 0xFu;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      if (result == 2)
      {
        return bswap32(sub_1AF60C78C());
      }

      v3 = 0;
      v5 = ((result << 8) | 2);
      v4 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v4 = 3;
      v5 = &unk_1F24FFAA0;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF610E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v9 = v3[4];
  sub_1AF441150(v3, v8);
  result = (*(v9 + 8))(0, v8, v9);
  if (!v4)
  {
    if ((result & 0xE0) == 0x20)
    {
      v11 = result;
      result &= 0xFu;
      if ((v11 & 0x10) == 0)
      {
        return result;
      }

      if (result == 1)
      {
        v12 = v3[3];
        v13 = v3[4];
        sub_1AF441150(v3, v12);
        (*(v13 + 32))(&v18, a2, a3, v12, v13);
        return bswap32(v18) >> 16;
      }

      v17 = (result << 8) | 1;
      sub_1AF60A3B8();
      swift_allocError();
      *v15 = v17;
      *(v15 + 8) = 0;
      v16 = 5;
    }

    else
    {
      v14 = result & 0xE0;
      sub_1AF60A3B8();
      swift_allocError();
      *v15 = a1;
      *(v15 + 8) = v14;
      v16 = 3;
    }

    *(v15 + 16) = v16;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF610FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v9 = v3[4];
  sub_1AF441150(v3, v8);
  result = (*(v9 + 8))(0, v8, v9);
  if (!v4)
  {
    if ((result & 0xE0) == 0x20)
    {
      v11 = result;
      result &= 0xFu;
      if ((v11 & 0x10) == 0)
      {
        return result;
      }

      if (result == 2)
      {
        v12 = v3[3];
        v13 = v3[4];
        sub_1AF441150(v3, v12);
        (*(v13 + 32))(&v18, a2, a3, v12, v13);
        return bswap32(v18);
      }

      v17 = (result << 8) | 2;
      sub_1AF60A3B8();
      swift_allocError();
      *v15 = v17;
      *(v15 + 8) = 0;
      v16 = 5;
    }

    else
    {
      v14 = result & 0xE0;
      sub_1AF60A3B8();
      swift_allocError();
      *v15 = a1;
      *(v15 + 8) = v14;
      v16 = 3;
    }

    *(v15 + 16) = v16;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF611114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 48))(a2, a4);
  if (!v4)
  {
    if ((result & 0xE0) == 0x20)
    {
      if ((result & 0x10) == 0)
      {
        sub_1AF6162E8();
        return sub_1AFDFDFA8();
      }

      v13 = result;
      v14 = sub_1AF609E7C(a3);
      v15 = v13 & 0xF;
      if (v15 == v14)
      {
        return sub_1AF611270(a1, a2, a3);
      }

      v9 = 0;
      v11 = (v14 | (v15 << 8));
      v10 = 5;
    }

    else
    {
      v9 = result & 0xE0;
      v10 = 3;
      v11 = &unk_1F24FDED8;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = v9;
    *(v12 + 16) = v10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF611270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v16 - v11;
  result = (*(v13 + 32))(a3, *(*(*(v14 + 8) + 24) + 16), v10);
  if (!v3)
  {
    (*(v5 + 16))(v7, v12, a3);
    sub_1AFDFE4A8();
    return (*(v5 + 8))(v12, a3);
  }

  return result;
}

uint64_t sub_1AF6113C8(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 48))();
  if (!v2 && (result & 0x10) != 0)
  {
    return sub_1AF611414(result, a1);
  }

  return result;
}

uint64_t sub_1AF611414(char a1, uint64_t a2)
{
  v3 = a1 & 0xF;
  if ((a1 & 0xFu) > 1)
  {
    if (v3 == 2)
    {
      sub_1AF608F54();
      v4 = MEMORY[0x1E69E7668];
      return sub_1AF611270(v4, a2, v4);
    }

    if (v3 == 3)
    {
      sub_1AF609FC4();
      v4 = MEMORY[0x1E69E76D8];
      return sub_1AF611270(v4, a2, v4);
    }

LABEL_8:
    v5 = (v3 << 8) | 3;
    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    *(v6 + 16) = 5;
    return swift_willThrow();
  }

  if ((a1 & 0xF) == 0)
  {
    sub_1AF61591C();
    v4 = MEMORY[0x1E69E7508];
    return sub_1AF611270(v4, a2, v4);
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  sub_1AF6158C8();
  v4 = MEMORY[0x1E69E75F8];
  return sub_1AF611270(v4, a2, v4);
}

unint64_t sub_1AF611528()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x20)
    {
      v2 = result;
      result &= 0xFu;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      if (result == 3)
      {
        return bswap64(sub_1AF60C130());
      }

      v3 = 0;
      v5 = ((result << 8) | 3);
      v4 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v4 = 3;
      v5 = &unk_1F24FFB40;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF611614(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  a3();
  result = sub_1AF611114(a4, a1, a4, a2);
  if (!v4)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1AF611684(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  a3();
  result = sub_1AF611114(a4, a1, a4, a2);
  if (!v4)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1AF6116F4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  a3();
  result = sub_1AF611114(a4, a1, a4, a2);
  if (!v4)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1AF611764(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  a3();
  result = sub_1AF611114(a4, a1, a4, a2);
  if (!v4)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1AF6117D4(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 48))();
  if (!v2)
  {
    if ((result & 0xE0) == 0x40)
    {
      if (result != 64)
      {
        return sub_1AF611414(result, a1);
      }
    }

    else
    {
      v5 = result & 0xE0;
      sub_1AF60A3B8();
      swift_allocError();
      *v6 = &unk_1F24F7C00;
      *(v6 + 8) = v5;
      *(v6 + 16) = 3;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1AF611888()
{
  v2 = v0[3];
  v3 = v0[4];
  sub_1AF441150(v0, v2);
  result = (*(v3 + 8))(0, v2, v3);
  if (!v1)
  {
    if ((result & 0xE0) == 0x40)
    {
      v5 = result & 0xF;
      if (result == 64 || v5 == 2)
      {
        return result != 64;
      }

      v8 = 0;
      v9 = ((v5 << 8) | 2);
      v10 = 5;
    }

    else
    {
      v8 = result & 0xE0;
      v10 = 3;
      v9 = &unk_1F24FF5D8;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v7 = v9;
    *(v7 + 8) = v8;
    *(v7 + 16) = v10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF611974()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x40)
    {
      if (result == 64)
      {
        return result != 64;
      }

      v2 = result & 0xF;
      if (v2 == 3)
      {
        return result != 64;
      }

      v3 = 0;
      v5 = ((v2 << 8) | 3);
      v4 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v4 = 3;
      v5 = &unk_1F24FFB68;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF611A2C()
{
  result = sub_1AF60B7E8();
  if (!v0)
  {
    if ((result & 0xE0) == 0x40)
    {
      if (result == 64)
      {
        return result != 64;
      }

      v2 = result & 0xF;
      if (v2 == 2)
      {
        return result != 64;
      }

      v3 = 0;
      v5 = ((v2 << 8) | 2);
      v4 = 5;
    }

    else
    {
      v3 = result & 0xE0;
      v4 = 3;
      v5 = &unk_1F24FFB90;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v3;
    *(v6 + 16) = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF611AE4()
{
  v2 = v0[3];
  v3 = v0[4];
  sub_1AF441150(v0, v2);
  result = (*(v3 + 8))(0, v2, v3);
  if (!v1)
  {
    if ((result & 0xE0) == 0x40)
    {
      v5 = result & 0xF;
      if (result == 64 || v5 == 3)
      {
        return result != 64;
      }

      v8 = 0;
      v9 = ((v5 << 8) | 3);
      v10 = 5;
    }

    else
    {
      v8 = result & 0xE0;
      v10 = 3;
      v9 = &unk_1F24FFBB8;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v7 = v9;
    *(v7 + 8) = v8;
    *(v7 + 16) = v10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF611BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 48))(a2, a4);
  if (!v4)
  {
    if ((result & 0xE0) == 0x40)
    {
      v7 = result;
      if (result == 64)
      {
        return v7 != 64;
      }

      v8 = result;
      v9 = sub_1AF609E7C(a3);
      if (!v9)
      {
        return v7 != 64;
      }

      v10 = v8 & 0xF;
      if (v10 == v9)
      {
        return v7 != 64;
      }

      v11 = 0;
      v13 = (v9 | (v10 << 8));
      v12 = 5;
    }

    else
    {
      v11 = result & 0xE0;
      v12 = 3;
      v13 = &unk_1F24FDEB0;
    }

    sub_1AF60A3B8();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = v11;
    *(v14 + 16) = v12;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF611CBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v18 - v14;
  swift_getAssociatedConformanceWitness();
  v16 = v18[3];
  result = sub_1AF611270(AssociatedTypeWitness, a1, AssociatedTypeWitness);
  if (!v16)
  {
    (*(v8 + 16))(v11, v15, AssociatedTypeWitness);
    (*(a3 + 40))(v11, a2, a3);
    return (*(v8 + 8))(v15, AssociatedTypeWitness);
  }

  return result;
}

float sub_1AF611E70(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AF61648C();
  v6 = sub_1AF611BD0(MEMORY[0x1E69E6448], a1, MEMORY[0x1E69E6448], a2);
  if (!v2)
  {
    result = 0.0;
    if (v6)
    {
      sub_1AF611CBC(a1, MEMORY[0x1E69E6448], v5, &v8);
      return v8;
    }
  }

  return result;
}

double sub_1AF611F08(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AF6164E0();
  v6 = sub_1AF611BD0(MEMORY[0x1E69E63B0], a1, MEMORY[0x1E69E63B0], a2);
  if (!v2)
  {
    result = 0.0;
    if (v6)
    {
      sub_1AF611CBC(a1, MEMORY[0x1E69E63B0], v5, &v8);
      return v8;
    }
  }

  return result;
}

uint64_t sub_1AF611FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[4] = a7;
  v19[3] = a5;
  v16 = sub_1AF585714(v19);
  (*(*(a5 - 8) + 16))(v16, a2, a5);
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a1;
  v18[7] = a2;
  v18[8] = a3;
  v18[9] = a4;
  sub_1AF60B0F8(v19, sub_1AF61528C, v18, a6);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);
}

uint64_t sub_1AF612098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 16))
    {
      v11 = sub_1AF60A738(a4, a4, a6);
      if (v11)
      {
        return sub_1AF6121A0(a2, a3, a4, v11, a5, a7, v12);
      }
    }
  }

  type metadata accessor for _BinaryDecoder();
  sub_1AF6152B4();

  return sub_1AFDFD708();
}

uint64_t sub_1AF6121A0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  (*(a5 + 64))(v15, a2, a5);
  type metadata accessor for _BinaryDecoder.UnkeyedStore();
  swift_allocObject();
  result = sub_1AF60F3C8(v15, a1);
  if (!v7)
  {
    sub_1AF60F6E0(a4, a7);

    v13 = nullsub_106();
    v15[0] = v14;
    (*(*(a3 - 8) + 16))(a6, v15, a3, v13);
  }

  return result;
}

uint64_t sub_1AF61231C@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  result = sub_1AF60ECD0(a1, a1);
  if (!v2)
  {
    v5 = sub_1AF60B630();
    if (!v5)
    {
      sub_1AF60B7E8();
    }

    *a2 = v5 == 0;
  }

  return result;
}

uint64_t sub_1AF6123B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  a7(&var1, a4, a1);
  if (!v7)
  {
    v8 = var1;
  }

  return v8 & 1;
}

uint64_t sub_1AF6123F8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_1AF60ECD0(a1, a1);
  if (!v2)
  {
    v5 = sub_1AF6104C0();

    *a2 = v5 & 1;
  }

  return result;
}

uint64_t sub_1AF612458(uint64_t a1)
{
  result = sub_1AF612490(a1, &v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1AF612490@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  result = sub_1AF60ECD0(a1, v7);
  if (!v2)
  {
    v9 = sub_1AF60E0D8(0x60u);
    v10 = sub_1AF60BF5C(v9);
    v12 = v11;
    sub_1AFDFCF58();
    sub_1AF6155B0();
    v13 = sub_1AFDFCF28();
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      sub_1AF439ED8(v10, v12);

      *a2 = v15;
      a2[1] = v16;
    }

    else
    {
      sub_1AF60A3B8();
      swift_allocError();
      *v17 = xmmword_1AFE505D0;
      *(v17 + 16) = 6;
      swift_willThrow();

      return sub_1AF439ED8(v10, v12);
    }
  }

  return result;
}

double sub_1AF612624(uint64_t a1)
{
  sub_1AF61265C(a1, &v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1AF61265C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = sub_1AF60ECD0(a1, a1);
  if (!v2)
  {
    if (sub_1AF611974())
    {
      v5 = sub_1AF60C130();

      *a2 = bswap64(v5);
    }

    else
    {

      *a2 = 0;
    }
  }

  return result;
}

float sub_1AF6126F4(uint64_t a1)
{
  sub_1AF61272C(a1, &v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1AF61272C@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  result = sub_1AF60ECD0(a1, a1);
  if (!v2)
  {
    if (sub_1AF611A2C())
    {
      v5 = sub_1AF60C78C();

      *a2 = bswap32(v5);
    }

    else
    {

      *a2 = 0;
    }
  }

  return result;
}

void *sub_1AF6127C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *(*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  result = a8(&v10, a4, a1, a7);
  if (!v8)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1AF612804@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1AF60ECD0(a1, a1);
  if (!v3)
  {
    v7 = a2();

    *a3 = v7;
  }

  return result;
}

uint64_t sub_1AF612868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  result = sub_1AF6128A4(a1, a7, &v9);
  if (!v7)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1AF6128A4@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _BYTE *a3@<X8>)
{
  result = sub_1AF60ECD0(a1, a1);
  if (!v3)
  {
    v7 = a2();

    *a3 = v7;
  }

  return result;
}

uint64_t sub_1AF612908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  result = sub_1AF612944(a1, a7, &v9);
  if (!v7)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1AF612944@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _WORD *a3@<X8>)
{
  result = sub_1AF60ECD0(a1, a1);
  if (!v3)
  {
    v7 = a2();

    *a3 = v7;
  }

  return result;
}

uint64_t sub_1AF6129A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  result = sub_1AF6129E4(a1, a7, &v9);
  if (!v7)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1AF6129E4@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _DWORD *a3@<X8>)
{
  result = sub_1AF60ECD0(a1, a1);
  if (!v3)
  {
    v7 = a2();

    *a3 = v7;
  }

  return result;
}

uint64_t sub_1AF612A48@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1AF60ECD0(a1, a1);
  if (!v3)
  {
    v7 = a2();

    *a3 = v7;
  }

  return result;
}

uint64_t sub_1AF612ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1AF60ECD0(a2, a2);
  if (!v8)
  {
    v15 = result;
    v14 = type metadata accessor for _BinaryDecoder.DataStream();
    sub_1AF611FA0(a4, &v15, a4, a3, v14, a7, &off_1F2531128, a8);
  }

  return result;
}

uint64_t sub_1AF612BBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a2;
  v31 = a5;
  v29 = a6;
  v33 = *a1;
  v8 = *(v33 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v29 - v15;
  v17 = *(v9 + 16);
  v34 = v18;
  v17(&v29 - v15, v18, v8, v14);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = a3;
  v32 = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3 = sub_1AF422608(0, a3[2] + 1, 1, a3);
    v37 = a3;
  }

  v21 = a3[2];
  v20 = a3[3];
  if (v21 >= v20 >> 1)
  {
    a3 = sub_1AF422608(v20 > 1, v21 + 1, 1, a3);
    v37 = a3;
  }

  (v17)(v11, v16, v8);
  sub_1AF61F7C0(v21, v11, &v37, v8, *(v33 + 88));
  (*(v9 + 8))(v16, v8);
  v22 = v35;
  v24 = sub_1AF60ECD0(v34, v23);
  if (v22)
  {
  }

  v25 = v24;
  type metadata accessor for _BinaryDecoder.KeyedStore();
  v36[3] = type metadata accessor for _BinaryDecoder.DataStream();
  v36[4] = &off_1F2531128;
  v36[0] = v25;
  swift_allocObject();
  v26 = sub_1AF60D600(v36);
  v27 = v30;
  sub_1AF612EC4(v30);
  v36[0] = v27;
  v36[1] = a3;
  v36[2] = v26;
  type metadata accessor for _BinaryKeyedDecodingContainer();
  swift_getWitnessTable();
  sub_1AFDFE828();
}

uint64_t sub_1AF612EC4(uint64_t a1)
{

  MEMORY[0x1B2718E00](v2);
  if (*((*(a1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  return sub_1AFDFD4B8();
}

uint64_t sub_1AF612F78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v28 = a4;
  v29 = a2;
  v30 = *a1;
  v5 = *(v30 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v28 - v12;
  v14 = *(v6 + 16);
  v31 = v15;
  v14(&v28 - v12, v15, v5, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3 = sub_1AF422608(0, a3[2] + 1, 1, a3);
    v34 = a3;
  }

  v18 = a3[2];
  v17 = a3[3];
  if (v18 >= v17 >> 1)
  {
    a3 = sub_1AF422608(v17 > 1, v18 + 1, 1, a3);
    v34 = a3;
  }

  (v14)(v8, v13, v5);
  sub_1AF61F7C0(v18, v8, &v34, v5, *(v30 + 88));
  (*(v6 + 8))(v13, v5);
  v19 = v32;
  v21 = sub_1AF60ECD0(v31, v20);
  if (v19)
  {
  }

  v22 = v21;
  v33[3] = type metadata accessor for _BinaryDecoder.DataStream();
  v33[4] = &off_1F2531128;
  v33[0] = v22;
  type metadata accessor for _BinaryDecoder.UnkeyedStore();
  swift_allocObject();
  v23 = v29;
  v25 = sub_1AF60F3C8(v33, v29);

  MEMORY[0x1B2718E00](v26);
  if (*((*(v23 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v23 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  sub_1AFDFD4B8();
  v27 = v28;
  v28[3] = &type metadata for _BinaryUnkeyedDecodingContainer;
  v27[4] = sub_1AF615AE0();

  *v27 = a3;
  v27[1] = v23;
  v27[2] = v25;
  return result;
}

uint64_t sub_1AF6132F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1AF60ECD0(a1, a1);
  if (!v3)
  {
    v7 = result;
    v8 = *(a2 + 56);
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    v17 = type metadata accessor for _BinaryDecoder.DataStream();
    v18 = &off_1F2531128;
    *&v16 = v7;
    v13 = type metadata accessor for _BinaryDecoder();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E7CC0];
    *(v14 + 48) = MEMORY[0x1E69E7CC0];
    *(v14 + 64) = 0;
    *(v14 + 112) = v15;
    sub_1AF0FBA54(&v16, v14 + 72);
    *(v14 + 56) = v8;
    *(v14 + 16) = v9;
    *(v14 + 24) = v10;
    *(v14 + 32) = v11;
    *(v14 + 40) = v12;
    a3[3] = v13;
    a3[4] = sub_1AF6152B4();
    *a3 = v14;

    return sub_1AF0FBD8C(v11);
  }

  return result;
}

uint64_t sub_1AF61387C()
{
  result = sub_1AFDFEFC8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AF6138CC()
{
  result = sub_1AFDFEFD8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AF613974()
{
  result = sub_1AFDFF008();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AF6139C4()
{
  result = sub_1AFDFEFE8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AF613B04()
{
  result = sub_1AFDFF018();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AF613B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1AF613CCC()
{
  v2 = *(v0 + 16);
  result = sub_1AF61626C((v2 + 16));
  if (!v1)
  {
    ++*(v2 + 80);
  }

  return result;
}

uint64_t sub_1AF613D40(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(*(a2 + 16) + 80);
  *&v16 = 0x207865646E49;
  *(&v16 + 1) = 0xE600000000000000;
  v20 = v5;

  v6 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v6);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AF422608(0, v4[2] + 1, 1, v4);
  }

  v8 = v4[2];
  v7 = v4[3];
  if (v8 >= v7 >> 1)
  {
    v4 = sub_1AF422608(v7 > 1, v8 + 1, 1, v4);
  }

  v18 = &type metadata for _BinaryKey;
  v19 = sub_1AF60A364();
  v9 = swift_allocObject();
  *&v16 = v9;
  *(v9 + 16) = 0x207865646E49;
  *(v9 + 24) = 0xE600000000000000;
  *(v9 + 32) = v5;
  *(v9 + 40) = 0;
  v4[2] = v8 + 1;
  sub_1AF0FBA54(&v16, &v4[5 * v8 + 4]);
  type metadata accessor for _BinaryDecoder.KeyedStore();
  v11 = a1[5];
  v10 = a1[6];
  sub_1AF441150(a1 + 2, v11);
  (*(v10 + 64))(&v16, v11, v10);
  swift_allocObject();
  v12 = sub_1AF60D600(&v16);
  if (v15)
  {
  }

  v14 = v12;
  sub_1AF612EC4(*(a2 + 8));
  *&v16 = *(a2 + 8);
  *(&v16 + 1) = v4;
  v17 = v14;
  type metadata accessor for _BinaryKeyedDecodingContainer();
  swift_getWitnessTable();
  sub_1AFDFE828();
}

uint64_t sub_1AF613F98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *(*(a2 + 16) + 80);
  *&v22 = 0x207865646E49;
  *(&v22 + 1) = 0xE600000000000000;

  v8 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v8);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AF422608(0, v6[2] + 1, 1, v6);
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_1AF422608(v9 > 1, v10 + 1, 1, v6);
  }

  v23 = &type metadata for _BinaryKey;
  v24 = sub_1AF60A364();
  v11 = swift_allocObject();
  *&v22 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v7;
  *(v11 + 40) = 0;
  v6[2] = v10 + 1;
  sub_1AF0FBA54(&v22, &v6[5 * v10 + 4]);
  v12 = a1[5];
  v13 = a1[6];
  sub_1AF441150(a1 + 2, v12);
  (*(v13 + 64))(&v22, v12, v13);
  v14 = *(a2 + 8);
  type metadata accessor for _BinaryDecoder.UnkeyedStore();
  swift_allocObject();
  v15 = sub_1AF60F3C8(&v22, v14);
  if (v21)
  {
  }

  v17 = v15;
  v18 = *(a2 + 8);

  MEMORY[0x1B2718E00](v19);
  if (*((*(v18 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v18 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  sub_1AFDFD4B8();
  v20 = *(a2 + 8);
  a3[3] = &type metadata for _BinaryUnkeyedDecodingContainer;
  a3[4] = sub_1AF615AE0();

  *a3 = v6;
  a3[1] = v20;
  a3[2] = v17;
  return result;
}

uint64_t sub_1AF61428C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v6 + 40);
  v8 = *(v6 + 48);
  sub_1AF441150((v6 + 16), v7);
  v9 = a3(v7, v8);
  if (!v4)
  {
    ++*(v6 + 80);
  }

  return v9 & 1;
}

char *sub_1AF614304()
{
  v2 = *(v0 + 16);
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  sub_1AF441150((v2 + 16), v3);
  result = sub_1AF610200(v3, v4);
  if (!v1)
  {
    ++*(v2 + 80);
  }

  return result;
}

void sub_1AF614368()
{
  v2 = *(v0 + 16);
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  sub_1AF441150((v2 + 16), v3);
  sub_1AF611F08(v3, v4);
  if (!v1)
  {
    ++*(v2 + 80);
  }
}

void sub_1AF6143CC()
{
  v2 = *(v0 + 16);
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  sub_1AF441150((v2 + 16), v3);
  sub_1AF611E70(v3, v4);
  if (!v1)
  {
    ++*(v2 + 80);
  }
}

uint64_t sub_1AF61452C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v8 + 40);
  v10 = *(v8 + 48);
  sub_1AF441150((v8 + 16), v9);
  result = sub_1AF611614(v9, v10, a3, a4);
  if (!v5)
  {
    ++*(v8 + 80);
  }

  return result;
}

uint64_t sub_1AF6145EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v6 + 40);
  v8 = *(v6 + 48);
  sub_1AF441150((v6 + 16), v7);
  result = a3(v7, v8);
  if (!v4)
  {
    ++*(v6 + 80);
  }

  return result;
}

uint64_t sub_1AF614694(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v8 + 40);
  v10 = *(v8 + 48);
  sub_1AF441150((v8 + 16), v9);
  result = sub_1AF611684(v9, v10, a3, a4);
  if (!v5)
  {
    ++*(v8 + 80);
  }

  return result;
}

uint64_t sub_1AF614744(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v8 + 40);
  v10 = *(v8 + 48);
  sub_1AF441150((v8 + 16), v9);
  result = sub_1AF6116F4(v9, v10, a3, a4);
  if (!v5)
  {
    ++*(v8 + 80);
  }

  return result;
}

uint64_t sub_1AF6147F4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v8 + 40);
  v10 = *(v8 + 48);
  sub_1AF441150((v8 + 16), v9);
  result = sub_1AF611764(v9, v10, a3, a4);
  if (!v5)
  {
    ++*(v8 + 80);
  }

  return result;
}

uint64_t sub_1AF614904()
{
  result = sub_1AFDFEB48();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AF614954()
{
  result = sub_1AFDFEB58();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AF6149FC()
{
  result = sub_1AFDFEB88();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AF614A4C()
{
  result = sub_1AFDFEB68();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AF614B8C()
{
  result = sub_1AFDFEB98();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AF614BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1AF614D18()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1AF441150(v0 + 2, v1);
  if ((*(v2 + 8))(1, v1, v2))
  {
    return 0;
  }

  v4 = v0[5];
  v5 = v0[6];
  sub_1AF441150(v0 + 2, v4);
  (*(v5 + 8))(0, v4, v5);
  return 1;
}

double sub_1AF614E30()
{
  v2 = sub_1AF611AE4();
  if (!v1)
  {
    result = 0.0;
    if (v2)
    {
      v4 = v0[5];
      v5 = v0[6];
      sub_1AF441150(v0 + 2, v4);
      (*(v5 + 32))(&v6, MEMORY[0x1E69E76D8], MEMORY[0x1E69E7728], v4, v5);
      return COERCE_DOUBLE(bswap64(v6));
    }
  }

  return result;
}

float sub_1AF614ED4()
{
  v2 = sub_1AF611888();
  if (!v1)
  {
    result = 0.0;
    if (v2)
    {
      v4 = v0[5];
      v5 = v0[6];
      sub_1AF441150(v0 + 2, v4);
      (*(v5 + 32))(&v6, MEMORY[0x1E69E7668], MEMORY[0x1E69E76C0], v4, v5);
      return COERCE_FLOAT(bswap32(v6));
    }
  }

  return result;
}

unint64_t sub_1AF615168()
{
  result = qword_1ED72F8A0;
  if (!qword_1ED72F8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED72F8A0);
  }

  return result;
}

uint64_t sub_1AF6151E8(uint64_t a1)
{

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1 + 16);
  return a1;
}

unint64_t sub_1AF6152B4()
{
  result = qword_1ED72B938[0];
  if (!qword_1ED72B938[0])
  {
    type metadata accessor for _BinaryDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED72B938);
  }

  return result;
}

uint64_t sub_1AF61537C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a8;
  v22 = a9;
  v16 = sub_1AF585714(&v20);
  (*(*(a8 - 8) + 32))(v16, a1, a8);
  type metadata accessor for _BinaryDecoder();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 48) = MEMORY[0x1E69E7CC0];
  *(v17 + 64) = 0;
  *(v17 + 112) = v18;
  sub_1AF0FBA54(&v20, v17 + 72);
  *(v17 + 56) = a2;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  return v17;
}

void sub_1AF6154B8()
{
  if (!qword_1ED726CC8)
  {
    type metadata accessor for _BinaryDecoder.DataStream();
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726CC8);
    }
  }
}

uint64_t sub_1AF615540(uint64_t a1)
{
  v3 = *(v1 + 32);
  type metadata accessor for _KeyBox();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

unint64_t sub_1AF6155B0()
{
  result = qword_1ED72DF40;
  if (!qword_1ED72DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72DF40);
  }

  return result;
}

uint64_t sub_1AF615604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[2];
  v10 = v8[4];
  v11 = v8[5];
  v12 = v8[6];
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v11;
  v14[5] = v12;
  return sub_1AF60A740(v10, sub_1AF615670, v14, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

void *sub_1AF615670(void *result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = (v2 + *(v1[4] + 32));
  }

  else
  {
    v3 = 0;
  }

  if (result && v3)
  {
    if (v2)
    {
      v4 = v2 + *(v1[4] + 32) + v1[5];
    }

    else
    {
      v4 = 0;
    }

    return memmove(result, v3, v4 - v3);
  }

  return result;
}

uint64_t *sub_1AF6156AC(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t sub_1AF6158C8()
{
  result = qword_1EB63CB00;
  if (!qword_1EB63CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63CB00);
  }

  return result;
}

unint64_t sub_1AF61591C()
{
  result = qword_1EB630910;
  if (!qword_1EB630910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630910);
  }

  return result;
}

void sub_1AF615970()
{
  if (!qword_1EB63CB08)
  {
    sub_1AF615A08(255, &unk_1EB638948, type metadata accessor for _KeyBox);
    type metadata accessor for _BinaryDecoder.DataStream();
    sub_1AF615A6C();
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63CB08);
    }
  }
}

void sub_1AF615A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF445B90();
    v7 = a3(a1, &type metadata for StringCodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF615A6C()
{
  result = qword_1EB63CB10;
  if (!qword_1EB63CB10)
  {
    sub_1AF615A08(255, &unk_1EB638948, type metadata accessor for _KeyBox);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63CB10);
  }

  return result;
}

unint64_t sub_1AF615AE0()
{
  result = qword_1ED727338[0];
  if (!qword_1ED727338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED727338);
  }

  return result;
}

void sub_1AF615B4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7508]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AF615BA0()
{
  result = qword_1ED726C18;
  if (!qword_1ED726C18)
  {
    sub_1AF615B4C(255, &unk_1ED726C20, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726C18);
  }

  return result;
}

void *sub_1AF615C14(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for VFXScene.ScriptFunction(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

uint64_t sub_1AF615CA4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

void *assignWithCopy for _BinaryUnkeyedDecodingContainer(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for _BinaryUnkeyedDecodingContainer(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t initializeWithCopy for _BinaryDecoder.SingleValueStore(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t assignWithTake for _BinaryDecoder.SingleValueStore(uint64_t a1, uint64_t a2)
{
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for _BinaryDecoder.SingleValueStore(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _BinaryDecoder.SingleValueStore(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for _BinarySingleValueDecodingContainer(uint64_t a1)
{

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1 + 16);
}

uint64_t initializeWithCopy for _BinarySingleValueDecodingContainer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  v6 = v5;
  v7 = **(v5 - 8);

  v7(a1 + 16, a2 + 16, v6);
  return a1;
}

void *assignWithCopy for _BinarySingleValueDecodingContainer(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  sub_1AF6156AC(a1 + 2, a2 + 2);
  return a1;
}

uint64_t assignWithTake for _BinarySingleValueDecodingContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1 + 16);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for _BinarySingleValueDecodingContainer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _BinarySingleValueDecodingContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF616104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[5];
  v9 = v3[6];
  sub_1AF441150(v3 + 2, v8);
  result = (*(v9 + 8))(0, v8, v9);
  if (!v4)
  {
    if ((result & 0xE0) != 0x20)
    {
      v15 = result & 0xE0;
      sub_1AF60A3B8();
      swift_allocError();
      *v13 = a1;
      *(v13 + 8) = v15;
      v14 = 3;
      goto LABEL_7;
    }

    v11 = result;
    result &= 0xFu;
    if ((v11 & 0x10) == 0)
    {
      return result;
    }

    if (result)
    {
      v12 = result << 8;
      sub_1AF60A3B8();
      swift_allocError();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = 5;
LABEL_7:
      *(v13 + 16) = v14;
      return swift_willThrow();
    }

    v16 = v3[5];
    v17 = v3[6];
    sub_1AF441150(v3 + 2, v16);
    (*(v17 + 32))(&v18, a2, a3, v16, v17);
    return v18;
  }

  return result;
}

uint64_t sub_1AF61626C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = a1[3];
  v7 = a1[4];
  v8 = sub_1AF441150(a1, v6);
  return sub_1AF611FA0(*(v5 + 8), v8, *(v5 + 8), v4, v6, v2, v7, v3);
}

unint64_t sub_1AF6162E8()
{
  result = qword_1ED726898;
  if (!qword_1ED726898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726898);
  }

  return result;
}

unint64_t sub_1AF61633C()
{
  result = qword_1ED722ED0;
  if (!qword_1ED722ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722ED0);
  }

  return result;
}

unint64_t sub_1AF616390()
{
  result = qword_1ED7268C8;
  if (!qword_1ED7268C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7268C8);
  }

  return result;
}

unint64_t sub_1AF6163E4()
{
  result = qword_1EB63CB18;
  if (!qword_1EB63CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63CB18);
  }

  return result;
}

unint64_t sub_1AF616438()
{
  result = qword_1EB63CB20;
  if (!qword_1EB63CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63CB20);
  }

  return result;
}

unint64_t sub_1AF61648C()
{
  result = qword_1ED7232C0;
  if (!qword_1ED7232C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7232C0);
  }

  return result;
}

unint64_t sub_1AF6164E0()
{
  result = qword_1EB63CB28[0];
  if (!qword_1EB63CB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB63CB28);
  }

  return result;
}

void *sub_1AF61657C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AFDFC218();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v9)
    {
      v10 = (0xFFFFFFFF00000001 * a1) >> 32;
    }

    else
    {
      v10 = BYTE6(a2);
    }

    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_9:
    v11 = sub_1AF87B1D8(v10, 0);
    sub_1AFDFC168();
    sub_1AF439ED8(a1, a2);
    (*(v5 + 8))(v8, v4);
    return v11;
  }

  if (v9 == 2)
  {
    v10 = *(a1 + 24) - *(a1 + 16);
    if (v10)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  sub_1AF439ED8(a1, a2);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AF6166D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 17);
  v11 = *(v3 + 24);
  v10 = *(v3 + 32);
  type metadata accessor for _BinaryEncoder();
  v12 = swift_allocObject();
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 72) = 0;
  *(v12 + 80) = v13;
  *(v12 + 16) = v8;
  *(v12 + 17) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v13;
  *(v12 + 40) = v10;

  v14 = sub_1AF616B4C(a1, a2, a3);

  if (v4)
  {
    v15 = sub_1AFDFE2F8();
    swift_allocError();
    v17 = v16;
    sub_1AF620190();
    v17[3] = a2;
    v18 = sub_1AF585714(v17);
    (*(*(a2 - 8) + 16))(v18, a1, a2);
    v19 = v4;
    sub_1AFDFE2A8();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B30], v15);
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1AF6168B4()
{

  return swift_deallocClassInstance();
}

void *sub_1AF616918()
{
  v1 = v0;
  v2 = v0[7];
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[10];
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[10] = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1AFC0D9E0(v4);
    }

    v6 = v4[2] - 1;
    v11 = *&v4[2 * v6 + 4];
    v4[2] = v6;
    v1[10] = v4;
    ObjectType = swift_getObjectType();
    v12 = v2;
    MEMORY[0x1EEE9AC00](ObjectType, v8);
    v10 = v11;
    (*(*(v3 + 8) + 16))(sub_1AF620174);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_1AF616A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  result = (*(a3 + 16))(a1, ObjectType, a3);
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF616ADC()
{
  sub_1AF616918();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF616B30()
{
  if (*(v0 + 72))
  {
    return *(v0 + 72);
  }

  result = v0;
  *(v0 + 72) = v0;
  return result;
}

uint64_t sub_1AF616B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1AF616B30();
  v10 = type metadata accessor for _BinaryEncoder.DataStore();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = xmmword_1AFE6A6C0;
  v12 = v11 + 24;
  if (sub_1AF740D94(0x30316E6962786676, 0xE800000000000000)[2])
  {
    sub_1AFDFC198();
  }

  sub_1AF6170D0(*(v5 + 72), a1, v11, v10, a2, &off_1F25315F8, a3);
  if (!v4)
  {
    v12 = *(v11 + 24);
    sub_1AF43C9F0(v12, *(v11 + 32));
  }

  return v12;
}

uint64_t sub_1AF616C70()
{
  v1 = v0;
  v2 = type metadata accessor for _BinaryEncoder.KeyedStore();
  v3 = sub_1AF616B30();
  swift_allocObject();
  v4 = sub_1AF6176BC(v3);
  sub_1AF61F538(v4, v1, v2, &off_1F25315A8);
  type metadata accessor for _BinaryKeyedEncodingContainer();

  swift_getWitnessTable();
  sub_1AFDFE9B8();
}

uint64_t sub_1AF616DA4@<X0>(void *a1@<X8>)
{
  v3 = sub_1AF616B30();
  v4 = *(v1 + 48);
  type metadata accessor for _BinaryEncoder.UnkeyedStore();
  v5 = swift_allocObject();
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 56) = 0;
  *(v5 + 64) = v6;
  *(v5 + 73) = 0;
  *(v5 + 16) = v3;
  *(v5 + 72) = v4;
  *(v1 + 48) = 0;
  sub_1AF61F474(v5, v1, &off_1F2531558);
  v7 = *(v1 + 72);
  v8 = *(v1 + 32);
  a1[3] = &type metadata for _BinaryUnkeyedEncodingContainer;
  a1[4] = sub_1AF620048();

  *a1 = v7;
  a1[1] = v5;
  a1[2] = v8;
  return result;
}

uint64_t sub_1AF616E68@<X0>(void *a1@<X8>)
{
  v3 = sub_1AF616B30();
  type metadata accessor for _BinaryEncoder.SingleValueDataStore();
  v4 = swift_allocObject();
  *(v4 + 40) = 0;
  *(v4 + 16) = v3;
  *(v4 + 24) = xmmword_1AFE6A6C0;

  sub_1AF61F474(v5, v1, &off_1F25315F8);

  v6 = *(v1 + 32);
  v7 = *(v1 + 72);
  a1[3] = &type metadata for _BinarySingleValueEncodingContainer;
  a1[4] = sub_1AF61FFF4();

  *a1 = v6;
  a1[1] = v4;
  a1[2] = v7;
  return result;
}

uint64_t sub_1AF616F14()
{
  swift_getMetatypeMetadata();
  if (sub_1AFDFCFA8() == 0xD00000000000001ALL && 0x80000001AFF2D3C0 == v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1AFDFEE28();
  }

  return v1 & 1;
}

uint64_t sub_1AF61702C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a4;
  v9[3] = a3;
  v7 = sub_1AF585714(v9);
  (*(*(a3 - 8) + 16))(v7, v4, a3);
  a1(v9);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
}

uint64_t sub_1AF6170D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 24) && sub_1AF609364(a5, a5, a7))
  {
    *(a1 + 48) = 1;
  }

  v15[3] = type metadata accessor for _BinaryEncoder();
  v15[4] = sub_1AF6200B4();
  v15[0] = a1;

  sub_1AFDFCCE8();
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v15);
  if (!v7)
  {
    v12 = *(a1 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 80) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1AFC0D9E0(v12);
      v12 = isUniquelyReferenced_nonNull_native;
    }

    --v12[2];
    *(a1 + 80) = v12;
    v15[0] = a3;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v14);
    (*(*(a6 + 8) + 16))(sub_1AF62010C);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AF61728C(void *a1)
{
  v2 = a1[4];
  sub_1AF441150(a1, a1[3]);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1AF43C9F0(v4, v3);
  sub_1AF61657C(v4, v3);
  (*(v2 + 32))();
}

uint64_t sub_1AF617320(char a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
  v3 = v2;
  v5[3] = v2;
  v5[4] = sub_1AF61F3F8();
  LOBYTE(v5[0]) = a1;
  sub_1AF441150(v5, v3);
  sub_1AFDFC188();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

uint64_t sub_1AF617438(uint64_t result)
{
  if (*(result + 16))
  {
    return sub_1AFDFC198();
  }

  return result;
}

uint64_t sub_1AF617484()
{
  sub_1AF439ED8(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1AF61756C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for _BinaryEncoder.DataStore();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v1 + 24) = xmmword_1AFE6A6C0;
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_1AF6175DC()
{
  result = *(v0 + 40);
  if (!result)
  {
    v2 = sub_1AF61756C();

    result = v2;
    *(v0 + 40) = v2;
  }

  return result;
}

uint64_t sub_1AF617614()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for _BinaryEncoder.DataStore();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v1 + 24) = xmmword_1AFE6A6C0;
    *(v0 + 48) = v1;
  }

  return v1;
}

uint64_t sub_1AF617684()
{
  result = *(v0 + 56);
  if (!result)
  {
    v2 = sub_1AF617614();

    result = v2;
    *(v0 + 56) = v2;
  }

  return result;
}

uint64_t sub_1AF6176BC(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = MEMORY[0x1E69E7CC8];
  *(v1 + 72) = 0;
  *(v1 + 16) = a1;
  type metadata accessor for _BinaryEncoder.KeyedStore();
  v3 = 0;
  if (*(a1 + 17) == 1)
  {
    type metadata accessor for _BinaryEncoder();
    v3 = sub_1AF616F14() ^ 1;
  }

  *(v1 + 72) = v3 & 1;
  return v1;
}

uint64_t sub_1AF617784(uint64_t a1, void (*a2)(uint64_t, _UNKNOWN **), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = v5;
  v11 = sub_1AF617614();
  v12 = v11;
  v13 = *(v11 + 24);
  v14 = *(v11 + 32);
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v18 = *(v13 + 24) - *(v13 + 16);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v16 = BYTE6(v14);
    v17 = (0xFFFFFFFF00000001 * v13) >> 32;
    if (v15)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }
  }

  a2(v11, &off_1F25315F8);
  if (v6)
  {
  }

  v20 = *(v12 + 24);
  v21 = *(v12 + 32);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v26 = v20 + 16;
      v24 = *(v20 + 16);
      v25 = *(v26 + 8);

      v23 = v25 - v24;
    }

    else
    {

      v23 = 0;
    }
  }

  else if (v22)
  {

    v23 = (0xFFFFFFFF00000001 * v20) >> 32;
  }

  else
  {

    v23 = BYTE6(v21);
  }

  v27 = v23 - v18;
  v28 = sub_1AF6175DC();
  result = sub_1AF6178F0(v28, v7, a1, v27, a4, a5);
  ++*(v7 + 24);
  return result;
}

uint64_t sub_1AF6178F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v15 + 72) == 1)
  {
    (*(v11 + 16))(v14, a3, a5, v12);
    v16 = sub_1AFDFF448();
    if (v17)
    {
      v18 = sub_1AF609B28();
      v19 = v18;
      v27 = a4;
      if (v18 < 0x10)
      {
        v22 = v18 | 0x20;
        sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
        v26 = v25;
        v30 = v25;
        v31 = sub_1AF61F3F8();
        LOBYTE(v29[0]) = v22;
        v28 = *sub_1AF441150(v29, v26);

        sub_1AFDFC188();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
      }

      else
      {
        sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
        v24 = v23;
        v30 = v23;
        v31 = sub_1AF61F3F8();
        LOBYTE(v29[0]) = 50;
        v28 = *sub_1AF441150(v29, v24);

        sub_1AFDFC188();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
        LODWORD(v29[0]) = bswap32(v19);
        sub_1AF61AE18(v29, v29 + 4);

        if (v6)
        {
          return (*(v11 + 8))(v14, a5);
        }
      }

      LODWORD(a4) = v27;
    }

    else
    {
      sub_1AF617DEC(v16);
      if (v6)
      {
        return (*(v11 + 8))(v14, a5);
      }
    }

    (*(v11 + 8))(v14, a5);
  }

  else
  {
    v30 = a5;
    v31 = a6;
    v20 = sub_1AF585714(v29);
    (*(v11 + 16))(v20, a3, a5);
    sub_1AF617CAC(v29);
    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
    if (v6)
    {
      return result;
    }
  }

  return sub_1AF617DEC(a4);
}

uint64_t sub_1AF617CAC(void *a1)
{
  v2 = v1;
  sub_1AF441150(a1, a1[3]);
  v4 = sub_1AFDFF448();
  if ((v5 & 1) == 0)
  {
    return sub_1AF617DEC(v4);
  }

  sub_1AF441150(a1, a1[3]);
  v6 = sub_1AFDFF428();
  v8 = v6;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    LODWORD(v10) = sub_1AFDFD118();
  }

  else if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    LODWORD(v10) = v6;
  }

  sub_1AF6185A4(96, v10);
  if (v2)
  {

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    if (sub_1AF740D94(v8, v9)[2])
    {
      sub_1AFDFC198();
    }

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1AF617DEC(unsigned int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 <= 0xFE)
  {
    return sub_1AF619F98(a1);
  }

  if (a1 >= 0xFFFF)
  {
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v7 = v6;
    v9 = v6;
    v10 = sub_1AF61F3F8();
    LOBYTE(v8[0]) = 50;
    sub_1AF441150(v8, v7);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
    LODWORD(v8[0]) = bswap32(a1);
    v5 = v8 + 4;
  }

  else
  {
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v4 = v3;
    v9 = v3;
    v10 = sub_1AF61F3F8();
    LOBYTE(v8[0]) = 49;
    sub_1AF441150(v8, v4);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
    LOWORD(v8[0]) = bswap32(a1) >> 16;
    v5 = v8 + 2;
  }

  sub_1AF61AE18(v8, v5);
}

uint64_t sub_1AF618054(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 0xFE)
  {
    return sub_1AF61AAC4(a1, a2, a3, sub_1AF61591C, MEMORY[0x1E69E7508]);
  }

  if (a1 > 0xFFFE)
  {
    return sub_1AF61A994(a1, a2, a3, sub_1AF608F54, MEMORY[0x1E69E7668]);
  }

  return sub_1AF61AB5C(a1, a2, a3, sub_1AF6158C8, MEMORY[0x1E69E75F8]);
}

uint64_t sub_1AF6180EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1AF441194(a3, v15);
  sub_1AF441150(v15, v16);
  v7 = sub_1AFDFF428();
  v9 = v8;
  sub_1AF441150(v15, v16);
  v10 = sub_1AFDFF448();
  v12 = v11;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v15);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = *(v4 + 64);
  *(v4 + 64) = 0x8000000000000000;
  sub_1AF855020(a1, a2, v7, v9, v10, v12 & 1, isUniquelyReferenced_nonNull_native);

  *(v4 + 64) = v15[0];
  return result;
}

uint64_t sub_1AF6181EC(void *a1)
{
  v3 = v2;
  v4 = *(v1 + 64);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v41 = v3;
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = *(v4 + 56);
      v13 = *(v4 + 48) + 32 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v36 = *(v13 + 24);

      v35 = *(v12 + 16 * v11);
      swift_unknownObjectRetain();
      v39[0] = v14;
      v39[1] = v15;
      v39[2] = v16;
      v40 = v36;
      v38 = v35;
      v17 = sub_1AF60A364();
      v18 = v41;
      sub_1AF617784(v39, sub_1AF61FFBC, v37, &type metadata for _BinaryKey, v17);
      v3 = v18;
      if (v18)
      {
        break;
      }

      v7 &= v7 - 1;
      swift_unknownObjectRelease();

      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_5:
  while (1)
  {
    v10 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9++ + 72);
    if (v7)
    {
      v41 = v3;
      goto LABEL_8;
    }
  }

  if (*(v34 + 72))
  {
    v19 = -32;
  }

  else
  {
    v19 = -64;
  }

  v20 = a1[3];
  v21 = a1[4];
  sub_1AF441150(a1, v20);
  LODWORD(v38) = *(v34 + 24);
  BYTE4(v38) = v19;
  result = (*(v21 + 16))(sub_1AF61FEEC, v37, v20, v21);
  if (!v3)
  {
    v23 = sub_1AF6175DC();
    v24 = a1[4];
    sub_1AF441150(a1, a1[3]);
    v26 = *(v23 + 24);
    v25 = *(v23 + 32);
    sub_1AF43C9F0(v26, v25);
    sub_1AF61657C(v26, v25);
    (*(v24 + 32))();

    v27 = sub_1AF617684();
    v28 = a1[3];
    v29 = a1[4];
    sub_1AF441150(a1, v28);
    v31 = *(v27 + 24);
    v30 = *(v27 + 32);
    sub_1AF43C9F0(v31, v30);
    v32 = sub_1AF61657C(v31, v30);
    (*(v29 + 32))(v32, v28, v29);
  }

  return result;
}

uint64_t sub_1AF6184F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = swift_getObjectType();
  v9 = *(a2 + 8);
  v12[3] = v8;
  v12[4] = v9;
  v12[0] = a1;
  v10 = *(a4 + 16);
  swift_unknownObjectRetain();
  v10(v12, ObjectType, a4);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
}

uint64_t sub_1AF6185A4(char a1, unsigned int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 < 0x1F)
  {
    v4 = a2 | a1;
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v8 = v7;
    v11 = v7;
    v12 = sub_1AF61F3F8();
    LOBYTE(v10[0]) = v4;
    sub_1AF441150(v10, v8);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
  }

  else
  {
    v3 = a1 | 0x1F;
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v6 = v5;
    v11 = v5;
    v12 = sub_1AF61F3F8();
    LOBYTE(v10[0]) = v3;
    sub_1AF441150(v10, v6);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
    sub_1AF617DEC(a2);
  }
}

uint64_t sub_1AF6187B4(uint64_t a1, unsigned int a2)
{
  v4 = v3;
  if (*(v2 + 73) == 1)
  {
    if (a2 < 0x1F)
    {

      sub_1AF618D0C();
      sub_1AFDFC198();
    }

    else
    {

      sub_1AF618D0C();
      sub_1AFDFC198();
      if (a2 >= 0xFF)
      {
        if (a2 > 0xFFFE)
        {
          sub_1AF61A3AC(a2);
        }

        else
        {
          sub_1AF61A564(a2);
        }
      }

      else
      {
        sub_1AF61A71C(a2);
      }
    }
  }

  *(v2 + 73) = 1;
  v6 = sub_1AF618D0C();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v11 = *(v7 + 24) - *(v7 + 16);
      if (a2 >= 0x1F)
      {
        goto LABEL_10;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      if (a2 > 0x1E)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = (0xFFFFFFFF00000001 * v7) >> 32;
    if (v9)
    {
      LODWORD(v11) = v10;
    }

    else
    {
      LODWORD(v11) = BYTE6(v8);
    }

    if (a2 >= 0x1F)
    {
LABEL_10:

      sub_1AFDFC198();
      if (a2 >= 0xFF)
      {
        if (a2 > 0xFFFE)
        {
          sub_1AF61A3AC(a2);
        }

        else
        {
          sub_1AF61A564(a2);
        }
      }

      else
      {
        sub_1AF61A71C(a2);
      }

      v4 = v3;

      if (v3)
      {
        return result;
      }

      goto LABEL_26;
    }
  }

  sub_1AFDFC198();

LABEL_26:
  v13 = *(v6 + 24);
  v14 = *(v6 + 32);
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(v13 + 24) - *(v13 + 16);
    }

    else
    {
      LODWORD(v17) = 0;
    }
  }

  else
  {
    v16 = (0xFFFFFFFF00000001 * v13) >> 32;
    if (v15)
    {
      LODWORD(v17) = v16;
    }

    else
    {
      LODWORD(v17) = BYTE6(v14);
    }
  }

  v18 = sub_1AF618DB4();
  result = sub_1AF61952C(v18, v11, v17);
  if (!v4)
  {
    ++*(v2 + 56);
    *(v2 + 73) = 0;
  }

  return result;
}

uint64_t sub_1AF618A58(char a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  sub_1AF617684();
  sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
  v3 = v2;
  v5[3] = v2;
  v5[4] = sub_1AF61F3F8();
  LOBYTE(v5[0]) = a1;
  sub_1AF441150(v5, v3);
  sub_1AFDFC188();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

uint64_t sub_1AF618B74(uint64_t a1)
{
  result = sub_1AF617684();
  if (*(a1 + 16))
  {
    return sub_1AFDFC198();
  }

  return result;
}

uint64_t sub_1AF618BC4()
{

  return v0;
}

uint64_t sub_1AF618BF4()
{
  sub_1AF618BC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF618C9C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for _BinaryEncoder.DataStore();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v1 + 24) = xmmword_1AFE6A6C0;
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1AF618D0C()
{
  result = *(v0 + 32);
  if (!result)
  {
    v2 = sub_1AF618C9C();

    result = v2;
    *(v0 + 32) = v2;
  }

  return result;
}

uint64_t sub_1AF618D44()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for _BinaryEncoder.DataStore();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v1 + 24) = xmmword_1AFE6A6C0;
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t sub_1AF618DB4()
{
  result = *(v0 + 48);
  if (!result)
  {
    v2 = sub_1AF618D44();

    result = v2;
    *(v0 + 48) = v2;
  }

  return result;
}

uint64_t sub_1AF618DEC(uint64_t a1)
{
  if (*(a1 + 73) == 1)
  {

    sub_1AF618D0C();
    sub_1AFDFC198();
  }

  else
  {
    *(a1 + 73) = 1;
    v4 = sub_1AF618D0C();
    result = sub_1AF619150(v4, &v8);
    if (!v1)
    {
      v5 = v8;
      v6 = v9;
      v7 = sub_1AF618DB4();
      result = sub_1AF61952C(v7, v5, v6);
      ++*(a1 + 56);
      *(a1 + 73) = 0;
    }
  }

  return result;
}

uint64_t sub_1AF618ED8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (*(a1 + 73) != 1)
  {
    *(a1 + 73) = 1;

    v9 = sub_1AF618D0C();

    sub_1AF61926C(v9, a2, a3, &v15);
    if (!v4)
    {
      v10 = v15;
      v11 = v16;
      v12 = sub_1AF618DB4();
      sub_1AF61952C(v12, v10, v11);
      ++*(a1 + 56);
      *(a1 + 73) = 0;
    }

    return swift_bridgeObjectRelease_n();
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    LODWORD(v8) = sub_1AFDFD118();
  }

  else if ((a3 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a3) & 0xF;
  }

  else
  {
    LODWORD(v8) = a2;
  }

  swift_bridgeObjectRetain_n();

  sub_1AF6187B4(96, v8);
  if (v3)
  {

    return swift_bridgeObjectRelease_n();
  }

  v14 = sub_1AF740D94(a2, a3);
  sub_1AF618D0C();
  if (v14[2])
  {
    sub_1AFDFC198();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF619070(void (*a1)(uint64_t *))
{
  if (*(v1 + 73))
  {
    v11 = type metadata accessor for _BinaryEncoder.UnkeyedStore();
    v12 = &off_1F2531530;
    v9 = v1;

    a1(&v9);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v9);
  }

  else
  {
    *(v1 + 73) = 1;
    v5 = sub_1AF618D0C();
    result = sub_1AF619410(v5, a1, v1, &v9);
    if (!v2)
    {
      v6 = v9;
      v7 = v10;
      v8 = sub_1AF618DB4();
      result = sub_1AF61952C(v8, v6, v7);
      ++*(v1 + 56);
      *(v1 + 73) = 0;
    }
  }

  return result;
}

uint64_t sub_1AF619150@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v4 + 24) - *(v4 + 16);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = (0xFFFFFFFF00000001 * v4) >> 32;
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  sub_1AF618D0C();
  sub_1AFDFC198();

  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v15 = *(v11 + 24) - *(v11 + 16);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v14 = BYTE6(v12);
    v15 = (0xFFFFFFFF00000001 * v11) >> 32;
    if (!v13)
    {
      v15 = v14;
    }
  }

  *a2 = v9;
  a2[1] = v15;
  return result;
}

uint64_t sub_1AF61926C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v14 = *(v9 + 24) - *(v9 + 16);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v12 = BYTE6(v10);
    v13 = (0xFFFFFFFF00000001 * v9) >> 32;
    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    LODWORD(v15) = sub_1AFDFD118();
  }

  else if ((a3 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a3) & 0xF;
  }

  else
  {
    LODWORD(v15) = a2;
  }

  sub_1AF6187B4(96, v15);
  if (v4)
  {

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v17 = sub_1AF740D94(a2, a3);
    sub_1AF618D0C();
    if (v17[2])
    {
      sub_1AFDFC198();
    }

    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    v20 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v24 = v18 + 16;
        v22 = *(v18 + 16);
        v23 = *(v24 + 8);

        v21 = v23 - v22;
      }

      else
      {

        v21 = 0;
      }
    }

    else if (v20)
    {

      v21 = (0xFFFFFFFF00000001 * v18) >> 32;
    }

    else
    {

      v21 = BYTE6(v19);
    }

    *a4 = v14;
    a4[1] = v21;
  }

  return result;
}

uint64_t sub_1AF619410@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v14 = *(v9 + 24) - *(v9 + 16);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v12 = BYTE6(v10);
    v13 = (0xFFFFFFFF00000001 * v9) >> 32;
    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }
  }

  v21[3] = type metadata accessor for _BinaryEncoder.UnkeyedStore();
  v21[4] = &off_1F2531530;
  v21[0] = a3;

  a2(v21);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
  if (!v4)
  {
    v16 = *(a1 + 24);
    v17 = *(a1 + 32);
    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 == 2)
      {
        v20 = *(v16 + 24) - *(v16 + 16);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v19 = BYTE6(v17);
      v20 = (0xFFFFFFFF00000001 * v16) >> 32;
      if (!v18)
      {
        v20 = v19;
      }
    }

    *a4 = v14;
    a4[1] = v20;
  }

  return result;
}

uint64_t sub_1AF61952C(uint64_t a1, int a2, int a3)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v3 = a3 - a2;
  if ((a3 - a2) <= 0xFE)
  {
    return sub_1AF619F98(a3 - a2);
  }

  sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
  v6 = v5;
  v8[3] = v5;
  v8[4] = sub_1AF61F3F8();
  if (v3 >= 0xFFFF)
  {
    LOBYTE(v8[0]) = 50;
    sub_1AF441150(v8, v6);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
    LODWORD(v8[0]) = bswap32(v3);
    v7 = v8 + 4;
  }

  else
  {
    LOBYTE(v8[0]) = 49;
    sub_1AF441150(v8, v6);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
    LOWORD(v8[0]) = bswap32(v3) >> 16;
    v7 = v8 + 2;
  }

  sub_1AF61AE18(v8, v7);
}

uint64_t sub_1AF619780(void *a1)
{
  v3 = v1;
  if (*(v1 + 72))
  {
    v5 = 0x80;
  }

  else
  {
    v5 = -96;
  }

  v6 = a1[3];
  v7 = a1[4];
  sub_1AF441150(a1, v6);
  v27 = *(v1 + 56);
  v28 = v5;
  result = (*(v7 + 16))(sub_1AF61FEEC, v26, v6, v7);
  if (!v2)
  {
    if (*(v1 + 72) == 1)
    {
      v9 = sub_1AF618DB4();
      v10 = a1[4];
      sub_1AF441150(a1, a1[3]);
      v12 = *(v9 + 24);
      v11 = *(v9 + 32);
      sub_1AF43C9F0(v12, v11);
      sub_1AF61657C(v12, v11);
      (*(v10 + 32))();
    }

    v25 = a1;
    v13 = *(*(v3 + 64) + 16);

    v31 = v14;
    if (v13)
    {
      v15 = (v14 + 40);
      do
      {
        v16 = *v15;
        ObjectType = swift_getObjectType();
        v18 = v3;
        v19 = sub_1AF618C9C();
        v29 = type metadata accessor for _BinaryEncoder.DataStore();
        v30 = &off_1F25315D0;
        v26[0] = v19;
        v20 = *(v16 + 16);
        swift_unknownObjectRetain();
        v20(v26, ObjectType, v16);
        swift_unknownObjectRelease();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
        v15 += 2;
        --v13;
        v3 = v18;
      }

      while (v13);
    }

    v21 = sub_1AF618D0C();
    v22 = v25[4];
    sub_1AF441150(v25, v25[3]);
    v24 = *(v21 + 24);
    v23 = *(v21 + 32);
    sub_1AF43C9F0(v24, v23);
    sub_1AF61657C(v24, v23);
    (*(v22 + 32))();
  }

  return result;
}

uint64_t sub_1AF619A00()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF619A74(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for BinaryEncoder.Options(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for BinaryEncoder.Options(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ShaderCompilationContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderCompilationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1AF619C90(uint64_t a1)
{
  result = sub_1AF618D0C();
  if (*(a1 + 16))
  {
    return sub_1AFDFC198();
  }

  return result;
}

uint64_t sub_1AF619CE4()
{
  if (*(v0 + 73) == 1)
  {
    sub_1AF618D0C();
    return sub_1AFDFC198();
  }

  else
  {
    *(v0 + 73) = 1;
    v3 = sub_1AF618D0C();
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 == 2)
      {
        v8 = *(v4 + 24) - *(v4 + 16);
      }

      else
      {
        LODWORD(v8) = 0;
      }
    }

    else
    {
      v7 = (0xFFFFFFFF00000001 * v4) >> 32;
      if (v6)
      {
        LODWORD(v8) = v7;
      }

      else
      {
        LODWORD(v8) = BYTE6(v5);
      }
    }

    sub_1AFDFC198();
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v11 == 2)
      {
        v13 = *(v9 + 24) - *(v9 + 16);
      }

      else
      {
        LODWORD(v13) = 0;
      }
    }

    else
    {
      v12 = (0xFFFFFFFF00000001 * v9) >> 32;
      if (v11)
      {
        LODWORD(v13) = v12;
      }

      else
      {
        LODWORD(v13) = BYTE6(v10);
      }
    }

    v14 = sub_1AF618DB4();
    result = sub_1AF61952C(v14, v8, v13);
    if (!v1)
    {
      ++*(v0 + 56);
      *(v0 + 73) = 0;
    }
  }

  return result;
}

uint64_t sub_1AF619E24(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1AF441150(a1, v1);
  return (*(v2 + 24))(0, v1, v2);
}

uint64_t sub_1AF619E80(char a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v1 = a1 & 1 | 0x10;
  sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
  v3 = v2;
  v5[3] = v2;
  v5[4] = sub_1AF61F3F8();
  LOBYTE(v5[0]) = v1;
  sub_1AF441150(v5, v3);
  sub_1AFDFC188();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

uint64_t sub_1AF619F98(unsigned __int8 a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 < 0x10u)
  {
    v2 = a1 | 0x20;
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v7 = v6;
    v9 = v6;
    v10 = sub_1AF61F3F8();
    LOBYTE(v8[0]) = v2;
    sub_1AF441150(v8, v7);
    sub_1AFDFC188();
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  }

  else
  {
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v4 = v3;
    v9 = v3;
    v10 = sub_1AF61F3F8();
    LOBYTE(v8[0]) = 48;
    sub_1AF441150(v8, v4);
    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
    return sub_1AF61ABF4(a1);
  }
}

uint64_t sub_1AF61A18C(unint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 < 0x10)
  {
    v2 = a1 | 0x20;
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v6 = v5;
    v10 = v5;
    v11 = sub_1AF61F3F8();
    LOBYTE(v8) = v2;
    sub_1AF441150(&v8, v6);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v8);
  }

  else
  {
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v4 = v3;
    v10 = v3;
    v11 = sub_1AF61F3F8();
    LOBYTE(v8) = 51;
    sub_1AF441150(&v8, v4);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v8);
    v8 = bswap64(a1);
    sub_1AF61AE18(&v8, v9);
  }
}

uint64_t sub_1AF61A3AC(unsigned int a1)
{
  if (*(v1 + 73) == 1)
  {
    v18 = type metadata accessor for _BinaryEncoder.UnkeyedStore();
    v19 = &off_1F2531530;
    v17[0] = v1;

    sub_1AF61B13C(v17, a1, sub_1AF608F54, MEMORY[0x1E69E7668]);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
  }

  else
  {
    *(v1 + 73) = 1;
    v5 = sub_1AF618D0C();
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(v6 + 24) - *(v6 + 16);
      }

      else
      {
        LODWORD(v10) = 0;
      }
    }

    else
    {
      v9 = (0xFFFFFFFF00000001 * v6) >> 32;
      if (v8)
      {
        LODWORD(v10) = v9;
      }

      else
      {
        LODWORD(v10) = BYTE6(v7);
      }
    }

    v18 = type metadata accessor for _BinaryEncoder.UnkeyedStore();
    v19 = &off_1F2531530;
    v17[0] = v1;

    sub_1AF61B13C(v17, a1, sub_1AF608F54, MEMORY[0x1E69E7668]);
    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
    if (!v2)
    {
      v11 = *(v5 + 24);
      v12 = *(v5 + 32);
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 == 2)
        {
          v15 = *(v11 + 24) - *(v11 + 16);
        }

        else
        {
          LODWORD(v15) = 0;
        }
      }

      else
      {
        v14 = (0xFFFFFFFF00000001 * v11) >> 32;
        if (v13)
        {
          LODWORD(v15) = v14;
        }

        else
        {
          LODWORD(v15) = BYTE6(v12);
        }
      }

      v16 = sub_1AF618DB4();
      result = sub_1AF61952C(v16, v10, v15);
      ++*(v1 + 56);
      *(v1 + 73) = 0;
    }
  }

  return result;
}

uint64_t sub_1AF61A564(int a1)
{
  if (*(v1 + 73) == 1)
  {
    v18 = type metadata accessor for _BinaryEncoder.UnkeyedStore();
    v19 = &off_1F2531530;
    v17[0] = v1;

    sub_1AF61B240(v17, a1, sub_1AF6158C8, MEMORY[0x1E69E75F8]);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
  }

  else
  {
    *(v1 + 73) = 1;
    v5 = sub_1AF618D0C();
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(v6 + 24) - *(v6 + 16);
      }

      else
      {
        LODWORD(v10) = 0;
      }
    }

    else
    {
      v9 = (0xFFFFFFFF00000001 * v6) >> 32;
      if (v8)
      {
        LODWORD(v10) = v9;
      }

      else
      {
        LODWORD(v10) = BYTE6(v7);
      }
    }

    v18 = type metadata accessor for _BinaryEncoder.UnkeyedStore();
    v19 = &off_1F2531530;
    v17[0] = v1;

    sub_1AF61B240(v17, a1, sub_1AF6158C8, MEMORY[0x1E69E75F8]);
    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
    if (!v2)
    {
      v11 = *(v5 + 24);
      v12 = *(v5 + 32);
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 == 2)
        {
          v15 = *(v11 + 24) - *(v11 + 16);
        }

        else
        {
          LODWORD(v15) = 0;
        }
      }

      else
      {
        v14 = (0xFFFFFFFF00000001 * v11) >> 32;
        if (v13)
        {
          LODWORD(v15) = v14;
        }

        else
        {
          LODWORD(v15) = BYTE6(v12);
        }
      }

      v16 = sub_1AF618DB4();
      result = sub_1AF61952C(v16, v10, v15);
      ++*(v1 + 56);
      *(v1 + 73) = 0;
    }
  }

  return result;
}

uint64_t sub_1AF61A71C(unsigned __int8 a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(v1 + 73) == 1)
  {
    if (a1 < 0x10u)
    {
      v10 = a1 | 0x20;

      sub_1AF618D0C();
      v19[72] = v10;
      sub_1AFDFC198();
    }

    else
    {

      sub_1AF618D0C();
      v19[32] = 48;
      sub_1AFDFC198();
      v18 = a1;
      sub_1AF61AEC4(&v18, v19);
    }
  }

  *(v1 + 73) = 1;
  v4 = sub_1AF618D0C();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    v8 = (0xFFFFFFFF00000001 * v5) >> 32;
    if (v7)
    {
      LODWORD(v9) = v8;
    }

    else
    {
      LODWORD(v9) = BYTE6(v6);
    }

LABEL_12:
    if (a1 >= 0x10u)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v9 = *(v5 + 24) - *(v5 + 16);
    goto LABEL_12;
  }

  LODWORD(v9) = 0;
  if (a1 > 0xFu)
  {
LABEL_13:
    v19[112] = 48;

    sub_1AFDFC198();
    v18 = a1;
    sub_1AF61AEC4(&v18, v19);

    if (v2)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_16:
  v19[152] = a1 | 0x20;

  sub_1AFDFC198();

LABEL_17:
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v16 = *(v12 + 24) - *(v12 + 16);
    }

    else
    {
      LODWORD(v16) = 0;
    }
  }

  else
  {
    v15 = (0xFFFFFFFF00000001 * v12) >> 32;
    if (v14)
    {
      LODWORD(v16) = v15;
    }

    else
    {
      LODWORD(v16) = BYTE6(v13);
    }
  }

  v17 = sub_1AF618DB4();
  result = sub_1AF61952C(v17, v9, v16);
  if (!v2)
  {
    ++*(v1 + 56);
    *(v1 + 73) = 0;
  }

  return result;
}

uint64_t sub_1AF61A994(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = a1;
  v8 = a2;
  v9 = a5;
  v10 = a3;
  v11 = a4();
  v12 = &v6;
  return (*(v10 + 16))(sub_1AF61FF0C, v7, v8, v10);
}

uint64_t sub_1AF61AA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = a1;
  v8 = a2;
  v9 = a5;
  v10 = a3;
  v11 = a4();
  v12 = &v6;
  return (*(v10 + 16))(sub_1AF61FF0C, v7, v8, v10);
}

uint64_t sub_1AF61AAC4(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = a1;
  v8 = a2;
  v9 = a5;
  v10 = a3;
  v11 = a4();
  v12 = &v6;
  return (*(v10 + 16))(sub_1AF61FF0C, v7, v8, v10);
}

uint64_t sub_1AF61AB5C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = a1;
  v8 = a2;
  v9 = a5;
  v10 = a3;
  v11 = a4();
  v12 = &v6;
  return (*(v10 + 16))(sub_1AF61FF0C, v7, v8, v10);
}

uint64_t sub_1AF61ABF4(char a1)
{
  v2 = sub_1AF87B1D8(1, 0);
  *(v2 + 32) = a1;
  if (v2[2])
  {
    sub_1AFDFC198();
  }
}

uint64_t sub_1AF61AC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFE498();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = v5;
  v13 = sub_1AF61FF58();
  sub_1AFD555D4(v12, sub_1AF61FF30, v17, a3, v13, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v16);
  return (*(v10 + 8))(v12, a3);
}

uint64_t sub_1AF61AE18(_BYTE *a1, _BYTE *a2)
{
  if (a1 && (v3 = a2 - a1, a2 != a1))
  {
    v6 = sub_1AF87B1D8(a2 - a1, 0);
    v7 = v6;
    if (a2 > a1)
    {
      memmove(v6 + 4, a1, v3);
    }

    if (v7[2])
    {
      goto LABEL_4;
    }
  }

  else if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_4:
    sub_1AFDFC198();
  }
}

uint64_t sub_1AF61AEC4(_BYTE *a1, _BYTE *a2)
{
  if (a1 && (v3 = a2 - a1, a2 != a1))
  {
    v7 = sub_1AF87B1D8(a2 - a1, 0);
    v4 = v7;
    if (a2 > a1)
    {
      memmove(v7 + 4, a1, v3);
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF618D0C();
  if (v4[2])
  {
    sub_1AFDFC198();
  }
}

uint64_t sub_1AF61AF6C(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1 && (v13 = a2 - a1, a2 != a1))
  {
    v16 = sub_1AF87B1D8(a2 - a1, 0);
    v14 = v16;
    if (a2 > a1)
    {
      memmove(v16 + 4, a1, v13);
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  (*(a6 + 32))(v14, a4, a6);

  if (v8)
  {
    *a8 = v8;
  }

  return result;
}

uint64_t sub_1AF61B044(void *a1, unint64_t a2)
{
  v13 = a2;
  if (a2 <= 0xF)
  {
    v10 = a2;
    v11 = a1[3];
    v12 = a1[4];
    sub_1AF441150(a1, v11);
    return (*(v12 + 24))(v10 | 0x20u, v11, v12);
  }

  else
  {
    v3 = a1[3];
    v4 = a1[4];
    sub_1AF441150(a1, v3);
    result = (*(v4 + 24))(51, v3, v4);
    if (!v2)
    {
      v7 = a1[3];
      v8 = a1[4];
      sub_1AF441150(a1, v7);
      v9 = sub_1AF61633C();
      return sub_1AF61AC90(&v13, v7, MEMORY[0x1E69E7360], v8, v9);
    }
  }

  return result;
}

uint64_t sub_1AF61B13C(void *a1, unsigned int a2, uint64_t (*a3)(void), uint64_t a4)
{
  v17 = a2;
  if (a2 <= 0xF)
  {
    v15 = a1[3];
    v16 = a1[4];
    sub_1AF441150(a1, v15);
    return (*(v16 + 24))(a2 | 0x20, v15, v16);
  }

  else
  {
    v7 = a1[3];
    v8 = a1[4];
    sub_1AF441150(a1, v7);
    result = (*(v8 + 24))(50, v7, v8);
    if (!v4)
    {
      v11 = a1[3];
      v12 = a1[4];
      sub_1AF441150(a1, v11);
      v13 = a3();
      return sub_1AF61AC90(&v17, v11, a4, v12, v13);
    }
  }

  return result;
}

uint64_t sub_1AF61B240(void *a1, int a2, uint64_t (*a3)(void), uint64_t a4)
{
  v18 = a2;
  if (a2 >= 0x100u || a2 > 0xFu)
  {
    v8 = a1[3];
    v9 = a1[4];
    sub_1AF441150(a1, v8);
    result = (*(v9 + 24))(49, v8, v9);
    if (!v4)
    {
      v11 = a1[3];
      v12 = a1[4];
      sub_1AF441150(a1, v11);
      v13 = a3();
      return sub_1AF61AC90(&v18, v11, a4, v12, v13);
    }
  }

  else
  {
    v14 = a1[3];
    v15 = a1[4];
    sub_1AF441150(a1, v14);
    return (*(v15 + 24))(a2 | 0x20u, v14, v15);
  }

  return result;
}

uint64_t sub_1AF61B350(void *a1, unsigned int a2)
{
  v13 = a2;
  if (a2 < 0x10)
  {
    v11 = a1[3];
    v12 = a1[4];
    sub_1AF441150(a1, v11);
    return (*(v12 + 24))(a2 | 0x20, v11, v12);
  }

  else
  {
    v3 = a1[3];
    v4 = a1[4];
    sub_1AF441150(a1, v3);
    result = (*(v4 + 24))(50, v3, v4);
    if (!v2)
    {
      v7 = a1[3];
      v8 = a1[4];
      sub_1AF441150(a1, v7);
      v9 = sub_1AF608F54();
      return sub_1AF61AC90(&v13, v7, MEMORY[0x1E69E7668], v8, v9);
    }
  }

  return result;
}

uint64_t sub_1AF61B448(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v40 = a6;
  v8 = *(a6 + 8);
  v44 = *(*(v8 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v38 - v18;
  v45 = v20;
  v21 = *(v20 + 16);
  v39 = a2;
  v21(&v38 - v18, a2, a4, v17);
  if (sub_1AFDFDF88())
  {
    swift_getAssociatedConformanceWitness();
    sub_1AFDFF158();
    sub_1AFDFEDF8();
    v22 = sub_1AFDFCDB8();
    v23 = *(v45 + 8);
    v23(v14, a4);
    if (v22)
    {
      v41 = v19;
LABEL_11:
      v23(v41, a4);
      goto LABEL_15;
    }
  }

  if (sub_1AFDFDF78() >= 8)
  {
    v46 = -1;
    v24 = sub_1AFDFDF88();
    v41 = v19;
    v38 = v8;
    v25 = sub_1AFDFDF78();
    if (v24)
    {
      if (v25 <= 8)
      {
        swift_getAssociatedConformanceWitness();
        sub_1AFDFF158();
        sub_1AFDFEDF8();
        v19 = v41;
        v26 = sub_1AFDFCDA8();
        (*(v45 + 8))(v14, a4);
        if ((v26 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if (v25 < 9)
    {
      v19 = v41;
LABEL_13:
      sub_1AFDFDF68();
      goto LABEL_14;
    }

    sub_1AF6162E8();
    sub_1AFDFDF38();
    v19 = v41;
    v27 = sub_1AFDFCDB8();
    v23 = *(v45 + 8);
    v23(v14, a4);
    if (v27)
    {
      goto LABEL_11;
    }
  }

LABEL_14:
  v28 = sub_1AFDFDF68();
  (*(v45 + 8))(v19, a4);
  if (v28 <= 0xFu)
  {
    v36 = v43[3];
    v37 = v43[4];
    sub_1AF441150(v43, v36);
    return (*(v37 + 24))(v28 | 0x20u, v36, v37);
  }

LABEL_15:
  v29 = v43;
  v30 = v43[3];
  v31 = v43[4];
  sub_1AF441150(v43, v30);
  v32 = v42;
  result = sub_1AF609E7C(a4);
  if (!v32)
  {
    (*(v31 + 24))(result | 0x30, v30, v31);
    v34 = v29[3];
    v35 = v29[4];
    sub_1AF441150(v29, v34);
    return sub_1AF61AC90(v39, v34, a4, v35, v40);
  }

  return result;
}

uint64_t sub_1AF61B90C(void *a1, char a2, float a3)
{
  v8 = a1[3];
  v7 = a1[4];
  sub_1AF441150(a1, v8);
  v9 = *(v7 + 24);
  if (a3 == 0.0)
  {
    return v9(64, v8, v7);
  }

  if (a2)
  {
    v11 = 83;
  }

  else
  {
    v11 = 66;
  }

  result = v9(v11, v8, v7);
  if (!v3)
  {
    v12 = a1[3];
    v13 = a1[4];
    sub_1AF441150(a1, v12);
    v15 = a3;
    v14 = sub_1AF608F54();
    return sub_1AF61AC90(&v15, v12, MEMORY[0x1E69E7668], v13, v14);
  }

  return result;
}

uint64_t sub_1AF61BA00(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a3;
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v30 = &v30 - v11;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a7;
  v17 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v17, v18);
  swift_getAssociatedConformanceWitness();
  sub_1AFDFF148();
  sub_1AFDFEDB8();
  v19 = v35;
  v20 = sub_1AFDFCE58();
  (*(v12 + 8))(v16, a5);
  v22 = v19[3];
  v21 = v19[4];
  sub_1AF441150(v19, v22);
  if (v20)
  {
    return (*(v21 + 24))(64, v22, v21);
  }

  v24 = v36;
  result = sub_1AF609E7C(a5);
  if (v34)
  {
    if (v24)
    {
      return result;
    }

    (*(v21 + 24))((result + 1) | 0x50u, v22, v21);
  }

  else
  {
    if (v24)
    {
      return result;
    }

    (*(v21 + 24))(result | 0x40, v22, v21);
  }

  v25 = v19[3];
  v26 = v19[4];
  sub_1AF441150(v19, v25);
  v27 = v30;
  (*(v31 + 32))(a5, v31);
  v28 = v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1AF61AC90(v27, v25, v28, v26, AssociatedConformanceWitness);
  return (*(v32 + 8))(v27, v28);
}

uint64_t sub_1AF61BDA4(float a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 == 0.0)
  {
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v3 = v2;
    v8 = v2;
    v9 = sub_1AF61F3F8();
    LOBYTE(v7[0]) = 64;
    sub_1AF441150(v7, v3);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  }

  else
  {
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v5 = v4;
    v8 = v4;
    v9 = sub_1AF61F3F8();
    LOBYTE(v7[0]) = 66;
    sub_1AF441150(v7, v5);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
    LODWORD(v7[0]) = bswap32(LODWORD(a1));
    sub_1AF61AE18(v7, v7 + 4);
  }
}

uint64_t sub_1AF61BFB8(uint64_t a1, uint64_t a2, float a3)
{
  v9 = a3;
  v5 = sub_1AF61648C();
  v7[2] = a1;
  v7[3] = MEMORY[0x1E69E6448];
  v7[4] = a2;
  v7[5] = v5;
  v7[6] = &v9;
  v8 = 0;
  return (*(a2 + 16))(sub_1AF62021C, v7, a1, a2);
}

uint64_t sub_1AF61C054(double a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(*(v1 + 16) + 16) != 1)
  {
    if (*(v1 + 73) == 1)
    {

      sub_1AF618D0C();
      if (a1 == 0.0)
      {
LABEL_7:
        sub_1AFDFC198();
      }

      sub_1AFDFC198();
      v23 = bswap64(*&a1);
      v22 = &v24;
LABEL_39:
      sub_1AF61AEC4(&v23, v22);
    }

    *(v1 + 73) = 1;
    v15 = sub_1AF618D0C();
    v16 = *(v15 + 24);
    v17 = *(v15 + 32);
    v18 = v17 >> 62;
    if ((v17 >> 62) <= 1)
    {
      v19 = (0xFFFFFFFF00000001 * v16) >> 32;
      if (v18)
      {
        LODWORD(v10) = v19;
      }

      else
      {
        LODWORD(v10) = BYTE6(v17);
      }

      if (a1 == 0.0)
      {
        goto LABEL_22;
      }

LABEL_46:

      sub_1AFDFC198();
      v23 = bswap64(*&a1);
      sub_1AF61AEC4(&v23, &v24);

      if (v2)
      {
        return result;
      }

LABEL_23:
      v11 = *(v15 + 24);
      v12 = *(v15 + 32);
      v13 = v12 >> 62;
      if ((v12 >> 62) <= 1)
      {
        if (!v13)
        {
          goto LABEL_16;
        }

        goto LABEL_25;
      }

LABEL_26:
      if (v13 == 2)
      {
        v14 = *(v11 + 24) - *(v11 + 16);
      }

      else
      {
        LODWORD(v14) = 0;
      }

      goto LABEL_35;
    }

    if (v18 == 2)
    {
      v10 = *(v16 + 24) - *(v16 + 16);
      if (a1 != 0.0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      if (a1 != 0.0)
      {
        goto LABEL_46;
      }
    }

LABEL_22:

    sub_1AFDFC198();

    goto LABEL_23;
  }

  v4 = a1;
  if (*(v1 + 73) == 1)
  {

    sub_1AF618D0C();
    if (v4 == 0.0)
    {
      goto LABEL_7;
    }

    sub_1AFDFC198();
    LODWORD(v23) = bswap32(LODWORD(v4));
    v22 = (&v23 + 4);
    goto LABEL_39;
  }

  *(v1 + 73) = 1;
  v5 = sub_1AF618D0C();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(v6 + 24) - *(v6 + 16);
      if (v4 != 0.0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      if (v4 != 0.0)
      {
        goto LABEL_43;
      }
    }

LABEL_13:

    sub_1AFDFC198();

    goto LABEL_14;
  }

  v9 = (0xFFFFFFFF00000001 * v6) >> 32;
  if (v8)
  {
    LODWORD(v10) = v9;
  }

  else
  {
    LODWORD(v10) = BYTE6(v7);
  }

  if (v4 == 0.0)
  {
    goto LABEL_13;
  }

LABEL_43:

  sub_1AFDFC198();
  LODWORD(v23) = bswap32(LODWORD(v4));
  sub_1AF61AEC4(&v23, &v23 + 4);

  if (v2)
  {
    return result;
  }

LABEL_14:
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    goto LABEL_26;
  }

  if (!v13)
  {
LABEL_16:
    LODWORD(v14) = BYTE6(v12);
    goto LABEL_35;
  }

LABEL_25:
  v14 = (0xFFFFFFFF00000001 * v11) >> 32;
LABEL_35:
  v20 = sub_1AF618DB4();
  result = sub_1AF61952C(v20, v10, v14);
  if (!v2)
  {
    ++*(v1 + 56);
    *(v1 + 73) = 0;
  }

  return result;
}

uint64_t sub_1AF61C424(double a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(*(v1 + 16) + 16) != 1)
  {
    if (a1 == 0.0)
    {
      goto LABEL_8;
    }

    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v10 = v9;
    v14 = v9;
    v15 = sub_1AF61F3F8();
    LOBYTE(v12) = 67;
    sub_1AF441150(&v12, v10);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v12);
    v12 = bswap64(*&a1);
    v8 = &v13;
LABEL_9:
    sub_1AF61AE18(&v12, v8);
  }

  v2 = a1;
  if (v2 != 0.0)
  {
    sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    v7 = v6;
    v14 = v6;
    v15 = sub_1AF61F3F8();
    LOBYTE(v12) = 83;
    sub_1AF441150(&v12, v7);

    sub_1AFDFC188();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v12);
    LODWORD(v12) = bswap32(LODWORD(v2));
    v8 = (&v12 + 4);
    goto LABEL_9;
  }

LABEL_8:
  sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
  v5 = v4;
  v14 = v4;
  v15 = sub_1AF61F3F8();
  LOBYTE(v12) = 64;
  sub_1AF441150(&v12, v5);

  sub_1AFDFC188();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v12);
}

uint64_t sub_1AF61C734(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 8);
  v6();
  if (*((v6)(a1, a2) + 16) == 1)
  {
    v7 = a3;
    *&v11 = v7;
    v8 = sub_1AF61648C();
    v13 = a1;
    v14 = MEMORY[0x1E69E6448];
    v15 = a2;
    v16 = v8;
    v17 = &v11;
    v18 = 1;
  }

  else
  {
    v11 = a3;
    v9 = sub_1AF6164E0();
    v13 = a1;
    v14 = MEMORY[0x1E69E63B0];
    v15 = a2;
    v16 = v9;
    v17 = &v11;
    v18 = 0;
  }

  return (*(a2 + 16))(sub_1AF62021C, v12, a1, a2);
}

uint64_t sub_1AF61C840(void *a1, unsigned int a2, int a3)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_1AF441150(a1, v7);
  if (a2 <= 0x1E)
  {
    return (*(v8 + 24))(a2 | a3, v7, v8);
  }

  result = (*(v8 + 24))(a3 | 0x1Fu, v7, v8);
  if (!v3)
  {
    v10 = a1[3];
    v11 = a1[4];
    sub_1AF441150(a1, v10);
    return sub_1AF618054(a2, v10, v11);
  }

  return result;
}

uint64_t sub_1AF61C918(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  if ((a3 & 0x1000000000000000) != 0)
  {
    LODWORD(v10) = sub_1AFDFD118();
  }

  else if ((a3 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a3) & 0xF;
  }

  else
  {
    LODWORD(v10) = a2;
  }

  v13[4] = v10;
  v14 = 96;
  (*(v9 + 16))(sub_1AF61FEEC, v13, v8, v9);
  if (v4)
  {
  }

  v12 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF740D94(a2, a3);
  (*(v12 + 32))();
}

uint64_t sub_1AF61CB30(char a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v6[16] = a1;
  return sub_1AF617784(a2, sub_1AF6209F0, v6, *(v4 + 80), *(v4 + 88));
}

uint64_t sub_1AF61CBA8(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 8);
  v8[16] = a3;
  return (*(v6 + 16))(sub_1AF620244, v8, ObjectType);
}

uint64_t sub_1AF61CC34(char a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, _UNKNOWN **))
{
  v8 = *a4;
  v10[16] = a1;
  return sub_1AF617784(a2, a8, v10, *(v8 + 80), *(v8 + 88));
}

uint64_t sub_1AF61CC9C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, _UNKNOWN **))
{
  v8 = *a4;
  v10[8] = a1;
  return sub_1AF617784(a2, a8, v10, *(v8 + 80), *(v8 + 88));
}

uint64_t sub_1AF61CD04(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, _UNKNOWN **))
{
  v8 = *a4;
  v10[4] = a1;
  return sub_1AF617784(a2, a8, v10, *(v8 + 80), *(v8 + 88));
}

uint64_t sub_1AF61CD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, _UNKNOWN **))
{
  v8 = *a4;
  v10[2] = a1;
  return sub_1AF617784(a2, a8, v10, *(v8 + 80), *(v8 + 88));
}

uint64_t sub_1AF61CDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7[3] = a2;
  v5 = *a5;
  v7[2] = a1;
  return sub_1AF617784(a3, sub_1AF6209D4, v7, *(v5 + 80), *(v5 + 88));
}

uint64_t sub_1AF61CE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v11[5] = a1;
  v9 = *(a2 + 8);
  v11[2] = a3;
  v11[3] = a4;
  return (*(v9 + 16))(sub_1AF61FFD8, v11, ObjectType);
}

uint64_t sub_1AF61CEE8(uint64_t a1, float a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *&v6[4] = a2;
  return sub_1AF617784(a1, sub_1AF620924, v6, *(v4 + 80), *(v4 + 88));
}

uint64_t sub_1AF61CF5C(uint64_t a1, double a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *&v6[2] = a2;
  return sub_1AF617784(a1, sub_1AF62097C, v6, *(v4 + 80), *(v4 + 88));
}

uint64_t sub_1AF61D00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a8;
  v42 = a3;
  v43 = a6;
  v44 = a5;
  v13 = *(a7 - 8);
  v40 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v39 - v19;
  v21 = *(v13 + 16);
  v45 = v22;
  v21(&v39 - v19, v18);
  v25 = *(a1 + 32);
  v24 = (a1 + 32);
  v23 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  v56 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_1AF422608(0, v23[2] + 1, 1, v23);
    *v24 = v23;
  }

  v39 = a10;
  v28 = v23[2];
  v27 = v23[3];
  if (v28 >= v27 >> 1)
  {
    v38 = sub_1AF422608(v27 > 1, v28 + 1, 1, v23);
    *v56 = v38;
  }

  (v21)(v15, v20, a7);
  v29 = v15;
  v30 = v56;
  sub_1AF61F7C0(v28, v29, v56, a7, v40);
  (*(v13 + 8))(v20, a7);
  v31 = *a4;
  v48 = *(*a4 + 80);
  v49 = v41;
  v50 = *(v31 + 88);
  v51 = v39;
  v52 = v43;
  v53 = v42;
  v54 = a4;
  v55 = v44;
  v32 = v46;
  result = sub_1AF617784(v45, sub_1AF620540, v47, v48, v50);
  if (!v32)
  {
    v34 = *v30;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v34;
    if ((v35 & 1) == 0)
    {
      v34 = sub_1AFC0DA80(v34);
      *v30 = v34;
    }

    v36 = v34[2];
    v37 = v36 - 1;
    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v34[5 * v36 - 1]);
    v34[2] = v37;
    *v30 = v34;
  }

  return result;
}

uint64_t sub_1AF61D29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v32 = a4;
  v33 = a5;
  v31 = a6;
  v29 = a3;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v28 - v15;
  v17 = *(v9 + 16);
  v30 = v18;
  v17(&v28 - v15, v14);
  v19 = v7 + 2;
  v20 = v7[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[2] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1AF422608(0, v20[2] + 1, 1, v20);
    *v19 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1AF422608(v22 > 1, v23 + 1, 1, v20);
    *v19 = v20;
  }

  (v17)(v11, v16, v8);
  sub_1AF61F7C0(v23, v11, v7 + 2, v8, *(v29 + 24));
  (*(v9 + 8))(v16, v8);
  v7[2] = v20;
  type metadata accessor for _BinaryEncoder.KeyedStore();
  v24 = *v7;
  swift_allocObject();
  v25 = sub_1AF6176BC(v24);
  v26 = v7[1];

  sub_1AF61D804(v26, v25, v30, &off_1F25315A8);
  v34 = v24;
  v35 = v25;
  v36 = v20;
  type metadata accessor for _BinaryKeyedEncodingContainer();
  swift_getWitnessTable();
  sub_1AFDFE9B8();

  return sub_1AF61D52C(v7);
}

uint64_t sub_1AF61D52C(uint64_t a1)
{
  v2 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1AFC0DA80(v2);
    *(a1 + 16) = v2;
  }

  v4 = v2[2];
  v5 = v4 - 1;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v2[5 * v4 - 1]);
  v2[2] = v5;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_1AF61D59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v28 = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v28 - v13;
  v15 = *(v7 + 16);
  v29 = v16;
  v15(&v28 - v13, v16, v6, v12);
  v30 = v4;
  v19 = v4[2];
  v18 = v4 + 2;
  v17 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1AF422608(0, v17[2] + 1, 1, v17);
    *v18 = v17;
  }

  v22 = v17[2];
  v21 = v17[3];
  if (v22 >= v21 >> 1)
  {
    v17 = sub_1AF422608(v21 > 1, v22 + 1, 1, v17);
    *v18 = v17;
  }

  (v15)(v9, v14, v6);
  sub_1AF61F7C0(v22, v9, v18, v6, *(v28 + 24));
  (*(v7 + 8))(v14, v6);
  v23 = v30;
  v30[2] = v17;
  v24 = *v23;
  type metadata accessor for _BinaryEncoder.UnkeyedStore();
  v25 = swift_allocObject();
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 56) = 0;
  *(v25 + 64) = MEMORY[0x1E69E7CC0];
  *(v25 + 16) = v24;
  *(v25 + 72) = 0;
  v26 = v23[1];

  sub_1AF61D804(v26, v25, v29, &off_1F2531558);
  a3[3] = &type metadata for _BinaryUnkeyedEncodingContainer;
  a3[4] = sub_1AF620048();

  *a3 = v24;
  a3[1] = v25;
  a3[2] = v17;
  return sub_1AF61D52C(v23);
}

uint64_t sub_1AF61D804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(*a1 + 80);
  v9 = v11;
  v7 = sub_1AF585714(v10);
  (*(*(v9 - 8) + 16))(v7, a3);
  sub_1AF6180EC(a2, a4, v10);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
}

uint64_t sub_1AF61D93C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  type metadata accessor for _BinaryEncoder.SingleValueDataStore();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = xmmword_1AFE6A6C0;
  *(v6 + 40) = 1;
  sub_1AF61D804(v2[1], v6, a1, &off_1F25315F8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 17);
  v9 = *(v5 + 24);
  v10 = *(v5 + 40);
  v11 = type metadata accessor for _BinaryEncoder();
  v12 = swift_allocObject();
  *(v12 + 48) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 72) = 0;
  *(v12 + 80) = v13;
  *(v12 + 16) = v7;
  *(v12 + 17) = v8;
  *(v12 + 24) = v9;
  *(v12 + 32) = v13;
  *(v12 + 40) = v10;
  *(v12 + 56) = v6;
  *(v12 + 64) = &off_1F25315F8;
  a2[3] = v11;
  a2[4] = sub_1AF6200B4();
  *a2 = v12;
}

uint64_t sub_1AF61E14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a3 + 56);
  *&v27 = 0x207865646E49;
  *(&v27 + 1) = 0xE600000000000000;
  v30 = v10;
  v11 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v11);

  v12 = *(a1 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 32) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1AF422608(0, v12[2] + 1, 1, v12);
    *(a1 + 32) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1AF422608(v14 > 1, v15 + 1, 1, v12);
  }

  v28 = &type metadata for _BinaryKey;
  v29 = sub_1AF60A364();
  v16 = swift_allocObject();
  *&v27 = v16;
  *(v16 + 16) = 0x207865646E49;
  *(v16 + 24) = 0xE600000000000000;
  *(v16 + 32) = v10;
  *(v16 + 40) = 0;
  v12[2] = v15 + 1;
  sub_1AF616568(&v27, &v12[5 * v15 + 4]);
  *(a1 + 32) = v12;
  v17 = type metadata accessor for _BinaryEncoder.UnkeyedStore();
  result = sub_1AF6170D0(a2, a5, a3, v17, a6, &off_1F2531558, a7);
  if (!v26)
  {
    v19 = *(a1 + 32);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 32) = v19;
    if ((v20 & 1) == 0)
    {
      v19 = sub_1AFC0DA80(v19);
      *(a1 + 32) = v19;
    }

    v21 = v19[2];
    v22 = v21 - 1;
    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v19[5 * v21 - 1]);
    v19[2] = v22;
    *(a1 + 32) = v19;
  }

  return result;
}

uint64_t sub_1AF61E328(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a3 + 56);
  *&v15 = 0x207865646E49;
  *(&v15 + 1) = 0xE600000000000000;
  v19 = v7;

  v8 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v8);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = sub_1AF422608(0, a4[2] + 1, 1, a4);
  }

  v10 = a4[2];
  v9 = a4[3];
  if (v10 >= v9 >> 1)
  {
    a4 = sub_1AF422608(v9 > 1, v10 + 1, 1, a4);
  }

  v17 = &type metadata for _BinaryKey;
  v18 = sub_1AF60A364();
  v11 = swift_allocObject();
  *&v15 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v7;
  *(v11 + 40) = 0;
  a4[2] = v10 + 1;
  sub_1AF616568(&v15, &a4[5 * v10 + 4]);
  type metadata accessor for _BinaryEncoder.KeyedStore();
  swift_allocObject();
  v12 = sub_1AF6176BC(a2);
  v13 = type metadata accessor for _BinaryEncoder.KeyedStore();

  sub_1AF61F6F0(v12, a3, v13, &off_1F25315A8);

  *&v15 = a2;
  *(&v15 + 1) = v12;
  v16 = a4;
  type metadata accessor for _BinaryKeyedEncodingContainer();
  swift_getWitnessTable();
  sub_1AFDFE9B8();
}

uint64_t sub_1AF61E568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 + 56);
  *&v20 = 0x207865646E49;
  *(&v20 + 1) = 0xE600000000000000;
  v23 = v8;

  v9 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v9);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a3 = sub_1AF422608(0, a3[2] + 1, 1, a3);
  }

  v11 = a3[2];
  v10 = a3[3];
  if (v11 >= v10 >> 1)
  {
    a3 = sub_1AF422608(v10 > 1, v11 + 1, 1, a3);
  }

  v21 = &type metadata for _BinaryKey;
  v22 = sub_1AF60A364();
  v12 = swift_allocObject();
  *&v20 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = v8;
  *(v12 + 40) = 0;
  a3[2] = v11 + 1;
  sub_1AF616568(&v20, &a3[5 * v11 + 4]);
  type metadata accessor for _BinaryEncoder.UnkeyedStore();
  v13 = swift_allocObject();
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0;
  *(v13 + 64) = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = a1;
  *(v13 + 72) = 0;
  v14 = *(a2 + 64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 64) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1AF4219EC(0, v14[2] + 1, 1, v14);
    *(a2 + 64) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1AF4219EC(v16 > 1, v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = v13;
  v18[5] = &off_1F2531558;
  *(a2 + 64) = v14;
  ++*(a2 + 56);

  a4[3] = &type metadata for _BinaryUnkeyedEncodingContainer;
  a4[4] = sub_1AF620048();

  *a4 = a1;
  a4[1] = v13;
  a4[2] = a3;
  return result;
}

uint64_t sub_1AF61E810(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 8);

  return sub_1AF618ED8(v5, a1, a2);
}

uint64_t sub_1AF61F038(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 8);
  v7[3] = type metadata accessor for _BinaryEncoder.SingleValueDataStore();
  v7[4] = &off_1F25315D0;
  v7[0] = v5;

  sub_1AF61C918(v7, a1, a2);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
}

uint64_t sub_1AF61F134(unsigned int a1)
{
  v3 = *(v1 + 8);
  v5[3] = type metadata accessor for _BinaryEncoder.SingleValueDataStore();
  v5[4] = &off_1F25315D0;
  v5[0] = v3;

  sub_1AF61B13C(v5, a1, sub_1AF616390, MEMORY[0x1E69E72F0]);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

uint64_t sub_1AF61F1C8(unint64_t a1)
{
  v3 = *(v1 + 8);
  v5[3] = type metadata accessor for _BinaryEncoder.SingleValueDataStore();
  v5[4] = &off_1F25315D0;
  v5[0] = v3;

  sub_1AF61B044(v5, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

uint64_t sub_1AF61F28C(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = *(v5 + 8);
  v11[3] = type metadata accessor for _BinaryEncoder.SingleValueDataStore();
  v11[4] = &off_1F25315D0;
  v11[0] = v9;

  sub_1AF61B240(v11, a1, a4, a5);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
}

uint64_t sub_1AF61F31C(unsigned int a1)
{
  v3 = *(v1 + 8);
  v5[3] = type metadata accessor for _BinaryEncoder.SingleValueDataStore();
  v5[4] = &off_1F25315D0;
  v5[0] = v3;

  sub_1AF61B350(v5, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

unint64_t sub_1AF61F3F8()
{
  result = qword_1EB63CBB8;
  if (!qword_1EB63CBB8)
  {
    sub_1AF61FE9C(255, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63CBB8);
  }

  return result;
}

uint64_t sub_1AF61F474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1AF4219EC(0, v6[2] + 1, 1, v6);
    *(a2 + 80) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1AF4219EC(v8 > 1, v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = a1;
  v10[5] = a3;
  *(a2 + 80) = v6;
}

uint64_t sub_1AF61F538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1AF4219EC(0, v7[2] + 1, 1, v7);
    *(a2 + 80) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1AF4219EC(v9 > 1, v10 + 1, 1, v7);
    *(a2 + 80) = v7;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = a1;
  v11[5] = a4;

  return swift_unknownObjectRetain();
}

uint64_t sub_1AF61F5FC(void *a1, unint64_t *a2)
{
  v3 = *a2;
  v13 = v3;
  if (v3 < 0x10)
  {
    v11 = a1[3];
    v12 = a1[4];
    sub_1AF441150(a1, v11);
    return (*(v12 + 24))(v3 | 0x20, v11, v12);
  }

  else
  {
    v4 = a1[3];
    v5 = a1[4];
    sub_1AF441150(a1, v4);
    result = (*(v5 + 24))(51, v4, v5);
    if (!v2)
    {
      v8 = a1[3];
      v9 = a1[4];
      sub_1AF441150(a1, v8);
      v10 = sub_1AF609FC4();
      return sub_1AF61AC90(&v13, v8, MEMORY[0x1E69E76D8], v9, v10);
    }
  }

  return result;
}

uint64_t sub_1AF61F6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 64) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1AF4219EC(0, v7[2] + 1, 1, v7);
    *(a2 + 64) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1AF4219EC(v9 > 1, v10 + 1, 1, v7);
    *(a2 + 64) = v7;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = a1;
  v11[5] = a4;
  ++*(a2 + 56);

  return swift_unknownObjectRetain();
}

uint64_t sub_1AF61F7C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1AF585714(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1AF616568(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1AF61F858(void *a1, unsigned __int8 *a2)
{
  v10 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  sub_1AF441150(a1, v4);
  if (v10 < 0x10u)
  {
    return (*(v5 + 24))(v10 | 0x20u, v4, v5);
  }

  result = (*(v5 + 24))(48, v4, v5);
  if (!v2)
  {
    v7 = a1[3];
    v8 = a1[4];
    sub_1AF441150(a1, v7);
    v9 = sub_1AF616438();
    return sub_1AF61AC90(&v10, v7, MEMORY[0x1E69E7230], v8, v9);
  }

  return result;
}

uint64_t sub_1AF61F940(void *a1, unsigned __int8 *a2)
{
  v10 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  sub_1AF441150(a1, v4);
  if (v10 < 0x10u)
  {
    return (*(v5 + 24))(v10 | 0x20u, v4, v5);
  }

  result = (*(v5 + 24))(48, v4, v5);
  if (!v2)
  {
    v7 = a1[3];
    v8 = a1[4];
    sub_1AF441150(a1, v7);
    v9 = sub_1AF61591C();
    return sub_1AF61AC90(&v10, v7, MEMORY[0x1E69E7508], v8, v9);
  }

  return result;
}

uint64_t sub_1AF61FA28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AFDFEF98();
    swift_unknownObjectRetain_n();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
      swift_unknownObjectRelease();
      v10 = MEMORY[0x1E69E7CC0];
    }

    v11 = *(v10 + 16);

    v12 = a4 >> 1;
    v6 = (a4 >> 1) - a3;
    if (v11 == v6)
    {
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      if (v12 != a3)
      {
        goto LABEL_3;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v6 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AF61FE9C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    v8 = j__malloc_size_0(v7);
    v9 = v8 - 32;
    if (v8 < 32)
    {
      v9 = v8 - 17;
    }

    v7[2] = v6;
    v7[3] = 2 * (v9 >> 4);
  }

  swift_arrayInitWithCopy();
  return v7;
}

uint64_t sub_1AF61FBA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AFDFEF98();
    swift_unknownObjectRetain_n();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = MEMORY[0x1E69E7CC0];
    }

    v12 = *(v11 + 16);

    v13 = a4 >> 1;
    v6 = (a4 >> 1) - a3;
    if (v12 == v6)
    {
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      if (v13 != a3)
      {
        goto LABEL_3;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v6 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AF441E54();
    v7 = swift_allocObject();
    v8 = j__malloc_size_0(v7);
    v9 = v8 - 32;
    if (v8 < 32)
    {
      v9 = v8 - 17;
    }

    v7[2] = v6;
    v7[3] = 2 * (v9 >> 4);
    v10 = v7;
  }

  sub_1AF61FE9C(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayInitWithCopy();
  return v10;
}

uint64_t sub_1AF61FD2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t a6)
{
  if (a4)
  {
    v13 = a5;
    sub_1AFDFEF98();
    swift_unknownObjectRetain_n();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      swift_unknownObjectRelease();
      v14 = MEMORY[0x1E69E7CC0];
    }

    v15 = *(v14 + 16);

    v16 = a4 >> 1;
    v9 = (a4 >> 1) - a3;
    if (v15 == v9)
    {
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      a5 = v13;
      if (v16 != a3)
      {
        goto LABEL_3;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  v9 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v9 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AF61FE9C(0, a5, a6, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v9;
    v10[3] = 2 * (v12 >> 3);
  }

  swift_arrayInitWithCopy();
  return v10;
}

void sub_1AF61FE9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF61FF58()
{
  result = qword_1ED7268D0;
  if (!qword_1ED7268D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED7268D0);
  }

  return result;
}

unint64_t sub_1AF61FFF4()
{
  result = qword_1EB63CBC0;
  if (!qword_1EB63CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63CBC0);
  }

  return result;
}

unint64_t sub_1AF620048()
{
  result = qword_1EB63CBC8;
  if (!qword_1EB63CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63CBC8);
  }

  return result;
}

unint64_t sub_1AF6200B4()
{
  result = qword_1EB63CBD0;
  if (!qword_1EB63CBD0)
  {
    type metadata accessor for _BinaryEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63CBD0);
  }

  return result;
}

uint64_t sub_1AF62010C(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(a1, ObjectType, v3);
}

void sub_1AF620190()
{
  if (!qword_1EB63CBD8[0])
  {
    sub_1AFDFE2E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EB63CBD8);
    }
  }
}

uint64_t sub_1AF620244(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  sub_1AF441150(a1, v3);
  return (*(v4 + 24))(v2 | 0x10u, v3, v4);
}

uint64_t sub_1AF6202AC()
{
  v3[5] = *MEMORY[0x1E69E9840];
  sub_1AF61FE9C(0, &qword_1EB63CBB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
  v1 = v0;
  v3[3] = v0;
  v3[4] = sub_1AF61F3F8();
  LOBYTE(v3[0]) = 0;
  sub_1AF441150(v3, v1);
  sub_1AFDFC188();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF620540(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  ObjectType = swift_getObjectType();
  return sub_1AF6170D0(v8, v7, a1, ObjectType, v5, a2, v6);
}

uint64_t sub_1AF620684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = *(v4 + 16);
  ObjectType = swift_getObjectType();
  return sub_1AF61AA2C(v8, ObjectType, *(a2 + 8), a3, a4);
}

uint64_t sub_1AF62072C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = *(v4 + 16);
  ObjectType = swift_getObjectType();
  return sub_1AF61A994(v8, ObjectType, *(a2 + 8), a3, a4);
}

uint64_t sub_1AF6207D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = *(v4 + 16);
  ObjectType = swift_getObjectType();
  return sub_1AF61AB5C(v8, ObjectType, *(a2 + 8), a3, a4);
}

uint64_t sub_1AF62087C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = *(v4 + 16);
  ObjectType = swift_getObjectType();
  return sub_1AF61AAC4(v8, ObjectType, *(a2 + 8), a3, a4);
}

uint64_t sub_1AF620924(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  return sub_1AF61BFB8(ObjectType, *(a2 + 8), v4);
}

uint64_t sub_1AF62097C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  return sub_1AF61C734(ObjectType, *(a2 + 8), v4);
}

uint64_t destroy for ChunksStorage()
{
}

uint64_t initializeWithCopy for ChunksStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);

  return a1;
}

uint64_t assignWithCopy for ChunksStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t assignWithTake for ChunksStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShaderCache.Library(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderCache.Library(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF620D10(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AFC0D940(v3);
  }

  v4 = *(v3 + 2) - 1;
  v5 = &v3[8 * a1];
  v6 = *(v5 + 4);
  memmove(v5 + 32, v5 + 40, 8 * (v4 - a1));
  *(v3 + 2) = v4;
  *v1 = v3;
  return v6;
}

uint64_t sub_1AF620D8C(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AFC0D97C(v3);
  }

  v4 = *(v3 + 2) - 1;
  v5 = &v3[16 * a1];
  v6 = *(v5 + 4);
  memmove(v5 + 32, v5 + 48, 16 * (v4 - a1));
  *(v3 + 2) = v4;
  *v1 = v3;
  return v6;
}

uint64_t sub_1AF620E0C(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AFC0D9CC(v3);
  }

  v4 = *(v3 + 2) - 1;
  v5 = &v3[4 * a1];
  v6 = *(v5 + 8);
  memmove(v5 + 32, v5 + 36, 4 * (v4 - a1));
  *(v3 + 2) = v4;
  *v1 = v3;
  return v6;
}

uint64_t sub_1AF620E88(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AFC0D954(v3);
  }

  v4 = *(v3 + 2) - 1;
  v5 = &v3[24 * a1];
  v6 = *(v5 + 4);
  memmove(v5 + 32, v5 + 56, 24 * (v4 - a1));
  *(v3 + 2) = v4;
  *v1 = v3;
  return v6;
}

uint64_t sub_1AF620F30(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AFC0DB70(v3);
  }

  v4 = v3[2] - 1;
  v5 = &v3[2 * a1];
  v6 = v5[4];
  memmove(v5 + 4, v5 + 6, 16 * (v4 - a1));
  v3[2] = v4;
  *v1 = v3;
  return v6;
}

uint64_t sub_1AF620FB0(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AFC0DC4C(v3);
  }

  v4 = *(v3 + 2) - 1;
  v5 = &v3[16 * a1];
  v6 = *(v5 + 4);
  memmove(v5 + 32, v5 + 48, 16 * (v4 - a1));
  *(v3 + 2) = v4;
  *v1 = v3;
  return v6;
}

uint64_t sub_1AF621030(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AFC0DC74(v3);
  }

  v4 = *(v3 + 2) - 1;
  v5 = &v3[8 * a1];
  v6 = *(v5 + 4);
  memmove(v5 + 32, v5 + 40, 8 * (v4 - a1));
  *(v3 + 2) = v4;
  *v1 = v3;
  return v6;
}

void *sub_1AF6210AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AFC0DCC4(v5);
  }

  v6 = *(v5 + 2) - 1;
  v7 = &v5[112 * a1];
  v8 = *(v7 + 7);
  *(a2 + 64) = *(v7 + 6);
  *(a2 + 80) = v8;
  *(a2 + 96) = *(v7 + 16);
  v9 = *(v7 + 3);
  *a2 = *(v7 + 2);
  *(a2 + 16) = v9;
  v10 = *(v7 + 5);
  *(a2 + 32) = *(v7 + 4);
  *(a2 + 48) = v10;
  result = memmove(v7 + 32, v7 + 144, 112 * (v6 - a1));
  *(v5 + 2) = v6;
  *v2 = v5;
  return result;
}

uint64_t sub_1AF621150(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AFC0DA6C(v3);
  }

  v4 = v3[2] - 1;
  v5 = &v3[2 * a1];
  v6 = v5[4];
  memmove(v5 + 4, v5 + 6, 16 * (v4 - a1));
  v3[2] = v4;
  *v1 = v3;
  return v6;
}

uint64_t sub_1AF6211D0(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v11 = (v4 + 16);
  v10 = *(v4 + 16);
  if (*(v10 + 16) <= a4)
  {
    sub_1AFDFE328();
    sub_1AFDFE348();
    do
    {
      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
      v10 = *v11;
    }

    while (*(*v11 + 16) <= a4);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1AF0E6934(v10);
    *v11 = v10;
  }

  v13 = v10 + 8 * a4;
  v16 = *(v13 + 32);
  v14 = (v13 + 32);
  v15 = v16;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v16;
  if ((v17 & 1) == 0)
  {
    sub_1AFC07348(0, *(v15 + 16) + 1, 1);
    v15 = *v14;
  }

  v19 = *(v15 + 16);
  v18 = *(v15 + 24);
  if (v19 >= v18 >> 1)
  {
    sub_1AFC07348(v18 > 1, v19 + 1, 1);
    v15 = *v14;
  }

  *(v15 + 16) = v19 + 1;
  v20 = v15 + 24 * v19;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;
  *v14 = v15;
  result = sub_1AFDFE348();
  *(v5 + 24) = 1;
  return result;
}

uint64_t sub_1AF621324(int a1, char a2)
{
  v4 = *v2;
  v5 = v2[1];
  if (a2)
  {
    v6 = *(v4 + 16);
    if (v5 == v6)
    {
LABEL_6:
      v5 = 0;
    }

    else
    {
      v7 = v4 + 32;
      while (*(v7 + 4 * v5) != a1)
      {
        if (v6 == ++v5)
        {
          goto LABEL_6;
        }
      }
    }

    result = sub_1AF620E0C(v5);
    if (*(v2 + 8) == a1)
    {
      *(v2 + 8) = -1;
    }
  }

  else
  {
    v9 = 0;
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v4 + 32;
      while (*(v10 + 4 * v9) != a1)
      {
        if ((v5 & 0x7FFFFFFFFFFFFFFFLL) == ++v9)
        {
          v9 = 0;
          break;
        }
      }
    }

    result = sub_1AF620E0C(v9);
    v2[1] = v5 - 1;
    if (*(v2 + 9) == a1)
    {
      *(v2 + 9) = -1;
    }
  }

  *(v2 + 24) = 1;
  return result;
}

uint64_t sub_1AF6213F4(int a1, char a2)
{
  v4 = *v2;
  v5 = v2[1];
  if (a2)
  {
    v6 = 0;
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v4 + 32;
      while (*(v7 + 4 * v6) != a1)
      {
        if ((v5 & 0x7FFFFFFFFFFFFFFFLL) == ++v6)
        {
          v6 = 0;
          break;
        }
      }
    }

    v2[1] = v5 - 1;
    result = sub_1AF621528(v6, v5 - 1);
    if (*(v2 + 9) == a1)
    {
      *(v2 + 8) = a1;
      *(v2 + 9) = -1;
    }
  }

  else
  {
    v9 = *(v4 + 16);
    if (v5 == v9)
    {
LABEL_13:
      v11 = 0;
    }

    else
    {
      v10 = v4 + 32;
      v11 = v2[1];
      while (*(v10 + 4 * v11) != a1)
      {
        if (v9 == ++v11)
        {
          goto LABEL_13;
        }
      }
    }

    result = sub_1AF621528(v11, v2[1]);
    v2[1] = v5 + 1;
    if (*(v2 + 8) == a1)
    {
      *(v2 + 8) = -1;
      *(v2 + 9) = a1;
    }
  }

  return result;
}

uint64_t sub_1AF6214C8(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *v2;
    v4 = *(*v2 + 8 * (result >> 6));
    v5 = a2 >> 6;
    v6 = 1 << a2;
    if ((*(*v2 + 8 * (a2 >> 6)) & (1 << a2)) != 0)
    {
      v7 = v4 | (1 << result);
    }

    else
    {
      v7 = v4 & ~(1 << result);
    }

    *(v3 + 8 * (result >> 6)) = v7;
    if ((v4 & (1 << result)) != 0)
    {
      v8 = *(v3 + 8 * v5) | v6;
    }

    else
    {
      v8 = *(v3 + 8 * v5) & ~v6;
    }

    *(v3 + 8 * v5) = v8;
  }

  return result;
}

uint64_t sub_1AF621528(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = result;
    v5 = *v2;
    v6 = *v2 + 32;
    v7 = *(v6 + 4 * result);
    v8 = *(v6 + 4 * a2);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AFC0D9CC(v5);
      v5 = result;
    }

    *(v5 + 32 + 4 * v4) = v8;
    *(v5 + 32 + 4 * a2) = v7;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1AF6215A4(int a1)
{
  v2 = *(*(*(v1 + 104) + 40 * a1 + 32) + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];

    sub_1AFDFE368();
    v4 = 32;
    do
    {

      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
      v4 += 4;
      --v2;
    }

    while (v2);

    return v5;
  }

  return result;
}

uint64_t sub_1AF621684(int a1)
{
  v2 = *(*(v1 + 104) + 40 * a1 + 32);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 144) + 32;
  if (v3 == 1)
  {
    v5 = 0;
    result = 0;
LABEL_8:
    v13 = v3 - v5;
    v14 = (v2 + 4 * v5 + 32);
    do
    {
      v15 = *v14++;
      result += *(*(v4 + 8 * v15) + 240) - *(*(v4 + 8 * v15) + 232);
      --v13;
    }

    while (v13);
    return result;
  }

  v7 = 0;
  v8 = 0;
  v5 = v3 & 0x7FFFFFFFFFFFFFFELL;
  v9 = (v2 + 36);
  v10 = v3 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v11 = *(v4 + 8 * *(v9 - 1));
    v12 = *(v4 + 8 * *v9);
    v7 += *(v11 + 240) - *(v11 + 232);
    v8 += *(v12 + 240) - *(v12 + 232);
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  result = v8 + v7;
  if (v3 != v5)
  {
    goto LABEL_8;
  }

  return result;
}

BOOL sub_1AF62173C(int a1)
{
  v2 = *(*(v1 + 104) + 40 * a1 + 32);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = *v4++;
    v8 = *(*(v1 + 144) + 8 * v7 + 32);
  }

  while (*(v8 + 240) == *(v8 + 232));
  return v5 != 0;
}

void sub_1AF621788(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v10 = a1;
  if (*(*(*(a4 + 88) + 8 * a1 + 32) + 200) == 1)
  {
    *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  os_unfair_lock_lock(*(a4 + 136));
  v11 = *(a4 + 104);
  v12 = *(v11 + 40 * v10 + 32);
  v13 = *(v12 + 16);
  v14 = (v12 + 32);
  while (v13)
  {
    v15 = *v14++;
    v16 = *(*(a4 + 144) + 8 * v15 + 32);
    --v13;
    if (*(v16 + 240) != *(v16 + 232))
    {
      goto LABEL_8;
    }
  }

  sub_1AF6AFD3C(a1);
  v11 = *(a4 + 104);
LABEL_8:
  v17 = v11 + 40 * v10;
  v18 = 36;
  if (a3)
  {
    v18 = 32;
  }

  v19 = *(v17 + v18 + 32);
  if (v19 == -1)
  {
    goto LABEL_23;
  }

  v20 = *(*(a4 + 144) + 8 * v19 + 32);
  if (*(v20 + 32))
  {
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((a2 & 0x100000000) != 0 || *(v20 + 28) != a2)
  {
    goto LABEL_23;
  }

  if (!os_unfair_lock_trylock(*(v20 + 376)))
  {
LABEL_23:
    os_unfair_lock_unlock(*(a4 + 136));
    v22 = sub_1AF624654();
    if ((v22 & 0x100000000) != 0)
    {
      v23 = *(*(a4 + 144) + 16);
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v25 = sub_1AF64BF6C(v29, a2 | ((HIDWORD(a2) & 1) << 32), a1, a3 & 1, v23);

      _swift_stdlib_immortalize();

      v26 = *(a4 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 144) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05EFC(0, *(v26 + 2) + 1, 1);
        v26 = *(a4 + 144);
      }

      v32 = *(v26 + 2);
      v31 = *(v26 + 3);
      if (v32 >= v31 >> 1)
      {
        sub_1AFC05EFC(v31 > 1, v32 + 1, 1);
        v26 = *(a4 + 144);
      }

      *(v26 + 2) = v32 + 1;
      v28 = &v26[8 * v32];
    }

    else
    {
      v23 = v22;
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v25 = sub_1AF64BF6C(v24, a2 | ((HIDWORD(a2) & 1) << 32), a1, a3 & 1, v23);

      _swift_stdlib_immortalize();

      v26 = *(a4 + 144);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 144) = v26;
      if ((v27 & 1) == 0)
      {
        v26 = sub_1AF6247B0(v26);
      }

      v28 = &v26[8 * v23];
    }

    *(v28 + 4) = v25;
    *(a4 + 144) = v26;
    v33 = *(a4 + 104);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 104) = v33;
    if ((v34 & 1) == 0)
    {
      v33 = sub_1AFC0D9B8(v33);
      *(a4 + 104) = v33;
    }

    v35 = &v33[40 * v10];
    if (a3)
    {
      v36 = *(v35 + 4);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 4) = v36;
      if ((v37 & 1) == 0)
      {
        v36 = sub_1AF420E8C(0, *(v36 + 2) + 1, 1, v36);
        *(v35 + 4) = v36;
      }

      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      if (v39 >= v38 >> 1)
      {
        v36 = sub_1AF420E8C(v38 > 1, v39 + 1, 1, v36);
        *(v35 + 4) = v36;
      }

      *(v36 + 2) = v39 + 1;
      *&v36[4 * v39 + 32] = v23;
      *(v35 + 16) = v23;
    }

    else
    {
      v40 = *(v35 + 5);
      sub_1AF64B7B0(v40, v40, v23);
      *(v35 + 5) = v40 + 1;
      *(v35 + 17) = v23;
    }

    v35[56] = 1;
    sub_1AF621BB0(*(*(a4 + 144) + 8 * v23 + 32), a3 & 1, a5);
    return;
  }

  os_unfair_lock_lock(*(v20 + 344));
  os_unfair_lock_unlock(*(v20 + 376));
  if ((*(v20 + 121) & 1) == 0 && *(v20 + 240) >= *(v20 + 88))
  {
    os_unfair_lock_unlock(*(v20 + 344));
    goto LABEL_23;
  }

  sub_1AF6231A4(v20, a5);
  os_unfair_lock_unlock(*(v20 + 344));
  v21 = *(a4 + 136);

  os_unfair_lock_unlock(v21);
}

void sub_1AF621BB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (os_unfair_lock_trylock(*(a1 + 376)))
  {
    os_unfair_lock_lock(*(a1 + 344));
    os_unfair_lock_unlock(*(a1 + 376));
    if ((*(a1 + 121) & 1) != 0 || *(a1 + 240) < *(a1 + 88))
    {
      sub_1AF6231A4(a1, a3);
      os_unfair_lock_unlock(*(a1 + 344));
      return;
    }

    os_unfair_lock_unlock(*(a1 + 344));
  }

  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF621C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v6;
  v7 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v7;
  v9 = sub_1AF621DC4(v15);
  v10 = *(a2 + 8);
  v11 = v8 - v9;
  v12 = v10 - *a2;
  if (v8 - v9 < 1)
  {
    if (v12 > 0 || v11 >= v12)
    {
      goto LABEL_9;
    }
  }

  else if (v12 < 0 || v12 >= v11)
  {
LABEL_9:
    v10 = v11 + *a2;
  }

  *a2 = v10;
  return a3(a1, v9, v8);
}

uint64_t sub_1AF621D30(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = sub_1AF622470(*a2, a2[1], a2[2]);
  v8 = a2[1];
  v9 = v6 - v7;
  v10 = v8 - *a2;
  if (v6 - v7 < 1)
  {
    if (v10 > 0 || v9 >= v10)
    {
      goto LABEL_9;
    }
  }

  else if (v10 < 0 || v10 >= v9)
  {
LABEL_9:
    v8 = v9 + *a2;
  }

  *a2 = v8;
  return a3(a1, v7, v6);
}

uint64_t sub_1AF621DC4(uint64_t *a1)
{
  v3 = v1;
  v4 = &OBJC_IVAR____TtC3VFX13EntityManager_counters;
  if (*(v1 + 121))
  {
    v5 = *(v1 + 240);
    v6 = *(v1 + 88) - v5;
    v7 = a1[1] - *a1;
    if (v6 < v7)
    {
      v8 = *(v1 + 256);
      if (v7 >= v6 + v8)
      {
        v16 = *(v1 + 128);
        v77 = a1;
        if (v16)
        {
          v17 = *(v1 + 136) - v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = 0;
        v78 = a1[1] - *a1;
        while (1)
        {
          v19 = *(*(*(v3 + 40) + 16) + 32);
          v20 = *(v19 + 16);
          if (v20)
          {
            v79 = v2;
            v82 = v17;
            *&v92 = MEMORY[0x1E69E7CC0];

            sub_1AFC06FC8(0, v20, 0);
            v21 = v92;
            sub_1AF624D60(0, &qword_1ED72FFE0, &qword_1ED72FFF0);
            sub_1AF624D60(0, &qword_1ED7270C0, &qword_1ED7270D0);
            v22 = 32;
            do
            {
              v97 = *(v19 + v22);
              swift_dynamicCast();
              v23 = v101;
              *&v92 = v21;
              v25 = *(v21 + 16);
              v24 = *(v21 + 24);
              if (v25 >= v24 >> 1)
              {
                v76 = v101;
                sub_1AFC06FC8(v24 > 1, v25 + 1, 1);
                v23 = v76;
                v21 = v92;
              }

              *(v21 + 16) = v25 + 1;
              *(v21 + 16 * v25 + 32) = v23;
              v22 += 16;
              --v20;
            }

            while (v20);

            v7 = v78;
            v17 = v82;
            v2 = v79;
          }

          else
          {
            v21 = MEMORY[0x1E69E7CC0];
          }

          v17 *= 2;
          sub_1AF64F3CC(v21, v17, 0, (*(v3 + 184) & 1) == 0, &v101);
          if (v18)
          {
            v97 = v83;
            *&v98[8] = v85;
            *v98 = v89;
            *&v98[24] = v4;
            v99 = v87;
            v100 = v2 & 1;
            sub_1AF5DD3C8(&v97);
          }

          v4 = *&v102[24];
          if (*&v102[24] - *(v3 + 240) >= v7)
          {
            break;
          }

          v2 = v104;
          v85 = *&v102[8];
          v87 = v103;
          v89 = *v102;
          v18 = 1;
          v83 = v101;
        }

        v26 = *(v3 + 16);
        vfx_allocate_memory_entry(v17, 0x40uLL, *(v26 + OBJC_IVAR____TtC3VFX13EntityManager_peerTaskIdentity), &v97);
        v28 = *(&v97 + 1);
        v27 = v97;
        v29 = *v98;
        v30 = v98[4];
        if (v97)
        {
          v31 = v97 + *(&v97 + 1);
        }

        else
        {
          v31 = 0;
        }

        v100 = *(v3 + 112);
        v32 = *(v3 + 96);
        *&v98[16] = *(v3 + 80);
        v99 = v32;
        v33 = *(v3 + 64);
        v97 = *(v3 + 48);
        *v98 = v33;
        v34 = *(v97 + 16);
        if (v34)
        {
          v80 = v26;
          v81 = v31;
          v84 = v29;
          v86 = v28;
          v90 = *(v3 + 128);
          v35 = *(v3 + 256);
          v88 = v27;
          v36 = *(v3 + 240);
          v37 = v101;
          v38 = v97 + 32;
          v39 = *(v101 + 16);
          sub_1AF5DD36C(&v97, &v92);
          sub_1AF5DD36C(&v101, &v92);
          v40 = (v37 + 56);
          v41 = v36 - v35;
          v27 = v88;

          for (i = 0; i != v34; ++i)
          {
            if (v39)
            {
              v43 = (v38 + 40 * i);
              v44 = *v43;
              v46 = v43[2];
              v45 = v43[3];
              v47 = *(v43 + 32);
              v48 = v39;
              v49 = v40;
              while (*(v49 - 3) != v44)
              {
                v49 += 5;
                if (!--v48)
                {
                  goto LABEL_29;
                }
              }

              v50 = *v49;
              v51 = v90 + v46 * v35;
              if (v47)
              {
                memmove((v27 + v50), (v51 + v45), v46 * v41);
              }

              else
              {
                sub_1AF641780(v51 + v45, v27 + v50, v41);
                v27 = v88;
              }
            }

LABEL_29:
            ;
          }

          sub_1AF5DD3C8(&v97);

          sub_1AF5DD3C8(&v101);
          v28 = v86;
          v29 = v84;
          v26 = v80;
          v31 = v81;
        }

        if (*(v26 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v26 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 64), (*(v3 + 240) - *(v3 + 256)) * *(v3 + 72));
        }

        vfx_deallocate_memory_entry(v3 + 144);
        *(v3 + 144) = v27;
        *(v3 + 152) = v28;
        *(v3 + 160) = v29;
        *(v3 + 164) = v30;
        *(v3 + 128) = v27;
        *(v3 + 136) = v31;
        v52 = *(v3 + 96);
        v94 = *(v3 + 80);
        v95 = v52;
        v96 = *(v3 + 112);
        v53 = *(v3 + 64);
        v92 = *(v3 + 48);
        v93 = v53;
        v54 = v101;
        v55 = *v102;
        v56 = *&v102[16];
        v57 = v103;
        *(v3 + 112) = v104;
        *(v3 + 80) = v56;
        *(v3 + 96) = v57;
        *(v3 + 48) = v54;
        *(v3 + 64) = v55;
        sub_1AF5DD3C8(&v92);
        a1 = v77;
      }

      else
      {
        v9 = a1;
        v10 = *(v1 + 64);
        v11 = *(v1 + 96);
        *&v98[16] = *(v1 + 80);
        v99 = v11;
        v12 = *(v1 + 64);
        v97 = *(v1 + 48);
        *v98 = v12;
        v13 = *(v1 + 96);
        v94 = *&v98[16];
        v95 = v13;
        v100 = *(v1 + 112);
        v96 = *(v1 + 112);
        v92 = v97;
        v93 = v10;
        v14 = *(v1 + 128);
        sub_1AF5DD36C(&v97, v91);
        sub_1AF64F798(v14, v8, v5, 0);
        *&v102[16] = v94;
        v103 = v95;
        v104 = v96;
        v101 = v92;
        *v102 = v93;
        sub_1AF5DD3C8(&v101);
        v15 = *(v1 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
        if (*v15)
        {
          vfx_counters.add(_:_:)(*(v15 + 64), (*(v1 + 240) - *(v1 + 256)) * *(v1 + 72));
        }

        a1 = v9;
      }

      v58 = *(v3 + 256);
      *(v3 + 256) = 0;
      *(v3 + 232) -= v58;
      v59 = vsubq_s64(*(v3 + 240), vdupq_n_s64(v58));
      *(v3 + 240) = v59;
      v5 = v59.i64[0];
    }
  }

  else
  {
    v5 = *(v1 + 240);
  }

  v60 = *a1;
  if (a1[1] - *a1 >= *(v3 + 88) - v5)
  {
    v61 = *(v3 + 88) - v5;
  }

  else
  {
    v61 = a1[1] - *a1;
  }

  if (*(v3 + 184))
  {
    v62 = v5;
    v5 += v61;
  }

  else if (v61)
  {
    v63 = *(v3 + 168);
    v64 = *(a1 + 2);
    v91[0] = *(a1 + 1);
    v91[1] = v64;
    v91[2] = *(a1 + 3);
    do
    {
      v65 = sub_1AF62461C();
      v67 = v66;
      (v65)(&v101, 0);
      ++v60;
      *(v63 + 4 * v5++) = v67;
      --v61;
    }

    while (v61);
    v62 = *(v3 + 240);
  }

  else
  {
    v62 = v5;
  }

  v68 = *(v3 + 64);
  v69 = *(v3 + 96);
  *&v98[16] = *(v3 + 80);
  v99 = v69;
  v70 = *(v3 + 64);
  v97 = *(v3 + 48);
  v71 = v97;
  *v98 = v70;
  v72 = *(v3 + 96);
  v94 = *&v98[16];
  v95 = v72;
  *(v3 + 240) = v5;
  v100 = *(v3 + 112);
  v96 = *(v3 + 112);
  v92 = v71;
  v93 = v68;
  v73 = *(v3 + 128);
  sub_1AF5DD36C(&v97, &v101);
  sub_1AF64F8A8(v73, v62, v5);
  *&v102[16] = v94;
  v103 = v95;
  v104 = v96;
  v101 = v92;
  *v102 = v93;
  sub_1AF5DD3C8(&v101);
  v74 = *(v3 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  if (*v74)
  {
    vfx_counters.add(_:_:)(*(v74 + 72), *(v3 + 72) * (v5 - v62));
  }

  ++*(v3 + 116);
  return v62;
}

uint64_t sub_1AF622470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = &OBJC_IVAR____TtC3VFX13EntityManager_counters;
  if (*(v3 + 121))
  {
    v7 = *(v3 + 240);
    v8 = *(v3 + 88) - v7;
    v9 = a2 - a1;
    if (v8 < a2 - a1)
    {
      v10 = *(v3 + 256);
      v86 = a2 - a1;
      if (v9 >= v8 + v10)
      {
        v19 = *(v3 + 128);
        v83 = a3;
        v84 = a1;
        if (v19)
        {
          v20 = *(v3 + 136) - v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = 0;
        v85 = v3;
        while (1)
        {
          v22 = *(*(*(v5 + 40) + 16) + 32);
          v23 = *(v22 + 16);
          if (v23)
          {
            v88 = v20;
            *&v99 = MEMORY[0x1E69E7CC0];

            sub_1AFC06FC8(0, v23, 0);
            v24 = v99;
            sub_1AF624D60(0, &qword_1ED72FFE0, &qword_1ED72FFF0);
            sub_1AF624D60(0, &qword_1ED7270C0, &qword_1ED7270D0);
            v25 = 32;
            do
            {
              v104 = *(v22 + v25);
              swift_dynamicCast();
              v26 = v108;
              *&v99 = v24;
              v28 = *(v24 + 16);
              v27 = *(v24 + 24);
              if (v28 >= v27 >> 1)
              {
                v81 = v108;
                sub_1AFC06FC8(v27 > 1, v28 + 1, 1);
                v26 = v81;
                v24 = v99;
              }

              *(v24 + 16) = v28 + 1;
              *(v24 + 16 * v28 + 32) = v26;
              v25 += 16;
              --v23;
            }

            while (v23);

            v5 = v85;
            v9 = v86;
            v20 = v88;
          }

          else
          {
            v24 = MEMORY[0x1E69E7CC0];
          }

          v20 *= 2;
          sub_1AF64F3CC(v24, v20, 0, (*(v5 + 184) & 1) == 0, &v108);
          if (v21)
          {
            v104 = v90;
            *&v105[8] = v92;
            *v105 = v96;
            *&v105[24] = v6;
            v106 = v94;
            v107 = v4 & 1;
            sub_1AF5DD3C8(&v104);
          }

          v6 = *&v109[24];
          if (*&v109[24] - *(v5 + 240) >= v9)
          {
            break;
          }

          v4 = v111;
          v92 = *&v109[8];
          v94 = v110;
          v96 = *v109;
          v21 = 1;
          v90 = v108;
        }

        v29 = *(v5 + 16);
        vfx_allocate_memory_entry(v20, 0x40uLL, *(v29 + OBJC_IVAR____TtC3VFX13EntityManager_peerTaskIdentity), &v104);
        v30 = *(&v104 + 1);
        v31 = *v105;
        v32 = v105[4];
        v93 = v104;
        if (v104)
        {
          v33 = v104 + *(&v104 + 1);
        }

        else
        {
          v33 = 0;
        }

        v107 = *(v5 + 112);
        v34 = *(v5 + 96);
        *&v105[16] = *(v5 + 80);
        v106 = v34;
        v35 = *(v5 + 64);
        v104 = *(v5 + 48);
        *v105 = v35;
        v36 = *(v104 + 16);
        if (v36)
        {
          v82 = v29;
          v87 = v32;
          v89 = v31;
          v91 = v30;
          v97 = *(v5 + 128);
          v37 = *(v5 + 256);
          v38 = *(v5 + 240);
          v39 = v108;
          v40 = v104 + 32;
          v41 = *(v108 + 16);
          sub_1AF5DD36C(&v104, &v99);
          sub_1AF5DD36C(&v108, &v99);
          v95 = v37;
          v42 = v38 - v37;

          for (i = 0; i != v36; ++i)
          {
            if (v41)
            {
              v44 = (v40 + 40 * i);
              v45 = *v44;
              v47 = v44[2];
              v46 = v44[3];
              v48 = *(v44 + 32);
              v49 = v41;
              v50 = (v39 + 56);
              while (*(v50 - 3) != v45)
              {
                v50 += 5;
                if (!--v49)
                {
                  goto LABEL_29;
                }
              }

              v51 = *v50;
              v52 = v97 + v47 * v95;
              if (v48)
              {
                memmove((v93 + v51), (v52 + v46), v47 * v42);
              }

              else
              {
                sub_1AF641780(v52 + v46, v93 + v51, v42);
              }
            }

LABEL_29:
            ;
          }

          sub_1AF5DD3C8(&v104);

          sub_1AF5DD3C8(&v108);
          v5 = v85;
          v9 = v86;
          v30 = v91;
          v32 = v87;
          v31 = v89;
          v29 = v82;
        }

        if (*(v29 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v29 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 64), (*(v5 + 240) - *(v5 + 256)) * *(v5 + 72));
        }

        vfx_deallocate_memory_entry(v5 + 144);
        *(v5 + 144) = v93;
        *(v5 + 152) = v30;
        *(v5 + 160) = v31;
        *(v5 + 164) = v32;
        *(v5 + 128) = v93;
        *(v5 + 136) = v33;
        v53 = *(v5 + 96);
        v101 = *(v5 + 80);
        v102 = v53;
        v103 = *(v5 + 112);
        v54 = *(v5 + 64);
        v99 = *(v5 + 48);
        v100 = v54;
        v55 = v108;
        v56 = *v109;
        v57 = *&v109[16];
        v58 = v110;
        *(v5 + 112) = v111;
        *(v5 + 80) = v57;
        *(v5 + 96) = v58;
        *(v5 + 48) = v55;
        *(v5 + 64) = v56;
        sub_1AF5DD3C8(&v99);
        a3 = v83;
        a1 = v84;
      }

      else
      {
        v11 = a1;
        v12 = a3;
        v13 = *(v3 + 64);
        v14 = *(v3 + 96);
        *&v105[16] = *(v3 + 80);
        v106 = v14;
        v15 = *(v3 + 64);
        v104 = *(v3 + 48);
        *v105 = v15;
        v16 = *(v3 + 96);
        v101 = *&v105[16];
        v102 = v16;
        v107 = *(v3 + 112);
        v103 = *(v3 + 112);
        v99 = v104;
        v100 = v13;
        v17 = *(v3 + 128);
        sub_1AF5DD36C(&v104, v98);
        sub_1AF64F798(v17, v10, v7, 0);
        *&v109[16] = v101;
        v110 = v102;
        v111 = v103;
        v108 = v99;
        *v109 = v100;
        sub_1AF5DD3C8(&v108);
        v18 = *(v3 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
        if (*v18)
        {
          vfx_counters.add(_:_:)(*(v18 + 64), (*(v3 + 240) - *(v3 + 256)) * *(v3 + 72));
        }

        a3 = v12;
        a1 = v11;
        v9 = v86;
      }

      v59 = *(v5 + 256);
      *(v5 + 256) = 0;
      *(v5 + 232) -= v59;
      v60 = vsubq_s64(*(v5 + 240), vdupq_n_s64(v59));
      *(v5 + 240) = v60;
      v7 = v60.i64[0];
    }
  }

  else
  {
    v7 = *(v3 + 240);
    v9 = a2 - a1;
  }

  if (v9 >= *(v5 + 88) - v7)
  {
    v61 = *(v5 + 88) - v7;
  }

  else
  {
    v61 = v9;
  }

  if (*(v5 + 184))
  {
    v62 = v61 + v7;
  }

  else
  {
    v62 = v7;
    if (v61)
    {
      v63 = *(v5 + 168);
      v62 = v7;
      v64 = a1;
      if (v61 <= 0xB)
      {
        goto LABEL_53;
      }

      v65 = 4 * a1 + a3;
      v62 = v7;
      v64 = a1;
      if ((v63 + 4 * v7 - v65) < 0x20)
      {
        goto LABEL_53;
      }

      v62 = v7 + (v61 & 0xFFFFFFFFFFFFFFF8);
      v64 = (v61 & 0xFFFFFFFFFFFFFFF8) + a1;
      v66 = (v65 + 16);
      v67 = (4 * v7 + v63 + 16);
      v68 = v61 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v69 = *v66;
        *(v67 - 1) = *(v66 - 1);
        *v67 = v69;
        v66 += 2;
        v67 += 2;
        v68 -= 8;
      }

      while (v68);
      if (v61 != (v61 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_53:
        v70 = a1 + v61 - v64;
        v71 = (a3 + 4 * v64);
        do
        {
          v72 = *v71++;
          *(v63 + 4 * v62++) = v72;
          --v70;
        }

        while (v70);
      }
    }
  }

  v73 = *(v5 + 64);
  v74 = *(v5 + 96);
  *&v105[16] = *(v5 + 80);
  v106 = v74;
  v75 = *(v5 + 64);
  v104 = *(v5 + 48);
  v76 = v104;
  *v105 = v75;
  v77 = *(v5 + 96);
  v101 = *&v105[16];
  v102 = v77;
  *(v5 + 240) = v62;
  v107 = *(v5 + 112);
  v103 = *(v5 + 112);
  v99 = v76;
  v100 = v73;
  v78 = *(v5 + 128);
  sub_1AF5DD36C(&v104, &v108);
  sub_1AF64F8A8(v78, v7, v62);
  *&v109[16] = v101;
  v110 = v102;
  v111 = v103;
  v108 = v99;
  *v109 = v100;
  sub_1AF5DD3C8(&v108);
  v79 = *(v5 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  if (*v79)
  {
    vfx_counters.add(_:_:)(*(v79 + 72), *(v5 + 72) * (v62 - v7));
  }

  ++*(v5 + 116);
  return v7;
}

uint64_t sub_1AF622B60(int a1)
{
  v4 = v1;
  v5 = &OBJC_IVAR____TtC3VFX13EntityManager_counters;
  if (*(v1 + 121))
  {
    v6 = *(v1 + 240);
    if (*(v1 + 88) - v6 <= 0)
    {
      v7 = *(v1 + 256);
      if (*(v1 + 88) - v6 + v7 < 2)
      {
        v15 = *(v1 + 128);
        v70 = a1;
        if (v15)
        {
          v16 = *(v1 + 136) - v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = 0;
        v71 = v1;
        while (1)
        {
          v18 = *(*(*(v4 + 40) + 16) + 32);
          v19 = *(v18 + 16);
          if (v19)
          {
            v75 = v16;
            *&v84 = MEMORY[0x1E69E7CC0];

            sub_1AFC06FC8(0, v19, 0);
            v20 = v84;
            sub_1AF624D60(0, &qword_1ED72FFE0, &qword_1ED72FFF0);
            sub_1AF624D60(0, &qword_1ED7270C0, &qword_1ED7270D0);
            v21 = 32;
            do
            {
              v89 = *(v18 + v21);
              swift_dynamicCast();
              v22 = v93;
              *&v84 = v20;
              v24 = *(v20 + 16);
              v23 = *(v20 + 24);
              if (v24 >= v23 >> 1)
              {
                v69 = v93;
                sub_1AFC06FC8(v23 > 1, v24 + 1, 1);
                v22 = v69;
                v20 = v84;
              }

              *(v20 + 16) = v24 + 1;
              *(v20 + 16 * v24 + 32) = v22;
              v21 += 16;
              --v19;
            }

            while (v19);

            v4 = v71;
            v16 = v75;
          }

          else
          {
            v20 = MEMORY[0x1E69E7CC0];
          }

          v16 *= 2;
          sub_1AF64F3CC(v20, v16, 0, (*(v4 + 184) & 1) == 0, &v93);
          if (v17)
          {
            v89 = v77;
            *&v90[8] = v79;
            *v90 = v5;
            *&v90[24] = v3;
            v91 = v81;
            v92 = v2 & 1;
            sub_1AF5DD3C8(&v89);
          }

          v3 = *&v94[24];
          if ((*&v94[24] - *(v4 + 240)) > 0)
          {
            break;
          }

          v2 = v96;
          v79 = *&v94[8];
          v81 = v95;
          v5 = *v94;
          v17 = 1;
          v77 = v93;
        }

        v25 = *(v4 + 16);
        vfx_allocate_memory_entry(v16, 0x40uLL, *(v25 + OBJC_IVAR____TtC3VFX13EntityManager_peerTaskIdentity), &v89);
        v26 = *(&v89 + 1);
        v27 = *v90;
        v28 = v90[4];
        v78 = v89;
        if (v89)
        {
          v29 = v89 + *(&v89 + 1);
        }

        else
        {
          v29 = 0;
        }

        v92 = *(v4 + 112);
        v30 = *(v4 + 96);
        *&v90[16] = *(v4 + 80);
        v91 = v30;
        v31 = *(v4 + 64);
        v89 = *(v4 + 48);
        *v90 = v31;
        v32 = *(v89 + 16);
        if (v32)
        {
          v72 = v29;
          v73 = v28;
          v74 = v27;
          v76 = v26;
          v82 = *(v4 + 128);
          v33 = *(v4 + 256);
          v34 = *(v4 + 240);
          v35 = v93;
          v36 = v89 + 32;
          v37 = *(v93 + 16);
          sub_1AF5DD36C(&v93, &v84);
          sub_1AF5DD36C(&v89, &v84);
          v80 = v33;
          v38 = v34 - v33;

          for (i = 0; i != v32; ++i)
          {
            if (v37)
            {
              v40 = (v36 + 40 * i);
              v41 = *v40;
              v43 = v40[2];
              v42 = v40[3];
              v44 = *(v40 + 32);
              v45 = v37;
              v46 = (v35 + 56);
              while (*(v46 - 3) != v41)
              {
                v46 += 5;
                if (!--v45)
                {
                  goto LABEL_29;
                }
              }

              v47 = *v46;
              v48 = v82 + v43 * v80;
              if (v44)
              {
                memmove((v78 + v47), (v48 + v42), v43 * v38);
              }

              else
              {
                sub_1AF641780(v48 + v42, v78 + v47, v38);
              }
            }

LABEL_29:
            ;
          }

          sub_1AF5DD3C8(&v89);

          sub_1AF5DD3C8(&v93);
          v4 = v71;
          v29 = v72;
          v26 = v76;
          v28 = v73;
          v27 = v74;
        }

        if (*(v25 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v25 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 64), (*(v4 + 240) - *(v4 + 256)) * *(v4 + 72));
        }

        vfx_deallocate_memory_entry(v4 + 144);
        *(v4 + 144) = v78;
        *(v4 + 152) = v26;
        *(v4 + 160) = v27;
        *(v4 + 164) = v28;
        *(v4 + 128) = v78;
        *(v4 + 136) = v29;
        v49 = *(v4 + 96);
        v86 = *(v4 + 80);
        v87 = v49;
        v88 = *(v4 + 112);
        v50 = *(v4 + 64);
        v84 = *(v4 + 48);
        v85 = v50;
        v51 = v93;
        v52 = *v94;
        v53 = *&v94[16];
        v54 = v95;
        *(v4 + 112) = v96;
        *(v4 + 80) = v53;
        *(v4 + 96) = v54;
        *(v4 + 48) = v51;
        *(v4 + 64) = v52;
        sub_1AF5DD3C8(&v84);
        a1 = v70;
      }

      else
      {
        v8 = a1;
        v9 = *(v1 + 64);
        v10 = *(v1 + 96);
        *&v90[16] = *(v1 + 80);
        v91 = v10;
        v11 = *(v1 + 64);
        v89 = *(v1 + 48);
        *v90 = v11;
        v12 = *(v1 + 96);
        v86 = *&v90[16];
        v87 = v12;
        v92 = *(v1 + 112);
        v88 = *(v1 + 112);
        v84 = v89;
        v85 = v9;
        v13 = *(v1 + 128);
        sub_1AF5DD36C(&v89, v83);
        sub_1AF64F798(v13, v7, v6, 0);
        *&v94[16] = v86;
        v95 = v87;
        v96 = v88;
        v93 = v84;
        *v94 = v85;
        sub_1AF5DD3C8(&v93);
        v14 = *(v1 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
        if (*v14)
        {
          vfx_counters.add(_:_:)(*(v14 + 64), (*(v1 + 240) - *(v1 + 256)) * *(v1 + 72));
        }

        a1 = v8;
      }

      v56 = *(v4 + 248);
      v55 = *(v4 + 256);
      v6 = *(v4 + 240) - v55;
      *(v4 + 232) -= v55;
      *(v4 + 248) = v56 - v55;
      *(v4 + 256) = 0;
    }
  }

  else
  {
    v6 = *(v1 + 240);
  }

  v57 = *(v4 + 88);
  v58 = v57 - v6;
  if (*(v4 + 184))
  {
    if (v58 >= 1)
    {
      v58 = 1;
    }

    v59 = v58 + v6;
  }

  else
  {
    v59 = v6;
    if (v57 != v6)
    {
      v60 = *(v4 + 168);
      v59 = v6;
      do
      {
        *(v60 + 4 * v59++) = a1;
      }

      while (v58 < 1);
    }
  }

  v61 = *(v4 + 64);
  v62 = *(v4 + 96);
  *&v90[16] = *(v4 + 80);
  v91 = v62;
  v63 = *(v4 + 64);
  v89 = *(v4 + 48);
  v64 = v89;
  *v90 = v63;
  v65 = *(v4 + 96);
  v86 = *&v90[16];
  v87 = v65;
  *(v4 + 240) = v59;
  v92 = *(v4 + 112);
  v88 = *(v4 + 112);
  v84 = v64;
  v85 = v61;
  v66 = *(v4 + 128);
  sub_1AF5DD36C(&v89, &v93);
  sub_1AF64F8A8(v66, v6, v59);
  *&v94[16] = v86;
  v95 = v87;
  v96 = v88;
  v93 = v84;
  *v94 = v85;
  sub_1AF5DD3C8(&v93);
  v67 = *(v4 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  if (*v67)
  {
    vfx_counters.add(_:_:)(*(v67 + 72), *(v4 + 72) * (v59 - v6));
  }

  ++*(v4 + 116);
  return v6;
}

uint64_t sub_1AF6231A4(uint64_t a1, uint64_t *a2)
{
  result = sub_1AF622470(*a2, a2[1], a2[2]);
  v4 = a2[1];
  v6 = v5 - result;
  v7 = v4 - *a2;
  if (v5 - result < 1)
  {
    if (v7 > 0 || v6 >= v7)
    {
      goto LABEL_9;
    }
  }

  else if (v7 < 0 || v7 >= v6)
  {
LABEL_9:
    v4 = v6 + *a2;
  }

  *a2 = v4;
  return result;
}

void sub_1AF62320C(int a1, char a2, int a3)
{
  v4 = v3;
  os_unfair_lock_lock(*(v4 + 136));
  v8 = *(v4 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 104) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *(v4 + 104) = sub_1AFC0D9B8(v8);
  }

  sub_1AF6213F4(a1, a2 & 1);
  if (*(*(*(v4 + 88) + 8 * a3 + 32) + 200) == 1)
  {
    *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  v10 = *(v4 + 136);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_1AF6232D0(int a1)
{
  v3 = *(v1 + 104);
  v4 = *&v3[40 * a1 + 32];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    v8 = *(v1 + 144) + 32;
    while (1)
    {
      v10 = *(v8 + 8 * *(v7 + 4 * v6));
      v11 = v10[24];
      if (v11)
      {
        break;
      }

LABEL_6:
      if (++v6 == v5)
      {
        v3 = *(v1 + 104);
        goto LABEL_25;
      }
    }

    v12 = v10[26];
    v13 = v10[27];
    v14 = v10[25] + 63;
    v15 = v14 >> 6;
    if (v14 >> 6 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14 >> 6;
    }

    if (v15 <= 3 || (v12 + 8 * v16 > v11 ? (v17 = v11 + 8 * v16 > v12) : (v17 = 0), v17))
    {
      v18 = 0;
    }

    else
    {
      v18 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      v19 = (v11 + 16);
      v20 = v12 + 1;
      v21 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = vbicq_s8(*v19, *v20);
        v19[-1] = vbicq_s8(v19[-1], v20[-1]);
        *v19 = v22;
        v19 += 2;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v16 == v18)
      {
        goto LABEL_3;
      }
    }

    v23 = v16 - v18;
    v24 = 8 * v18;
    v25 = &v12->i64[v18];
    v26 = (v11 + v24);
    do
    {
      v27 = *v25++;
      *v26++ &= ~v27;
      --v23;
    }

    while (v23);
LABEL_3:
    v9 = (v13 + 63) >> 6;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    bzero(v12, 8 * v9);
    goto LABEL_6;
  }

LABEL_25:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 104) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1AFC0D9B8(v3);
    *(v1 + 104) = v3;
  }

  v29 = &v3[40 * a1 + 48];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v29;
  if (v30)
  {
    return sub_1AF626F50(0, *(v31 + 16), sub_1AF64C3A8);
  }

  *v29 = sub_1AFC858C4(0, *(v31 + 24) >> 1);
}

void sub_1AF6234A4(uint64_t *a1)
{
  v2 = v1;
  lock = *(v1 + 136);
  os_unfair_lock_lock(lock);
  v4 = sub_1AF6B0910(v1, a1);
  v75 = *(v4 + 16);
  if (v75)
  {
    v5 = 0;
    v7 = (v1 + 104);
    v6 = *(v1 + 104);
    v74 = v4 + 32;
    v72 = OBJC_IVAR____TtC3VFX13EntityManager_logger;
    v78 = (v1 + 104);
    v79 = v1;
    do
    {
      v8 = *(v74 + 4 * v5);
      v9 = &v6[40 * v8];
      v12 = *(v9 + 4);
      v11 = v9 + 32;
      v10 = v12;
      v83 = *(v12 + 16);
      if (v83)
      {
        v76 = *(v74 + 4 * v5);
        v77 = v5;
        v82 = v10 + 32;

        v13 = 0;
        v14 = 1;
        do
        {
          while (1)
          {
            v85 = v14;
            v15 = *(*(v2 + 144) + 8 * *(v82 + 4 * v13) + 32);
            os_unfair_lock_lock(*(v15 + 376));
            os_unfair_lock_lock(*(v15 + 344));
            v16 = *(v15 + 256);
            v17 = *(v15 + 232);
            v18 = v17 - v16;
            if (v17 == v16)
            {
              v19 = *(v15 + 240);
            }

            else
            {
              v20 = *(v15 + 56);
              v21 = *(v20 + 16);
              v84 = v13;
              if (v21)
              {

                swift_retain_n();

                v22 = v20 + 56;
                do
                {
                  sub_1AF640BC8();
                  v22 += 40;
                  --v21;
                }

                while (v21);

                v13 = v84;
              }

              if ((*(v15 + 184) & 1) == 0)
              {
                v80 = *(v15 + 168);
                v23 = *(v15 + 16);
                v24 = *(v23 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                os_unfair_lock_lock(v24);

                v25 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
                v26 = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
                v27 = *(v23 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
                v81 = v16 + *(v23 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
                v28 = *(v23 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);

                v29 = (v80 + 4 * v16);
                do
                {
                  v30 = *v29++;
                  v31 = (v27 + 12 * v30);
                  *v31 = v28;
                  v31[1] = -1;
                  ++v31[2];
                  *(v23 + v25) = v30;
                  v28 = v30;
                  --v18;
                }

                while (v18);
                *(v23 + v26) = v81 - v17;

                v32 = *(v23 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                os_unfair_lock_unlock(v32);

                v13 = v84;
              }

              v33 = *(v15 + 192);
              if (v33)
              {
                v34 = *(v15 + 208);
                sub_1AF75D364(v16, v17, v33);
                sub_1AF75D364(v16, v17, v34);
              }

              v16 = *(v15 + 232);
              v19 = *(v15 + 240);
              v7 = v78;
              v2 = v79;
              if (v19 == v16)
              {
                v19 = 0;
                v16 = 0;
                *(v15 + 232) = 0;
                *(v15 + 240) = 0;
              }
            }

            ++v13;
            *(v15 + 248) = v19;
            *(v15 + 256) = v16;
            os_unfair_lock_unlock(*(v15 + 344));
            os_unfair_lock_unlock(*(v15 + 376));
            if (*(v15 + 240) == *(v15 + 232))
            {
              break;
            }

            v14 = 0;
            if (v13 == v83)
            {

              LODWORD(v8) = v76;
              v5 = v77;
              goto LABEL_41;
            }
          }

          v35 = *(v15 + 188);
          v36 = *(v15 + 120);
          v37 = *v7;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v7 = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            *v7 = sub_1AFC0D9B8(v37);
          }

          sub_1AF621324(v35, v36);
          v39 = *(v2 + 144);
          v40 = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 144) = v39;
          if ((v40 & 1) == 0)
          {
            v39 = sub_1AF6247B0(v39);
          }

          *&v39[8 * v35 + 32] = 0;
          *(v2 + 144) = v39;
          v41 = *(v2 + 152);
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 152) = v41;
          if ((v42 & 1) == 0)
          {
            sub_1AFC05EDC(0, *(v41 + 16) + 1, 1);
            v41 = v7[6];
          }

          v44 = *(v41 + 16);
          v43 = *(v41 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_1AFC05EDC(v43 > 1, v44 + 1, 1);
            v41 = v7[6];
          }

          *(v41 + 16) = v44 + 1;
          *(v41 + 4 * v44 + 32) = v35;
          v7[6] = v41;
          v14 = (*(v15 + 240) == *(v15 + 232)) & v85;
          sub_1AF38C670(v15);
          sub_1AF38C680(v15);
        }

        while (v13 != v83);

        v8 = v76;
        v5 = v77;
        if ((v14 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (v11[24] != 1)
      {
        goto LABEL_38;
      }

      v45 = *v7;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      *v7 = v45;
      if ((v46 & 1) == 0)
      {
        v45 = sub_1AFC0D9B8(v45);
      }

      *&v45[40 * v8 + 60] = 15;
      *v7 = v45;
LABEL_38:
      sub_1AF6260B0();
      sub_1AF626100();
      v48 = sub_1AF64BC10(&v86);
      v49 = *(v47 + 28);
      v50 = __OFSUB__(v49, 1);
      v51 = v49 - 1;
      if (v51 < 0 != v50 || (*(v47 + 28) = v51) != 0)
      {
        (v48)(&v86, 0);
        goto LABEL_41;
      }

      (v48)(&v86, 0);
      v53 = *(*v7 + 40 * v8 + 32);
      v54 = *(v53 + 16);
      if (!v54)
      {
        goto LABEL_56;
      }

      v55 = *(v2 + 144) + 32;
      if (v54 == 1)
      {
        v56 = 0;
        v57 = 0;
LABEL_51:
        v64 = v54 - v56;
        v65 = (v53 + 4 * v56 + 32);
        do
        {
          v66 = *v65++;
          v57 += *(*(v55 + 8 * v66) + 240) - *(*(v55 + 8 * v66) + 232);
          --v64;
        }

        while (v64);
        goto LABEL_53;
      }

      v58 = 0;
      v59 = 0;
      v56 = v54 & 0x7FFFFFFFFFFFFFFELL;
      v60 = (v53 + 36);
      v61 = v54 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v62 = *(v55 + 8 * *(v60 - 1));
        v63 = *(v55 + 8 * *v60);
        v58 += *(v62 + 240) - *(v62 + 232);
        v59 += *(v63 + 240) - *(v63 + 232);
        v60 += 2;
        v61 -= 2;
      }

      while (v61);
      v57 = v59 + v58;
      if (v54 != v56)
      {
        goto LABEL_51;
      }

LABEL_53:
      if (v57 <= 0)
      {
        if (v54 != 1)
        {
          v67 = *(v2 + v72);
          v86 = 0;
          v87 = 0xE000000000000000;

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2D490);
          v68 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v68);

          MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2D4B0);
          sub_1AFDFE458();
          v69 = v86;
          v70 = v87;
          v71 = sub_1AFDFDA08();
          v86 = 0;
          (*(*v67 + 88))(v71, &v86, v69, v70);
        }

LABEL_56:
        sub_1AF6AFDFC(v2, v8);
      }

LABEL_41:
      v6 = *v7;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *v7 = v6;
      if ((v52 & 1) == 0)
      {
        v6 = sub_1AFC0D9B8(v6);
      }

      ++v5;
      v6[40 * v8 + 56] = 0;
      *v7 = v6;
    }

    while (v5 != v75);
  }

  os_unfair_lock_unlock(lock);
}

uint64_t sub_1AF623C24(uint64_t a1)
{
  v2 = a1;
  v71 = v1;
  v74 = (v1 + 104);
  v3 = a1;
  v4 = *(v1 + 104) + 40 * a1;
  v7 = *(v4 + 32);
  v6 = v4 + 32;
  v5 = v7;
  v76 = *(v7 + 16);
  if (!v76)
  {
    if (*(v6 + 24) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v69 = v2;
  v70 = v2;
  v75 = v5 + 32;

  v8 = 0;
  v9 = 1;
  v10 = v1;
  do
  {
    while (1)
    {
      v78 = v9;
      v11 = *(*(v10 + 144) + 8 * *(v75 + 4 * v8) + 32);
      os_unfair_lock_lock(*(v11 + 376));
      os_unfair_lock_lock(*(v11 + 344));
      v12 = *(v11 + 256);
      v13 = *(v11 + 232);
      v14 = v13 - v12;
      if (v13 == v12)
      {
        v15 = *(v11 + 240);
      }

      else
      {
        v16 = *(v11 + 56);
        v17 = *(v16 + 16);
        v77 = v8;
        if (v17)
        {

          swift_retain_n();

          v18 = v16 + 56;
          do
          {
            sub_1AF640BC8();
            v18 += 40;
            --v17;
          }

          while (v17);

          v8 = v77;
        }

        if ((*(v11 + 184) & 1) == 0)
        {
          v72 = *(v11 + 168);
          v19 = *(v11 + 16);
          v20 = *(v19 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

          os_unfair_lock_lock(v20);

          v21 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
          v22 = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
          v23 = *(v19 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
          v73 = v12 + *(v19 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
          v24 = *(v19 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);

          v25 = (v72 + 4 * v12);
          do
          {
            v26 = *v25++;
            v27 = (v23 + 12 * v26);
            *v27 = v24;
            v27[1] = -1;
            ++v27[2];
            *(v19 + v21) = v26;
            v24 = v26;
            --v14;
          }

          while (v14);
          *(v19 + v22) = v73 - v13;

          v28 = *(v19 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

          os_unfair_lock_unlock(v28);

          v8 = v77;
        }

        v29 = *(v11 + 192);
        if (v29)
        {
          v30 = *(v11 + 208);
          sub_1AF75D364(v12, v13, v29);
          sub_1AF75D364(v12, v13, v30);
        }

        v12 = *(v11 + 232);
        v15 = *(v11 + 240);
        v10 = v71;
        if (v15 == v12)
        {
          v15 = 0;
          v12 = 0;
          *(v11 + 232) = 0;
          *(v11 + 240) = 0;
        }
      }

      ++v8;
      *(v11 + 248) = v15;
      *(v11 + 256) = v12;
      os_unfair_lock_unlock(*(v11 + 344));
      os_unfair_lock_unlock(*(v11 + 376));
      if (*(v11 + 240) == *(v11 + 232))
      {
        break;
      }

      v9 = 0;
      if (v8 == v76)
      {

        v3 = v70;
        goto LABEL_39;
      }
    }

    v31 = *(v11 + 188);
    v32 = *(v11 + 120);
    v33 = *v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v74 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      *v74 = sub_1AFC0D9B8(v33);
    }

    sub_1AF621324(v31, v32);
    v35 = *(v10 + 144);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 144) = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_1AF6247B0(v35);
    }

    *&v35[8 * v31 + 32] = 0;
    *(v10 + 144) = v35;
    v37 = *(v10 + 152);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 152) = v37;
    if ((v38 & 1) == 0)
    {
      sub_1AFC05EDC(0, *(v37 + 16) + 1, 1);
      v37 = *(v10 + 152);
    }

    v40 = *(v37 + 16);
    v39 = *(v37 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1AFC05EDC(v39 > 1, v40 + 1, 1);
      v37 = *(v10 + 152);
    }

    *(v37 + 16) = v40 + 1;
    *(v37 + 4 * v40 + 32) = v31;
    *(v10 + 152) = v37;
    v9 = (*(v11 + 240) == *(v11 + 232)) & v78;
    sub_1AF38C670(v11);
    sub_1AF38C680(v11);
  }

  while (v8 != v76);

  v3 = v70;
  v2 = v69;
  if (v9)
  {
LABEL_33:
    v41 = *v74;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *v74 = v41;
    if ((v42 & 1) == 0)
    {
      v41 = sub_1AFC0D9B8(v41);
    }

    *&v41[40 * v3 + 60] = 15;
    *v74 = v41;
LABEL_36:
    sub_1AF6260B0();
    sub_1AF626100();
    v44 = sub_1AF64BC10(&v79);
    v45 = *(v43 + 28);
    v46 = __OFSUB__(v45, 1);
    v47 = v45 - 1;
    if (v47 < 0 != v46 || (*(v43 + 28) = v47) != 0)
    {
      (v44)(&v79, 0);
      goto LABEL_39;
    }

    (v44)(&v79, 0);
    v50 = *(*v74 + 40 * v3 + 32);
    v51 = *(v50 + 16);
    if (!v51)
    {
LABEL_53:
      sub_1AF6AFDFC(v71, v2);
      goto LABEL_39;
    }

    v52 = *(v71 + 144) + 32;
    if (v51 == 1)
    {
      v53 = 0;
      v54 = 0;
    }

    else
    {
      v55 = 0;
      v56 = 0;
      v53 = v51 & 0x7FFFFFFFFFFFFFFELL;
      v57 = (v50 + 36);
      v58 = v51 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v59 = *(v52 + 8 * *(v57 - 1));
        v60 = *(v52 + 8 * *v57);
        v55 += *(v59 + 240) - *(v59 + 232);
        v56 += *(v60 + 240) - *(v60 + 232);
        v57 += 2;
        v58 -= 2;
      }

      while (v58);
      v54 = v56 + v55;
      if (v51 == v53)
      {
        goto LABEL_50;
      }
    }

    v61 = v51 - v53;
    v62 = (v50 + 4 * v53 + 32);
    do
    {
      v63 = *v62++;
      v54 += *(*(v52 + 8 * v63) + 240) - *(*(v52 + 8 * v63) + 232);
      --v61;
    }

    while (v61);
LABEL_50:
    if (v54 > 0)
    {
      goto LABEL_39;
    }

    if (v51 != 1)
    {
      v64 = *(v71 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
      v79 = 0;
      v80 = 0xE000000000000000;

      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2D490);
      v65 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v65);

      MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2D4B0);
      sub_1AFDFE458();
      v66 = v79;
      v67 = v80;
      v68 = sub_1AFDFDA08();
      v79 = 0;
      (*(*v64 + 88))(v68, &v79, v66, v67);
    }

    goto LABEL_53;
  }

LABEL_39:
  v48 = *v74;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v74 = v48;
  if ((result & 1) == 0)
  {
    result = sub_1AFC0D9B8(v48);
    v48 = result;
  }

  *(v48 + 40 * v3 + 56) = 0;
  *v74 = v48;
  return result;
}