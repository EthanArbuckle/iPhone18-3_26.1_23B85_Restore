uint64_t sub_29AE93338(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE93374(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE934CC(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE93508(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE93660(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE9369C(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE937F4(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE93830(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE93988(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE939C4(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE93B1C(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE93B58(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE93CB0(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE93CEC(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE93E44(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE93E80(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE93EB4(a1 + 16);
  return a1;
}

uint64_t sub_29AE93EB4(uint64_t a1)
{
  sub_29AE93EF0(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AE93F38(a1, v2);
  return a1;
}

uint64_t sub_29AE93EF0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AE93F38(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AE93F38(uint64_t a1, tbb::internal *this)
{
  if (*(this + 40))
  {
    sub_29AE93F7C(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

void sub_29AE93F7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a2 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a2 + 31) < 0)
  {
    v4 = *(a2 + 8);

    operator delete(v4);
  }
}

uint64_t sub_29AE93FF4(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE93E44(a1 + 16);
  return a1;
}

uint64_t sub_29AE94028(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE93CB0(a1 + 16);
  return a1;
}

uint64_t sub_29AE9405C(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE93B1C(a1 + 16);
  return a1;
}

uint64_t sub_29AE94090(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE93988(a1 + 16);
  return a1;
}

uint64_t sub_29AE940C4(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE937F4(a1 + 16);
  return a1;
}

uint64_t sub_29AE940F8(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE93660(a1 + 16);
  return a1;
}

uint64_t sub_29AE9412C(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE934CC(a1 + 16);
  return a1;
}

uint64_t sub_29AE94160(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE93338(a1 + 16);
  return a1;
}

uint64_t sub_29AE94194(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE931A4(a1 + 16);
  return a1;
}

uint64_t sub_29AE941C8(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE941FC(a1 + 16);
  return a1;
}

uint64_t sub_29AE941FC(uint64_t a1)
{
  sub_29AE94238(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AE94280(a1, v2);
  return a1;
}

uint64_t sub_29AE94238(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AE94280(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AE94280(uint64_t a1, tbb::internal *this)
{
  if (*(this + 640))
  {
    sub_29AE942C4(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

uint64_t sub_29AE942C4(uint64_t a1, uint64_t a2)
{
  std::mutex::~mutex((a2 + 576));
  result = sub_29AE94194(a2 + 16, v3);
  v5 = *(a2 + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29AE9430C(uint64_t a1)
{
  std::mutex::~mutex((a1 + 568));
  sub_29AE94194(a1 + 8, v2);
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29AE94358(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE93010(a1 + 16);
  return a1;
}

uint64_t sub_29AE9438C(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE92E7C(a1 + 16);
  return a1;
}

uint64_t sub_29AE943C0(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE92CA0(a1 + 16);
  return a1;
}

uint64_t sub_29AE943F4(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AE3E0BC(a1 + 16);
  return a1;
}

void sub_29AE94428(pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry **a1, pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::~HdSt_TextureHandleRegistry(v3);

    operator delete(v4);
  }
}

void sub_29AE94464(pxrInternal__aapl__pxrReserved__::HdStStagingBuffer **a1, pxrInternal__aapl__pxrReserved__::HdStStagingBuffer *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::~HdStStagingBuffer(v3);

    operator delete(v4);
  }
}

unint64_t *sub_29AE944C0(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingComputation,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingComputation>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingComputation,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingComputation>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = (a1 + 32 * a2 - 8);
    do
    {
      if (*v3)
      {
        sub_29A014BEC(*v3);
      }

      v4 = *(v3 - 2);
      if (v4)
      {
        sub_29A014BEC(v4);
      }

      v3 -= 4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_29AE94574(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x288);
  v5[80] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE946CC(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

unint64_t *sub_29AE94824(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingSource,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingSource>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingSource,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingSource>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + 40 * a2 - 32;
    do
    {
      v4 = (v3 + 8);
      sub_29A0176E4(&v4);
      if (*v3)
      {
        sub_29A014BEC(*v3);
      }

      v3 -= 40;
      --v2;
    }

    while (v2);
  }
}

void sub_29AE948E8(uint64_t a1)
{
  sub_29AE92CDC(a1 + 16);
  sub_29A1B0420(a1, v2);
  v3 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v3);
}

pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens_StaticTokenType *sub_29AE94938(atomic_ullong *a1)
{
  result = sub_29AE94980();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens_StaticTokenType::~HdResourceTypeTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens_StaticTokenType *sub_29AE94980()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens_StaticTokenType::HdResourceTypeTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AE949C4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2098D40;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AE94A1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = sub_29ADC1D14(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE94A3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE94A64(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = sub_29ADC1D14(v1);

    operator delete(v2);
  }
}

uint64_t sub_29AE94A98(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2098D90))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AE94AD8(void *a1, void *a2, void *a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29AE94B38(a1 + 2, 1uLL, a3);
  return a1;
}

void sub_29AE94B20(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AE94B38(void *a1, unint64_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v6 = a1[1];
    v7 = &v6[2 * a2];
    do
    {
      v8 = a3[1];
      *v6 = *a3;
      v6[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v6 += 2;
    }

    while (v6 != v7);
    a1[1] = v7;
  }

  return a1;
}

void sub_29AE94BD4(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, int *a3@<X3>, unsigned int *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x108uLL);
  sub_29AE94C68(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;

  sub_29A017894(a5, v10 + 4, (v10 + 3));
}

void *sub_29AE94C68(void *a1, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, int *a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098DB8;
  pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::HdStDispatchBuffer((a1 + 3), *a2, a3, *a4, *a5);
  return a1;
}

void sub_29AE94CF0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2098DB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE94D5C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, int *a3@<X3>, int *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x50uLL);
  result = sub_29AE94DD8(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29AE94DD8(void *a1, uint64_t *a2, uint64_t *a3, int *a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096E78;
  pxrInternal__aapl__pxrReserved__::HdStBufferResource::HdStBufferResource((a1 + 3), a2, *a3, a3[1], *a4, *a5);
  return a1;
}

uint64_t sub_29AE94E4C()
{
  if ((atomic_load_explicit(&qword_2A174F538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F538))
  {
    v1 = atomic_load(pxrInternal__aapl__pxrReserved__::HDST_ENABLE_RESOURCE_INSTANCING);
    if (!v1)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
    }

    byte_2A174F530 = *v1;
    __cxa_guard_release(&qword_2A174F538);
  }

  return byte_2A174F530;
}

void sub_29AE94EE8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE95000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AE9503C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesTopology>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesTopology>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE95154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AE95190(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE952A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AE952E4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v14 = 0;
  v15 = v5;
  v6 = &v15;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v14 + i) = byte_29B734F74[v8];
  }

  v9 = v14;
  v10 = a1 + 16;
  sub_29AE953C4(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[80];
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && (*a2 ^ v11[1]) < 8)
      {
        goto LABEL_11;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_11:
    *a3 = v11;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = v10;
}

void sub_29AE953C4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AE95460(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AE95460(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AE95460(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AE95544(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AE95544@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x288);
  *(result + 80) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[80];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AE94280(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AE95618(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29AE953C4(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    a3[80] = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[80];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && (*v14 ^ v16[1]) <= 7)
        {
          if (a3)
          {
            sub_29AE94280(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[80];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AE95808(a1 + 16, v12, a2);
      v14 = a3 + 1;
      v15 = v25;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void *sub_29AE95808(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x288);
  sub_29AE95880((v5 + 1), a3);
  v5[80] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AE95858(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AE95880(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AE95914(a1 + 8, a2 + 4);
  *(a1 + 568) = 850045863;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  return a1;
}

uint64_t sub_29AE95914(uint64_t a1, _WORD *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0x30);
  v4[5] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = v4;
  sub_29A1A8110(a1, 0, &v6);
  sub_29AE959DC(a1, a2);
  return a1;
}

void sub_29AE959DC(uint64_t a1, uint64_t a2)
{
  sub_29AE948E8(a1);
  *(a1 + 44) = *(a2 + 44);
  v4 = *(a2 + 8);
  __dmb(0xBu);
  *(a1 + 8) = v4;
  for (i = *(a2 + 32); i; i = *i)
  {
    if (*(i + 40))
    {
      break;
    }
  }

  sub_29AE95A74(a1, i, a2 + 16, 0, a2 + 16);
  *a1 = *a2;
}

void sub_29AE95A4C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29AE92CDC(v1 + 16);
  __cxa_rethrow();
}

void sub_29AE95A74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = a2;
  while (v8 != a4 || a3 != a5)
  {
    sub_29AE95AFC(a1, v8 + 1, 0, v11);
    do
    {
      v8 = *v8;
    }

    while (v8 && (v8[5] & 1) == 0);
  }
}

void sub_29AE95AFC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0x9E3779B97F4A7C15 * *a2;
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29ADCC1F0(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    a3[5] = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[5];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && v16[1] == *v14)
        {
          if (a3)
          {
            sub_29ADCC444(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[5];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AE95CE0(a1 + 16, v12, a2);
      v14 = a3 + 1;
      v15 = v25;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

uint64_t sub_29AE95CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = tbb::internal::allocate_via_handler_v3(0x30);
  v6 = *(a3 + 8);
  *(result + 8) = *a3;
  *(result + 16) = v6;
  v7 = *(a3 + 16);
  *(result + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 32) = *(a3 + 24);
  *(result + 40) = a2;
  *result = 0;
  return result;
}

uint64_t sub_29AE95D3C(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AE95914(a1 + 8, a3);
  *(a1 + 568) = 850045863;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  return a1;
}

uint64_t sub_29AE95DD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  sub_29AE95914(a1 + 8, (a2 + 8));
  *(a1 + 568) = 850045863;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  return a1;
}

void sub_29AE95E3C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferArrayRange>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferArrayRange>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE95F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AE95F90(uint64_t a1@<X0>, _BYTE *a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = *a2;
  if (a2[23] >= 0)
  {
    v6 = a2;
  }

  v7 = *v6;
  if (*v6)
  {
    v8 = 0;
    v9 = v6 + 1;
    do
    {
      v8 = (0x9E3779B97F4A7C15 * v8) ^ v7;
      v10 = *v9++;
      v7 = v10;
    }

    while (v10);
  }

  else
  {
    v8 = 0;
  }

  v19 = 0;
  v20 = v8;
  v11 = &v20;
  for (i = 7; i != -1; --i)
  {
    v13 = *v11;
    v11 = (v11 + 1);
    *(&v19 + i) = byte_29B734F74[v13];
  }

  v14 = v19;
  sub_29AE960B4(a1, v8, &v20);
  v15 = v20;
  if (v20)
  {
    v16 = v14 | 1;
    while (1)
    {
      v17 = *(v15 + 40);
      if (v17 > v16)
      {
        break;
      }

      if (v17 == v16)
      {
        v18 = sub_29A0EC4B8(a1 + 1, (v15 + 8), a2);
        v15 = v20;
        if (v18)
        {
          goto LABEL_18;
        }
      }

      v15 = *v15;
      v20 = v15;
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    v15 = 0;
LABEL_18:
    *a3 = v15;
  }

  else
  {
LABEL_16:
    *a3 = 0;
  }

  a3[1] = a1 + 16;
}

void sub_29AE960B4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AE96150(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AE96150(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AE96150(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AE96234(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AE96234@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x30);
  *(result + 5) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[5];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AE93F38(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AE96308(uint64_t a1@<X0>, _BYTE *a2@<X1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  if (a2[23] >= 0)
  {
    v8 = a2;
  }

  v9 = *v8;
  if (*v8)
  {
    v10 = 0;
    v11 = v8 + 1;
    do
    {
      v10 = (0x9E3779B97F4A7C15 * v10) ^ v9;
      v12 = *v11++;
      v9 = v12;
    }

    while (v12);
  }

  else
  {
    v10 = 0;
  }

  v28 = 0;
  v29 = v10;
  v13 = &v29;
  for (i = 7; i != -1; --i)
  {
    v15 = *v13;
    v13 = (v13 + 1);
    *(&v28 + i) = byte_29B734F74[v15];
  }

  v16 = v28 | 1;
  sub_29AE960B4(a1, v10, &v29);
  v17 = a1 + 16;
  if (a3)
  {
    a3[5] = v16;
    *a3 = 0;
  }

  v18 = a2;
  while (1)
  {
    v19 = v29;
    v20 = *v29;
    if (*v29)
    {
      v21 = *(v20 + 40);
      while (1)
      {
        v22 = v20;
        if (v21 > v16)
        {
          break;
        }

        if (v21 == v16 && sub_29A0EC4B8(a1 + 1, (v20 + 8), v18))
        {
          if (a3)
          {
            sub_29AE93F38(a1 + 16, a3);
          }

          *a4 = v20;
          *(a4 + 8) = v17;
          *(a4 + 16) = 0;
          return;
        }

        v29 = v20;
        v20 = *v20;
        if (!*v22)
        {
          v19 = v22;
          break;
        }

        v21 = *(v20 + 40);
        v19 = v22;
      }
    }

    if (!a3)
    {
      a3 = sub_29AE9652C(a1 + 16, v16, a2);
      v18 = a3 + 1;
      v19 = v29;
    }

    *a3 = v20;
    while (1)
    {
      v23 = v20;
      atomic_compare_exchange_strong(v19, &v23, a3);
      if (v23 == v20)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v19, 0, memory_order_relaxed);
      if (add_explicit != v20)
      {
        goto LABEL_28;
      }
    }

    add_explicit = v20;
LABEL_28:
    if (v20 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v17;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v17;
  *(a4 + 16) = 1;
  v26 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v26) > *(a1 + 44))
  {
    do
    {
      v27 = v26;
      atomic_compare_exchange_strong((a1 + 8), &v27, 2 * v26);
    }

    while (v27 != v26 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v26);
  }
}

void *sub_29AE9652C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  sub_29AA9FD0C(v5 + 1, a3);
  v5[5] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AE9657C(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AE965AC(tbb::internal::allocate_continuation_proxy *this)
{
  v38[50] = *MEMORY[0x29EDCA608];
  if (!*(this + 9))
  {
    *(this + 9) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 84);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 84) = v3 + 1;
      }
    }
  }

  v4 = *(this + 7);
  v5 = *(this + 2);
  v6 = *(this + 5);
  v7 = v5 - v6;
  if (v4 < v5 - v6)
  {
    v8 = *(this + 9);
    if (v8 > 1)
    {
      goto LABEL_12;
    }

    if (v8 && *(this + 84))
    {
      --*(this + 84);
      *(this + 9) = 0;
LABEL_12:
      while (1)
      {
        v9 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v9 - 11) = 1;
        *v9 = &unk_2A204C520;
        __dmb(0xBu);
        v9[8] = 0;
        *(this - 4) = v9;
        *(v9 - 3) = 2;
        v10 = tbb::internal::allocate_child_proxy::allocate(v9, 0x58uLL);
        *(v10 - 11) = 1;
        v11 = *(this + 1);
        v12 = *(this + 2);
        *v10 = &unk_2A2098E08;
        *(v10 + 8) = v11;
        v13 = *(this + 3);
        v14 = *(this + 4);
        *(v10 + 16) = v12;
        *(v10 + 24) = v13;
        v15 = *(this + 5) + (v12 - *(this + 5)) / 2;
        *(v10 + 32) = v14;
        *(v10 + 40) = v15;
        *(this + 1) = v14;
        *(this + 2) = v15;
        *(this + 3) = 0;
        v16 = *(this + 7);
        *(v10 + 48) = 0;
        *(v10 + 56) = v16;
        *(v10 + 64) = *(this + 8);
        v17 = *(this + 9) >> 1;
        *(this + 9) = v17;
        *(v10 + 72) = v17;
        *(v10 + 80) = 2;
        *(v10 + 84) = *(this + 84);
        (***(v10 - 40))();
        v4 = *(this + 7);
        v5 = *(this + 2);
        v6 = *(this + 5);
        v7 = v5 - v6;
        if (v4 >= v5 - v6)
        {
          break;
        }

        v18 = *(this + 9);
        if (v18 <= 1)
        {
          if (!v18 || !*(this + 84))
          {
            break;
          }

          --*(this + 84);
          *(this + 9) = 0;
        }
      }
    }
  }

  if (v4 < v7 && *(this + 84))
  {
    *v34 = 0x10000;
    v35[0] = *(this + 1);
    v35[1] = v5;
    v36 = *(this + 24);
    v19 = *(this + 6);
    v37[0] = v6;
    v37[1] = v19;
    v38[0] = v4;
    while (1)
    {
      sub_29AE96CA0(v34, *(this + 84));
      v20 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v20)
      {
        v21 = *(this + 84) + 1;
        *(this + 84) = v21;
        v22 = v34[2];
        if (v34[2] >= 2u)
        {
          v23 = v34[1];
          v24 = v34[v34[1] + 3];
          v25 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v25 - 11) = 1;
          *v25 = &unk_2A204C520;
          __dmb(0xBu);
          v25[8] = 0;
          *(this - 4) = v25;
          *(v25 - 3) = 2;
          v26 = tbb::internal::allocate_child_proxy::allocate(v25, 0x58uLL);
          v27 = &v35[7 * v23];
          *(v26 - 11) = 1;
          v28 = *v27;
          v29 = v27[1];
          *v26 = &unk_2A2098E08;
          *(v26 + 8) = v28;
          *(v26 + 16) = v29;
          *(v26 + 24) = *(v27 + 1);
          v30 = v27[5];
          *(v26 + 40) = v27[4];
          *(v26 + 48) = v30;
          *(v26 + 56) = v27[6];
          *(v26 + 64) = *(this + 8);
          v31 = *(this + 9) >> 1;
          *(this + 9) = v31;
          *(v26 + 72) = v31;
          *(v26 + 80) = 2;
          *(v26 + 84) = *(this + 84) - v24;
          (***(v26 - 40))();
          v22 = --v34[2];
          v34[1] = (v34[1] + 1) & 7;
          goto LABEL_25;
        }

        v32 = v34[0];
        if (v34[v34[0] + 3] < v21 && v38[7 * v34[0]] < v35[7 * v34[0] + 1] - v37[7 * v34[0]])
        {
          goto LABEL_25;
        }
      }

      else
      {
        v32 = v34[0];
      }

      sub_29AE96A14(this, &v35[7 * v32]);
      v22 = --v34[2];
      v34[0] = (v34[0] - 1) & 7;
LABEL_25:
      if (!v22 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29AE96A14(this, this + 1);
  return 0;
}

uint64_t sub_29AE96A14(uint64_t result, uint64_t *a2)
{
  v2 = a2[1];
  v4 = a2[3];
  v3 = a2[4];
  v25 = *a2;
  if (v3 != v2 || v4 != *a2)
  {
    v6 = result;
    v7 = a2[5];
    while (1)
    {
      v8 = *(v6 + 64);
      if (!v7)
      {
        result = sub_29A0EC0EC(v3);
        v9 = *(v4 + 32);
        __dmb(0xBu);
        v7 = (*(v9 + 8 * result) + 40 * (v3 - ((1 << result) & 0x1FFFFFFFFFFFFFFELL)));
      }

      v10 = v7[2];
      v11 = v7[3];
      while (v10 != v11)
      {
        v12 = atomic_load((*v10 + 8));
        if (v12 <= 1)
        {
          result = (*(**v10 + 40))();
          if (result)
          {
            v13 = atomic_load((*v10 + 8));
            if (v13 <= 1)
            {
              v26[0] = "hdSt/resourceRegistry.cpp";
              v26[1] = "operator()";
              v26[2] = 837;
              v26[3] = "auto pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_Commit()::(anonymous class)::operator()(_PendingSource &) const";
              v27 = 0;
              v20 = *(*(**v10 + 16))() & 0xFFFFFFFFFFFFFFF8;
              if (v20)
              {
                v21 = (v20 + 16);
                if (*(v20 + 39) < 0)
                {
                  v21 = *v21;
                }
              }

              else
              {
                v21 = "";
              }

              v22 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Name = %s", v18, v19, v21);
              pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v26, "source->IsResolved()", v22);
            }

            atomic_fetch_add(*v8, 1uLL);
            result = *v7;
            if (*v7)
            {
              result = (*(*result + 40))(result);
              if (result)
              {
                v14 = (*(**v10 + 64))();
                if (v14)
                {
                  v15 = v14;
                  v16 = (*(**v10 + 56))();
                  atomic_fetch_add(v8[1], pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(v16, v17) * v15);
                }

                result = sub_29AE96D50(v10);
                atomic_fetch_add(v8[1], result);
              }
            }
          }
        }

        v10 += 2;
      }

      v23 = v3 + 1;
      if (v7)
      {
        v24 = ((v3 - 1) & (v3 + 1)) == 0;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        v7 = 0;
      }

      else
      {
        v7 += 5;
      }

      ++v3;
      if (v23 == v2)
      {
        v3 = v23;
        if (v4 == v25)
        {
          break;
        }
      }
    }
  }

  return result;
}

unsigned __int8 *sub_29AE96CA0(unsigned __int8 *result, unsigned int a2)
{
  v2 = result[2];
  if (v2 <= 7)
  {
    v3 = result + 3;
    v4 = result + 16;
    v5 = *result;
    v6 = result[v5 + 3];
    do
    {
      if (a2 <= v6)
      {
        break;
      }

      v7 = &v4[56 * v5];
      v8 = *(v7 + 6);
      v9 = *(v7 + 1);
      v10 = *(v7 + 4);
      if (v8 >= v9 - v10)
      {
        break;
      }

      v11 = (v5 + 1) & 7;
      *result = v11;
      v12 = &v4[56 * v11];
      v13 = *(v7 + 3);
      *(v12 + 3) = v13;
      *(v12 + 4) = v10;
      *(v12 + 5) = *(v7 + 5);
      *(v12 + 6) = v8;
      *(v7 + 1) = v9;
      v14 = v10 + (v9 - v10) / 2;
      *(v7 + 3) = v13;
      *(v7 + 4) = v14;
      *v12 = v13;
      *(v12 + 1) = v14;
      *(v12 + 2) = 0;
      v6 = v3[v5] + 1;
      v3[v5] = v6;
      v3[v11] = v6;
      *(v7 + 5) = 0;
      *(v7 + 6) = v8;
      result[2] = v2 + 1;
      LOBYTE(v5) = (v5 + 1) & 7;
    }

    while (v2++ < 7);
  }

  return result;
}

uint64_t sub_29AE96D50(void *a1)
{
  if (!(*(**a1 + 88))(*a1))
  {
    return 0;
  }

  (*(**a1 + 96))(&v9);
  v2 = v9;
  v3 = v10;
  if (v9 == v10)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = (*(**v2 + 64))();
      if (v5)
      {
        v6 = (*(**v2 + 56))();
        v4 += pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(v6, v7) * v5;
      }

      v4 += sub_29AE96D50(v2);
      v2 += 16;
    }

    while (v2 != v3);
  }

  v11 = &v9;
  sub_29A0176E4(&v11);
  return v4;
}

void sub_29AE96E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A0176E4(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE96EB0(tbb::internal::allocate_continuation_proxy *this)
{
  v38[50] = *MEMORY[0x29EDCA608];
  if (!*(this + 9))
  {
    *(this + 9) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 84);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 84) = v3 + 1;
      }
    }
  }

  v4 = *(this + 7);
  v5 = *(this + 2);
  v6 = *(this + 5);
  v7 = v5 - v6;
  if (v4 < v5 - v6)
  {
    v8 = *(this + 9);
    if (v8 > 1)
    {
      goto LABEL_12;
    }

    if (v8 && *(this + 84))
    {
      --*(this + 84);
      *(this + 9) = 0;
LABEL_12:
      while (1)
      {
        v9 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v9 - 11) = 1;
        *v9 = &unk_2A204C520;
        __dmb(0xBu);
        v9[8] = 0;
        *(this - 4) = v9;
        *(v9 - 3) = 2;
        v10 = tbb::internal::allocate_child_proxy::allocate(v9, 0x58uLL);
        *(v10 - 11) = 1;
        v11 = *(this + 1);
        v12 = *(this + 2);
        *v10 = &unk_2A2098E50;
        *(v10 + 8) = v11;
        v13 = *(this + 3);
        v14 = *(this + 4);
        *(v10 + 16) = v12;
        *(v10 + 24) = v13;
        v15 = *(this + 5) + (v12 - *(this + 5)) / 2;
        *(v10 + 32) = v14;
        *(v10 + 40) = v15;
        *(this + 1) = v14;
        *(this + 2) = v15;
        *(this + 3) = 0;
        v16 = *(this + 7);
        *(v10 + 48) = 0;
        *(v10 + 56) = v16;
        *(v10 + 64) = *(this + 8);
        v17 = *(this + 9) >> 1;
        *(this + 9) = v17;
        *(v10 + 72) = v17;
        *(v10 + 80) = 2;
        *(v10 + 84) = *(this + 84);
        (***(v10 - 40))();
        v4 = *(this + 7);
        v5 = *(this + 2);
        v6 = *(this + 5);
        v7 = v5 - v6;
        if (v4 >= v5 - v6)
        {
          break;
        }

        v18 = *(this + 9);
        if (v18 <= 1)
        {
          if (!v18 || !*(this + 84))
          {
            break;
          }

          --*(this + 84);
          *(this + 9) = 0;
        }
      }
    }
  }

  if (v4 < v7 && *(this + 84))
  {
    *v34 = 0x10000;
    v35[0] = *(this + 1);
    v35[1] = v5;
    v36 = *(this + 24);
    v19 = *(this + 6);
    v37[0] = v6;
    v37[1] = v19;
    v38[0] = v4;
    while (1)
    {
      sub_29AE96CA0(v34, *(this + 84));
      v20 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v20)
      {
        v21 = *(this + 84) + 1;
        *(this + 84) = v21;
        v22 = v34[2];
        if (v34[2] >= 2u)
        {
          v23 = v34[1];
          v24 = v34[v34[1] + 3];
          v25 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v25 - 11) = 1;
          *v25 = &unk_2A204C520;
          __dmb(0xBu);
          v25[8] = 0;
          *(this - 4) = v25;
          *(v25 - 3) = 2;
          v26 = tbb::internal::allocate_child_proxy::allocate(v25, 0x58uLL);
          v27 = &v35[7 * v23];
          *(v26 - 11) = 1;
          v28 = *v27;
          v29 = v27[1];
          *v26 = &unk_2A2098E50;
          *(v26 + 8) = v28;
          *(v26 + 16) = v29;
          *(v26 + 24) = *(v27 + 1);
          v30 = v27[5];
          *(v26 + 40) = v27[4];
          *(v26 + 48) = v30;
          *(v26 + 56) = v27[6];
          *(v26 + 64) = *(this + 8);
          v31 = *(this + 9) >> 1;
          *(this + 9) = v31;
          *(v26 + 72) = v31;
          *(v26 + 80) = 2;
          *(v26 + 84) = *(this + 84) - v24;
          (***(v26 - 40))();
          v22 = --v34[2];
          v34[1] = (v34[1] + 1) & 7;
          goto LABEL_25;
        }

        v32 = v34[0];
        if (v34[v34[0] + 3] < v21 && v38[7 * v34[0]] < v35[7 * v34[0] + 1] - v37[7 * v34[0]])
        {
          goto LABEL_25;
        }
      }

      else
      {
        v32 = v34[0];
      }

      sub_29AE97310(&v35[7 * v32]);
      v22 = --v34[2];
      v34[0] = (v34[0] - 1) & 7;
LABEL_25:
      if (!v22 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29AE97310(this + 1);
  return 0;
}

void sub_29AE97310(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[3];
  v3 = a1[4];
  v5 = v3 == v1 && v4 == v2;
  if (!v5)
  {
    v6 = a1[5];
    v7 = 40 * v3;
    v8 = v1 - 1;
    while (1)
    {
      if (!v6)
      {
        v9 = sub_29A0EC0EC(v3);
        v10 = *(v4 + 32);
        __dmb(0xBu);
        v6 = (*(v10 + 8 * v9) - 80 * ((1 << v9) >> 1) + v7);
      }

      v11 = v6[1];
      *v6 = 0;
      v6[1] = 0;
      if (v11)
      {
        sub_29A014BEC(v11);
      }

      sub_29A017738(v6 + 2);
      v12 = v3 + 1;
      if (((v3 - 1) & (v3 + 1)) != 0)
      {
        v6 += 5;
      }

      else
      {
        v6 = 0;
      }

      v7 += 40;
      v5 = v8 == v3++;
      if (v5)
      {
        v3 = v12;
        if (v4 == v2)
        {
          break;
        }
      }
    }
  }
}

uint64_t sub_29AE973E0(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v13, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology>, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/instanceRegistry.h:243:27)]");
  if (a3 < 0)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      while ((*(v5 + 40) & 1) == 0)
      {
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      v8 = a1 + 16;
      do
      {
        v9 = *(v5 + 24);
        if (v9 && !*(v9 + 8) && (v10 = *(v5 + 32), *(v5 + 32) = v10 + 1, v10 >= a3))
        {
          sub_29AE974E8(a1, v5, v8, v12);
          v5 = v12[0];
          v8 = v12[1];
        }

        else
        {
          do
          {
            v5 = *v5;
          }

          while (v5 && (*(v5 + 40) & 1) == 0);
          ++v6;
        }

        if (v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == a1 + 16;
        }
      }

      while (!v11);
    }

    else
    {
LABEL_5:
      v6 = 0;
    }
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29AE974D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE974E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29ADCC1F0(a1, 0x9E3779B97F4A7C15 * *(a2 + 8), &v12);
  result = a1 + 16;
  v9 = v12;
  if (v12)
  {
    while (1)
    {
      v10 = *v9;
      if (*v9 == a2 && result == a3)
      {
        break;
      }

      v12 = *v9;
      v9 = v10;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v13 = v9;
    return sub_29AE9758C(a2, result, &v13, a4);
  }

  else
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = result;
  }

  return result;
}

uint64_t sub_29AE9758C@<X0>(uint64_t ***this@<X2>, uint64_t a2@<X0>, uint64_t ****a3@<X1>, uint64_t ***a4@<X8>)
{
  v6 = *this;
  **a3 = *this;
  result = sub_29ADCC444(a2, this);
  --*(a2 + 8);
  for (; v6; v6 = *v6)
  {
    if (v6[5])
    {
      break;
    }
  }

  *a4 = v6;
  a4[1] = a2;
  return result;
}

uint64_t sub_29AE975F0(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v13, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesTopology>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesTopology>, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/instanceRegistry.h:243:27)]");
  if (a3 < 0)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      while ((*(v5 + 40) & 1) == 0)
      {
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      v8 = a1 + 16;
      do
      {
        v9 = *(v5 + 24);
        if (v9 && !*(v9 + 8) && (v10 = *(v5 + 32), *(v5 + 32) = v10 + 1, v10 >= a3))
        {
          sub_29AE974E8(a1, v5, v8, v12);
          v5 = v12[0];
          v8 = v12[1];
        }

        else
        {
          do
          {
            v5 = *v5;
          }

          while (v5 && (*(v5 + 40) & 1) == 0);
          ++v6;
        }

        if (v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == a1 + 16;
        }
      }

      while (!v11);
    }

    else
    {
LABEL_5:
      v6 = 0;
    }
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29AE976E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE976F8(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v13, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder>, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/instanceRegistry.h:243:27)]");
  if (a3 < 0)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      while ((*(v5 + 40) & 1) == 0)
      {
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      v8 = a1 + 16;
      do
      {
        v9 = *(v5 + 24);
        if (v9 && !*(v9 + 8) && (v10 = *(v5 + 32), *(v5 + 32) = v10 + 1, v10 >= a3))
        {
          sub_29AE974E8(a1, v5, v8, v12);
          v5 = v12[0];
          v8 = v12[1];
        }

        else
        {
          do
          {
            v5 = *v5;
          }

          while (v5 && (*(v5 + 40) & 1) == 0);
          ++v6;
        }

        if (v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == a1 + 16;
        }
      }

      while (!v11);
    }

    else
    {
LABEL_5:
      v6 = 0;
    }
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29AE977EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE97800(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v13, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferArrayRange>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferArrayRange>, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/instanceRegistry.h:243:27)]");
  if (a3 < 0)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      while ((*(v5 + 40) & 1) == 0)
      {
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      v8 = a1 + 16;
      do
      {
        v9 = *(v5 + 24);
        if (v9 && !*(v9 + 8) && (v10 = *(v5 + 32), *(v5 + 32) = v10 + 1, v10 >= a3))
        {
          sub_29AE974E8(a1, v5, v8, v12);
          v5 = v12[0];
          v8 = v12[1];
        }

        else
        {
          do
          {
            v5 = *v5;
          }

          while (v5 && (*(v5 + 40) & 1) == 0);
          ++v6;
        }

        if (v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == a1 + 16;
        }
      }

      while (!v11);
    }

    else
    {
LABEL_5:
      v6 = 0;
    }
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29AE978F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE97908(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v13, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader>, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/instanceRegistry.h:243:27)]");
  if (a3 < 0)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      while ((*(v5 + 40) & 1) == 0)
      {
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      v8 = a1 + 16;
      do
      {
        v9 = *(v5 + 24);
        if (v9 && !*(v9 + 8) && (v10 = *(v5 + 32), *(v5 + 32) = v10 + 1, v10 >= a3))
        {
          sub_29AE974E8(a1, v5, v8, v12);
          v5 = v12[0];
          v8 = v12[1];
        }

        else
        {
          do
          {
            v5 = *v5;
          }

          while (v5 && (*(v5 + 40) & 1) == 0);
          ++v6;
        }

        if (v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == a1 + 16;
        }
      }

      while (!v11);
    }

    else
    {
LABEL_5:
      v6 = 0;
    }
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29AE979FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE97A10(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v13, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStRenderPassShader>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStRenderPassShader>, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/instanceRegistry.h:243:27)]");
  if (a3 < 0)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      while ((*(v5 + 40) & 1) == 0)
      {
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      v8 = a1 + 16;
      do
      {
        v9 = *(v5 + 24);
        if (v9 && !*(v9 + 8) && (v10 = *(v5 + 32), *(v5 + 32) = v10 + 1, v10 >= a3))
        {
          sub_29AE974E8(a1, v5, v8, v12);
          v5 = v12[0];
          v8 = v12[1];
        }

        else
        {
          do
          {
            v5 = *v5;
          }

          while (v5 && (*(v5 + 40) & 1) == 0);
          ++v6;
        }

        if (v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == a1 + 16;
        }
      }

      while (!v11);
    }

    else
    {
LABEL_5:
      v6 = 0;
    }
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29AE97B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE97B18(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v13, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStGLSLProgram>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStGLSLProgram>, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/instanceRegistry.h:243:27)]");
  if (a3 < 0)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      while ((*(v5 + 40) & 1) == 0)
      {
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      v8 = a1 + 16;
      do
      {
        v9 = *(v5 + 24);
        if (v9 && !*(v9 + 8) && (v10 = *(v5 + 32), *(v5 + 32) = v10 + 1, v10 >= a3))
        {
          sub_29AE974E8(a1, v5, v8, v12);
          v5 = v12[0];
          v8 = v12[1];
        }

        else
        {
          do
          {
            v5 = *v5;
          }

          while (v5 && (*(v5 + 40) & 1) == 0);
          ++v6;
        }

        if (v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == a1 + 16;
        }
      }

      while (!v11);
    }

    else
    {
LABEL_5:
      v6 = 0;
    }
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29AE97C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE97C20(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v13, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HioGlslfx>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HioGlslfx>, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/instanceRegistry.h:243:27)]");
  if (a3 < 0)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      while ((*(v5 + 40) & 1) == 0)
      {
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      v8 = a1 + 16;
      do
      {
        v9 = *(v5 + 24);
        if (v9 && !*(v9 + 8) && (v10 = *(v5 + 32), *(v5 + 32) = v10 + 1, v10 >= a3))
        {
          sub_29AE974E8(a1, v5, v8, v12);
          v5 = v12[0];
          v8 = v12[1];
        }

        else
        {
          do
          {
            v5 = *v5;
          }

          while (v5 && (*(v5 + 40) & 1) == 0);
          ++v6;
        }

        if (v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == a1 + 16;
        }
      }

      while (!v11);
    }

    else
    {
LABEL_5:
      v6 = 0;
    }
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29AE97D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE97D28(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v13, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<MaterialX__aapl::Shader>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<MaterialX__aapl::Shader>, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/instanceRegistry.h:243:27)]");
  if (a3 < 0)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      while ((*(v5 + 40) & 1) == 0)
      {
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      v8 = a1 + 16;
      do
      {
        v9 = *(v5 + 24);
        if (v9 && !*(v9 + 8) && (v10 = *(v5 + 32), *(v5 + 32) = v10 + 1, v10 >= a3))
        {
          sub_29AE974E8(a1, v5, v8, v12);
          v5 = v12[0];
          v8 = v12[1];
        }

        else
        {
          do
          {
            v5 = *v5;
          }

          while (v5 && (*(v5 + 40) & 1) == 0);
          ++v6;
        }

        if (v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == a1 + 16;
        }
      }

      while (!v11);
    }

    else
    {
LABEL_5:
      v6 = 0;
    }
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29AE97E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void *sub_29AE97E30@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  result = sub_29AE97E94(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29AE97E94(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098E98;
  pxrInternal__aapl__pxrReserved__::HdStCopyComputationGPU::HdStCopyComputationGPU(a1 + 3);
  return a1;
}

void sub_29AE97F10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2098E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

unint64_t sub_29AE97F7C()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "numberOfTextureObjects", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "numberOfTextureHandles", 0);
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A174F528, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A174F528);
  }

  return v0;
}

void sub_29AE980C0(_Unwind_Exception *a1)
{
  v4 = 8;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdStSamplerObject::HdStSamplerObject(void *result, uint64_t a2)
{
  *result = &unk_2A2098EE8;
  result[1] = a2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStSamplerObject::_GetHgi(pxrInternal__aapl__pxrReserved__::HdStSamplerObject *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    v7[0] = "hdSt/samplerObject.cpp";
    v7[1] = "_GetHgi";
    v7[2] = 33;
    v7[3] = "Hgi *pxrInternal__aapl__pxrReserved__::HdStSamplerObject::_GetHgi() const";
    v8 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "_samplerObjectRegistry", 0))
    {
      return 0;
    }

    v2 = *(this + 1);
  }

  ResourceRegistry = pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry::GetResourceRegistry(v2);
  if (!ResourceRegistry && (sub_29B2CAD34(v7) & 1) == 0)
  {
    return 0;
  }

  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(ResourceRegistry);
  if (!Hgi)
  {
    sub_29B2CAD7C(v6);
  }

  return Hgi;
}

pxrInternal__aapl__pxrReserved__::HdStUvSamplerObject *pxrInternal__aapl__pxrReserved__::HdStUvSamplerObject::HdStUvSamplerObject(pxrInternal__aapl__pxrReserved__::HdStUvSamplerObject *this, int32x2_t *a2, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a3, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry *a4)
{
  *this = &unk_2A2098F08;
  *(this + 1) = a4;
  v5 = *(a3 + 1);
  v10[0] = *a3;
  v10[1] = v5;
  v11 = *(a3 + 8);
  v6 = a2[7];
  *&v5 = vbsl_s8(vceq_s32(*&v10[0], 0x400000004), v6, *&v10[0]);
  v7 = vceq_s32(v6, 0x400000004);
  *&v10[0] = vbsl_s8(vceq_s32(*&v5, 0x500000005), vsub_s32(vbic_s8(v6, v7), v7), *&v5);
  *(this + 2) = sub_29AE982B8(a4, v10);
  *(this + 3) = v8;
  return this;
}

uint64_t sub_29AE982B8(pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry *a1, uint64_t a2)
{
  ResourceRegistry = pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry::GetResourceRegistry(a1);
  if (!ResourceRegistry && (sub_29B2CADC4(v14) & 1) == 0)
  {
    return 0;
  }

  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(ResourceRegistry);
  if (!Hgi && (sub_29B2CAE0C(v13) & 1) == 0)
  {
    return 0;
  }

  v10 = 0u;
  memset(v11, 0, 21);
  *__p = 0u;
  v12 = 0x1000000000;
  MEMORY[0x29C2C1A60](__p, "HdStSamplerObject");
  DWORD2(v10) = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiMagFilter(*(a2 + 16));
  pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiMinAndMipFilter(*(a2 + 12), &v10 + 3, v11);
  v11[1] = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiSamplerAddressMode(*a2);
  v11[2] = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiSamplerAddressMode(*(a2 + 4));
  HgiSamplerAddressMode = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiSamplerAddressMode(*(a2 + 8));
  v6 = *(a2 + 32);
  v11[3] = HgiSamplerAddressMode;
  HIDWORD(v12) = v6;
  v11[4] = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiBorderColor(*(a2 + 20));
  LOBYTE(v11[5]) = *(a2 + 24);
  LODWORD(v12) = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiCompareFunction(*(a2 + 28));
  v7 = (*(*Hgi + 80))(Hgi, __p);
  if (SBYTE7(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_29AE98408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStUvSamplerObject::~HdStUvSamplerObject(pxrInternal__aapl__pxrReserved__::HdStUvSamplerObject *this)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdStSamplerObject::_GetHgi(this);
  if (Hgi)
  {
    (*(*Hgi + 88))(Hgi, this + 16);
  }
}

{
  pxrInternal__aapl__pxrReserved__::HdStUvSamplerObject::~HdStUvSamplerObject(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HdStFieldSamplerObject *pxrInternal__aapl__pxrReserved__::HdStFieldSamplerObject::HdStFieldSamplerObject(pxrInternal__aapl__pxrReserved__::HdStFieldSamplerObject *this, const pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject *a2, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a3, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry *a4)
{
  *this = &unk_2A2098F28;
  *(this + 1) = a4;
  *(this + 2) = sub_29AE982B8(a4, a3);
  *(this + 3) = v5;
  return this;
}

{
  *this = &unk_2A2098F28;
  *(this + 1) = a4;
  *(this + 2) = sub_29AE982B8(a4, a3);
  *(this + 3) = v5;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStFieldSamplerObject::~HdStFieldSamplerObject(pxrInternal__aapl__pxrReserved__::HdStFieldSamplerObject *this)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdStSamplerObject::_GetHgi(this);
  if (Hgi)
  {
    (*(*Hgi + 88))(Hgi, this + 16);
  }
}

{
  pxrInternal__aapl__pxrReserved__::HdStFieldSamplerObject::~HdStFieldSamplerObject(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HdStPtexSamplerObject *pxrInternal__aapl__pxrReserved__::HdStPtexSamplerObject::HdStPtexSamplerObject(pxrInternal__aapl__pxrReserved__::HdStPtexSamplerObject *this, const pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject *a2, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a3, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry *a4)
{
  *this = &unk_2A2098F48;
  *(this + 1) = a4;
  if ((atomic_load_explicit(&qword_2A174F568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F568))
  {
    pxrInternal__aapl__pxrReserved__::HdSamplerParameters::HdSamplerParameters(&unk_2A174F540, 0, 0, 0, 1, 1, 0, 0, 0, 16);
    __cxa_guard_release(&qword_2A174F568);
  }

  *(this + 2) = sub_29AE982B8(a4, &unk_2A174F540);
  *(this + 3) = v6;
  sub_29AE986C4();
  *(this + 4) = sub_29AE982B8(a4, &unk_2A174F570);
  *(this + 5) = v7;
  return this;
}

void sub_29AE986C4()
{
  if ((atomic_load_explicit(&qword_2A174F598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F598))
  {
    pxrInternal__aapl__pxrReserved__::HdSamplerParameters::HdSamplerParameters(&unk_2A174F570, 1, 1, 1, 0, 0, 0, 0, 0, 1);

    __cxa_guard_release(&qword_2A174F598);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStPtexSamplerObject::~HdStPtexSamplerObject(pxrInternal__aapl__pxrReserved__::HdStPtexSamplerObject *this)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdStSamplerObject::_GetHgi(this);
  v3 = Hgi;
  if (Hgi)
  {
    (*(*Hgi + 88))(Hgi, this + 16);
    (*(*v3 + 88))(v3, this + 32);
  }
}

{
  pxrInternal__aapl__pxrReserved__::HdStPtexSamplerObject::~HdStPtexSamplerObject(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HdStUdimSamplerObject *pxrInternal__aapl__pxrReserved__::HdStUdimSamplerObject::HdStUdimSamplerObject(pxrInternal__aapl__pxrReserved__::HdStUdimSamplerObject *this, const pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject *a2, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a3, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry *a4)
{
  *this = &unk_2A2098F68;
  *(this + 1) = a4;
  if ((atomic_load_explicit(&qword_2A174F5C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F5C8))
  {
    pxrInternal__aapl__pxrReserved__::HdSamplerParameters::HdSamplerParameters(&unk_2A174F5A0, 0, 0, 0, 5, 1, 0, 0, 0, 16);
    __cxa_guard_release(&qword_2A174F5C8);
  }

  *(this + 2) = sub_29AE982B8(a4, &unk_2A174F5A0);
  *(this + 3) = v6;
  sub_29AE986C4();
  *(this + 4) = sub_29AE982B8(a4, &unk_2A174F570);
  *(this + 5) = v7;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStUdimSamplerObject::~HdStUdimSamplerObject(pxrInternal__aapl__pxrReserved__::HdStUdimSamplerObject *this)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdStSamplerObject::_GetHgi(this);
  v3 = Hgi;
  if (Hgi)
  {
    (*(*Hgi + 88))(Hgi, this + 16);
    (*(*v3 + 88))(v3, this + 32);
  }
}

{
  pxrInternal__aapl__pxrReserved__::HdStUdimSamplerObject::~HdStUdimSamplerObject(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry::HdSt_SamplerObjectRegistry(uint64_t this, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 32) = a2;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 32) = a2;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry::~HdSt_SamplerObjectRegistry(void **this)
{
  v1 = this;
  sub_29A0176E4(&v1);
}

{
  v1 = this;
  sub_29A0176E4(&v1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry::AllocateSampler(pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry *a1@<X0>, const void **a2@<X1>, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (*(**a2 + 8))();
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v19 = a1;
      {
        *&v15 = "hdSt/samplerObjectRegistry.cpp";
        *(&v15 + 1) = "_MakeTypedSamplerObject";
        v14 = "HdStSamplerObjectSharedPtr pxrInternal__aapl__pxrReserved__::_MakeTypedSamplerObject(const HdStTextureObjectSharedPtr &, const HdSamplerParameters &, HdSt_SamplerObjectRegistry *const) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Ptex]";
        goto LABEL_25;
      }

      sub_29AE99158(v12, a3, &v19, &v15);
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_12;
      }

      v19 = a1;
      {
        *&v15 = "hdSt/samplerObjectRegistry.cpp";
        *(&v15 + 1) = "_MakeTypedSamplerObject";
        v14 = "HdStSamplerObjectSharedPtr pxrInternal__aapl__pxrReserved__::_MakeTypedSamplerObject(const HdStTextureObjectSharedPtr &, const HdSamplerParameters &, HdSt_SamplerObjectRegistry *const) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Udim]";
        goto LABEL_25;
      }

      sub_29AE9929C(v10, a3, &v19, &v15);
    }
  }

  else
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v19 = a1;
        if (*a2)
        {
          if (v9)
          {
            sub_29AE99014(v9, a3, &v19, &v15);
            goto LABEL_19;
          }
        }

        *&v15 = "hdSt/samplerObjectRegistry.cpp";
        *(&v15 + 1) = "_MakeTypedSamplerObject";
        v14 = "HdStSamplerObjectSharedPtr pxrInternal__aapl__pxrReserved__::_MakeTypedSamplerObject(const HdStTextureObjectSharedPtr &, const HdSamplerParameters &, HdSt_SamplerObjectRegistry *const) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Field]";
LABEL_25:
        v16 = 43;
        v17 = v14;
        v18 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "Bad texture object");
        *a4 = 0;
        *(a4 + 8) = 0;
        return;
      }

LABEL_12:
      *&v15 = "hdSt/samplerObjectRegistry.cpp";
      *(&v15 + 1) = "_MakeSamplerObject";
      v16 = 83;
      v17 = "HdStSamplerObjectSharedPtr pxrInternal__aapl__pxrReserved__::_MakeSamplerObject(const HdStTextureObjectSharedPtr &, const HdSamplerParameters &, HdSt_SamplerObjectRegistry *const)";
      v18 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "Unsupported texture type");
      *a4 = 0;
      *(a4 + 8) = 0;
      return;
    }

    v19 = a1;
    {
      *&v15 = "hdSt/samplerObjectRegistry.cpp";
      *(&v15 + 1) = "_MakeTypedSamplerObject";
      v14 = "HdStSamplerObjectSharedPtr pxrInternal__aapl__pxrReserved__::_MakeTypedSamplerObject(const HdStTextureObjectSharedPtr &, const HdSamplerParameters &, HdSt_SamplerObjectRegistry *const) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Uv]";
      goto LABEL_25;
    }

    sub_29AE98ED0(v11, a3, &v19, &v15);
  }

LABEL_19:
  v13 = v15;
  *a4 = v15;
  if (v13)
  {
    sub_29A017F80(a1, a4);
  }
}

void sub_29AE98DC4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry::GarbageCollect(pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry *this)
{
  if (*(this + 24) == 1)
  {
    v2 = *(this + 1) - *this;
    v3 = v2 >> 4;
    if (v2)
    {
      v4 = 0;
      do
      {
        v5 = (*this + 16 * v4);
        v6 = v5[1];
        if (v6 && !v6->__shared_owners_)
        {
          v7 = v3 - 1;
          v8 = (*this + 16 * v3);
          while (1)
          {
            if (v4 == v7)
            {
              v3 = v4;
              goto LABEL_17;
            }

            v3 = v7;
            v9 = *(v8 - 1);
            if (!v9)
            {
              break;
            }

            --v7;
            v8 -= 2;
            if (*(v9 + 8))
            {
              v10 = *v8;
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v6 = v5[1];
              goto LABEL_14;
            }
          }

          v10 = *(v8 - 2);
LABEL_14:
          *v5 = v10;
          v5[1] = v9;
          if (v6)
          {
            sub_29A014BEC(v6);
          }
        }

        ++v4;
      }

      while (v4 < v3);
    }

LABEL_17:
    sub_29ABC6184(this, v3);
    *(this + 24) = 0;
  }
}

void *sub_29AE98ED0@<X0>(const pxrInternal__aapl__pxrReserved__::HdStUvTextureObject *a1@<X1>, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a2@<X2>, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  result = sub_29AE98F44(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE98F44(void *a1, const pxrInternal__aapl__pxrReserved__::HdStUvTextureObject *a2, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a3, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098FE8;
  pxrInternal__aapl__pxrReserved__::HdStUvSamplerObject::HdStUvSamplerObject((a1 + 3), a2, a3, *a4);
  return a1;
}

void sub_29AE98FC4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2098FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE99014@<X0>(const pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject *a1@<X1>, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a2@<X2>, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  result = sub_29AE99088(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE99088(void *a1, const pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject *a2, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a3, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2099038;
  pxrInternal__aapl__pxrReserved__::HdStFieldSamplerObject::HdStFieldSamplerObject((a1 + 3), a2, a3, *a4);
  return a1;
}

void sub_29AE99108(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2099038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE99158@<X0>(const pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject *a1@<X1>, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a2@<X2>, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  result = sub_29AE991CC(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE991CC(void *a1, const pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject *a2, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a3, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2099088;
  pxrInternal__aapl__pxrReserved__::HdStPtexSamplerObject::HdStPtexSamplerObject((a1 + 3), a2, a3, *a4);
  return a1;
}

void sub_29AE9924C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2099088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE9929C@<X0>(const pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject *a1@<X1>, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a2@<X2>, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  result = sub_29AE99310(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE99310(void *a1, const pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject *a2, const pxrInternal__aapl__pxrReserved__::HdSamplerParameters *a3, pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20990D8;
  pxrInternal__aapl__pxrReserved__::HdStUdimSamplerObject::HdStUdimSamplerObject((a1 + 3), a2, a3, *a4);
  return a1;
}

void sub_29AE99390(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20990D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HdStShaderCode::HdStShaderCode(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A2099128;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStShaderCode::~HdStShaderCode(pxrInternal__aapl__pxrReserved__::HdStShaderCode *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStShaderCode::ComputeHash(uint64_t *a1, uint64_t a2, char *a3)
{
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  if (v8 == v3)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = sub_29ADF32AC(&v8, a2, a3);
    v6 = (*(**v5 + 16))(*v5);
    v4 = bswap64(0x9E3779B97F4A7C55 * (v6 + ((v6 + v4 + (v6 + v4) * (v6 + v4)) >> 1)));
    sub_29ADF346C(&v8);
  }

  while (v8 != v9);
  return v4;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStShaderCode::GetParams(pxrInternal__aapl__pxrReserved__::HdStShaderCode *this)
{
  if ((atomic_load_explicit(&qword_2A174F5D0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CAE54();
  }

  return &qword_2A174F610;
}

void **sub_29AE99528(void **a1)
{
  v3 = a1;
  sub_29ADD60F4(&v3);
  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStShaderCode::GetPrimvarNames(pxrInternal__aapl__pxrReserved__::HdStShaderCode *this)
{
  if ((atomic_load_explicit(&qword_2A174F5D8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CAECC();
  }

  return &qword_2A174F628;
}

void *pxrInternal__aapl__pxrReserved__::HdStShaderCode::GetShaderData(pxrInternal__aapl__pxrReserved__::HdStShaderCode *this)
{
  if ((atomic_load_explicit(&qword_2A174F5E0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CAF44();
  }

  return &unk_2A174F600;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStShaderCode::GetNamedTextureHandles(pxrInternal__aapl__pxrReserved__::HdStShaderCode *this)
{
  if ((atomic_load_explicit(&qword_2A174F5E8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CAFB4();
  }

  return &qword_2A174F640;
}

void **sub_29AE99610(void **a1)
{
  v3 = a1;
  sub_29ADD61E4(&v3);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HdStShaderCode::ResourceContext::ResourceContext(void *this, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStShaderCode::GetLayout(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken **a2@<X1>, pxrInternal__aapl__pxrReserved__::VtDictionary *a3@<X8>)
{
  v5 = (*(*a1 + 120))(a1);
  if (v5)
  {
    memset(&v11, 0, sizeof(v11));
    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetLayoutAsDictionary(v5, a2, &v11, a3);
    size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v9[0] = "hdSt/shaderCode.cpp";
      v9[1] = "GetLayout";
      v9[2] = 156;
      v9[3] = "VtDictionary pxrInternal__aapl__pxrReserved__::HdStShaderCode::GetLayout(const TfTokenVector &) const";
      v10 = 0;
      v8 = &v11;
      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = v11.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Error parsing GLSLFX layout:\n%s\n", v8);
      v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    if (v7 < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174F5F8, memory_order_acquire) & 1) == 0)
    {
      sub_29B2CB02C();
    }

    pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a3, &qword_2A174F5F0);
  }
}

void sub_29AE997AC(_Unwind_Exception *a1)
{
  sub_29A184A10(v1, 0);
  if (*(v2 - 17) < 0)
  {
    operator delete(*(v2 - 40));
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::HdStSimpleLightingShader(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdStLightingShader::HdStLightingShader(this);
  *v2 = &unk_2A20991F0;
  pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::New(v2 + 3);
  *(this + 32) = 1;
  pxrInternal__aapl__pxrReserved__::HdStPackageSimpleLightingShader(&v8);
  v3 = operator new(0x138uLL);
  v4 = v3;
  if ((v8 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v8 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v6)
  {
    v6 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v4, EmptyString, v6 + 112);
  *(this + 5) = v4;
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  return this;
}

void sub_29AE9992C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AE9C770(v11);
  pxrInternal__aapl__pxrReserved__::HdStLightingShader::~HdStLightingShader(v10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::~HdStSimpleLightingShader(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this)
{
  *this = &unk_2A20991F0;
  pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::_CleanupAovBindings(this);
  v3 = (this + 216);
  sub_29AE9C7A0(&v3);
  v3 = (this + 192);
  sub_29AC943DC(&v3);
  v3 = (this + 160);
  sub_29ADD60F4(&v3);
  v3 = (this + 136);
  sub_29ADD61E4(&v3);
  v3 = (this + 112);
  sub_29ADD61E4(&v3);
  v3 = (this + 88);
  sub_29ADD61E4(&v3);
  v2 = *(this + 10);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29AE85E30(this + 48, *(this + 7));
  sub_29AE064D0(this + 5, 0);
  sub_29AE9C770(this + 3);
  pxrInternal__aapl__pxrReserved__::HdStLightingShader::~HdStLightingShader(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::~HdStSimpleLightingShader(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::_CleanupAovBindings(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this)
{
  if (*(this + 23))
  {
    v2 = *(this + 27);
    v3 = *(this + 28);
    while (v2 != v3)
    {
      v4 = *v2++;
      (*(*v4 + 24))(v4, *(this + 23));
    }
  }

  result = sub_29AE9AEF0(this + 27);
  v7 = *(this + 24);
  for (i = *(this + 25); i != v7; result = sub_29AC94464(this + 192, i))
  {
    i -= 80;
  }

  *(this + 25) = v7;
  return result;
}

uint64_t sub_29AE99B00(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::ComputeHash(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this)
{
  pxrInternal__aapl__pxrReserved__::HdStPackageSimpleLightingShader(&v18);
  if (*(this + 32) != 1)
  {
    NumLightsUsed = 0;
LABEL_6:
    v7 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v2 = sub_29AE99CDC(this + 3);
  NumLightsUsed = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetNumLightsUsed(v2);
  if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = sub_29AE99CDC(this + 3);
  if (!pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseShadows(v4))
  {
    goto LABEL_6;
  }

  v5 = sub_29AE99CDC(this + 3);
  v6 = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::ComputeNumShadowsUsed(v5);
  v7 = 1;
LABEL_7:
  v8 = v18;
  v9 = sub_29AE99CDC(this + 3);
  v10 = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::ComputeShaderSourceHash(v9);
  v11 = bswap64(0x9E3779B97F4A7C55 * (v8 & 0xFFFFFFFFFFFFFFF8));
  v12 = v7 + NumLightsUsed + ((v11 + NumLightsUsed + (v11 + NumLightsUsed) * (v11 + NumLightsUsed)) >> 1);
  v13 = v6 + ((v7 + v6 + ((v12 + v12 * v12) >> 1) + (v7 + v6 + ((v12 + v12 * v12) >> 1)) * (v7 + v6 + ((v12 + v12 * v12) >> 1))) >> 1) + v10;
  result = bswap64(0x9E3779B97F4A7C55 * (v10 + ((v13 + v13 * v13) >> 1)));
  for (i = *(this + 11); i != *(this + 12); i += 5)
  {
    v16 = *i & 0xFFFFFFFFFFFFFFF8;
    v17 = v16 + result + (v16 + result) * (v16 + result);
    result = bswap64(0x9E3779B97F4A7C55 * (i[4] + ((v16 + i[4] + (v17 >> 1) + (v16 + i[4] + (v17 >> 1)) * (v16 + i[4] + (v17 >> 1))) >> 1)));
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AE99CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AE99CDC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::GetSource(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v43, "hdSt", "virtual std::string pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::GetSource(const TfToken &) const");
  pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(&v41, *(this + 5), a2);
  if (SHIBYTE(v42) < 0)
  {
    if (!*(&v41 + 1))
    {
      sub_29A008D14(a3, v41, 0);
      goto LABEL_39;
    }
  }

  else if (!HIBYTE(v42))
  {
    *a3 = v41;
    *(a3 + 16) = v42;
    goto LABEL_39;
  }

  sub_29A008864(v35);
  if (*(this + 32) != 1)
  {
    NumLightsUsed = 0;
LABEL_10:
    v11 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v6 = sub_29AE99CDC(this + 3);
  NumLightsUsed = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetNumLightsUsed(v6);
  if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = sub_29AE99CDC(this + 3);
  if (!pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseShadows(v8))
  {
    goto LABEL_10;
  }

  v9 = sub_29AE99CDC(this + 3);
  v10 = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::ComputeNumShadowsUsed(v9);
  v11 = 1;
LABEL_11:
  v12 = sub_29A00911C(&v36, "#define NUM_LIGHTS ", 19);
  v13 = MEMORY[0x29C2C1F00](v12, NumLightsUsed);
  sub_29A00911C(v13, "\n", 1);
  v14 = sub_29A00911C(&v36, "#define USE_SHADOWS ", 20);
  v15 = MEMORY[0x29C2C1ED0](v14, v11);
  sub_29A00911C(v15, "\n", 1);
  v16 = sub_29A00911C(&v36, "#define NUM_SHADOWS ", 20);
  v17 = MEMORY[0x29C2C1F00](v16, v10);
  sub_29A00911C(v17, "\n", 1);
  v18 = sub_29AE99CDC(this + 3);
  v19 = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::ComputeShaderSource(v18, a2);
  if (*(v19 + 23) < 0)
  {
    sub_29A008D14(__p, *v19, v19[1]);
  }

  else
  {
    v20 = *v19;
    v34 = v19[2];
    *__p = v20;
  }

  v21 = HIBYTE(v34);
  if (v34 < 0)
  {
    v21 = __p[1];
  }

  if (v21)
  {
    sub_29A00911C(&v36, "#define HD_HAS_postSurfaceShader\n", 33);
  }

  std::stringbuf::str();
  if (v34 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v34 >= 0)
  {
    v23 = HIBYTE(v34);
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v31, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (v42 >= 0)
  {
    v26 = &v41;
  }

  else
  {
    v26 = v41;
  }

  if (v42 >= 0)
  {
    v27 = HIBYTE(v42);
  }

  else
  {
    v27 = *(&v41 + 1);
  }

  v28 = std::string::append(&v32, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&v28->__r_.__value_.__l + 2);
  *a3 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  v35[0] = *MEMORY[0x29EDC9528];
  v30 = *(MEMORY[0x29EDC9528] + 72);
  *(v35 + *(v35[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v36 = v30;
  v37 = MEMORY[0x29EDC9570] + 16;
  if (v39 < 0)
  {
    operator delete(v38[7].__locale_);
  }

  v37 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v38);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v40);
LABEL_39:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (v43)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v44, v43);
  }
}

void sub_29AE9A158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (*(v30 - 81) < 0)
  {
    operator delete(*(v30 - 104));
  }

  sub_29A0E9CEC(v30 - 80);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::SetCamera(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3)
{
  v5 = sub_29AE99CDC(this + 3);

  *&result = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetCamera(v5, a2, a3).n128_u64[0];
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::BindResources(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this, int a2, const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *a3)
{
  v5 = *(this + 6);
  v6 = this + 56;
  if (v5 != this + 56)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::Bind(a3, (v5 + 40));
      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_TextureBinder::BindResources(a3, this + 11);
}

void pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::UnbindResources(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this, int a2, const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *a3)
{
  v5 = *(this + 6);
  v6 = this + 56;
  if (v5 != this + 56)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::Unbind(a3, (v5 + 40));
      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_TextureBinder::UnbindResources(a3, this + 11);
}

__n128 pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddBufferBinding(uint64_t a1, __n128 *a2)
{
  v3 = &a2->n128_u64[1];
  v12 = &a2->n128_i64[1];
  v4 = sub_29AE85F74((a1 + 48), &a2->n128_i64[1], &unk_29B4D6118, &v12);
  v4[5] = a2->n128_u64[0];
  sub_29A166F2C(v4 + 6, v3);
  v6 = a2[1].n128_i64[0];
  v5 = a2[1].n128_i64[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[8];
  v4[7] = v6;
  v4[8] = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v9 = a2[2].n128_i64[0];
  v8 = a2[2].n128_i64[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v4[10];
  v4[9] = v9;
  v4[10] = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  result = a2[3];
  *(v4 + 104) = a2[4].n128_u8[0];
  *(v4 + 11) = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::ClearBufferBindings(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this)
{
  v1 = (this + 56);
  sub_29AE85E30(this + 48, *(this + 7));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddBindings(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  sub_29AE84BD4(a2, *(a1 + 64) - 0x71C71C71C71C71C7 * ((*(a2 + 8) - *a2) >> 3) + 1);
  v4 = *(a1 + 48);
  v5 = a1 + 56;
  v23 = v4;
  v24 = a1 + 56;
  while (v4 != v5)
  {
    v6 = sub_29AE848B8(&v23);
    sub_29AE84CBC(a2, (*v6 + 40));
    sub_29AE848F0(&v23);
    v4 = v23;
    v5 = v24;
  }

  v8 = *(a1 + 160);
  for (i = *(a1 + 168); i != v8; sub_29ADD617C(a1 + 160, i))
  {
    i -= 104;
  }

  *(a1 + 168) = v8;
  v9 = sub_29AE99CDC((a1 + 24));
  result = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetLights(v9);
  v11 = *result;
  v12 = *(result + 8);
  while (v11 != v12)
  {
    result = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::IsDomeLight(v11);
    if (result)
    {
      if (*(a1 + 72))
      {
        v13 = atomic_load(&qword_2A174F658);
        if (!v13)
        {
          v13 = sub_29AE9C7F4();
        }

        v22 = &off_2A2042A68 + 2;
        v14 = operator new(0x14uLL);
        *v14 = 0;
        *(v14 + 1) = 0;
        atomic_store(0, v14 + 4);
        v21 = v14;
        atomic_fetch_add_explicit(v14 + 4, 1u, memory_order_relaxed);
        pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&v23, 1, v13, &v21);
      }

      break;
    }

    v11 = (v11 + 408);
  }

  if (*(a1 + 32) == 1)
  {
    v15 = sub_29AE99CDC((a1 + 24));
    result = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseShadows(v15);
    if (result)
    {
      v16 = sub_29AE99CDC((a1 + 24));
      Shadows = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetShadows(v16);
      v18 = sub_29AB80170(Shadows);
      pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetNumShadowMapPasses(v18);
      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v19)
      {
        v19 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v22 = &off_2A2042A68 + 2;
      v20 = operator new(0x14uLL);
      *v20 = 0;
      *(v20 + 1) = 0;
      atomic_store(0, v20 + 4);
      v21 = v20;
      atomic_fetch_add_explicit(v20 + 4, 1u, memory_order_relaxed);
      pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&v23, 1, v19 + 24, &v21);
    }
  }

  return result;
}

void sub_29AE9A99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  sub_29AE10CA0(&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  sub_29A124AB0(&__p);
  sub_29A186B14(&a20);
  _Unwind_Resume(a1);
}

__guard *pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::GetTextureHandle(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v2 = *(this + 11);
  v3 = *(this + 12);
  if (v2 == v3)
  {
LABEL_4:
    v2 = &qword_2A174F690;
    if ((atomic_load_explicit(&qword_2A174F690, memory_order_acquire) & 1) == 0)
    {
      sub_29B2CB0A4(&v5);
      return v5;
    }
  }

  else
  {
    while ((*a2 ^ *v2) >= 8)
    {
      v2 += 5;
      if (v2 == v3)
      {
        goto LABEL_4;
      }
    }
  }

  return v2 + 2;
}

void pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::_GetAovPath(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_29A008E78(&v20, "aov_shadowMap");
  std::to_string(&v19, a2);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v19;
  }

  else
  {
    v7 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v20, v7, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v21, "_");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  pxrInternal__aapl__pxrReserved__::TfMakeValidIdentifier(EmptyString, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v22, p_p, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v24 = v16->__r_.__value_.__r.__words[2];
  v23 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(a3, &v23);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }
}

void sub_29AE9ABF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::_ResizeOrCreateBufferForAov(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this, unint64_t a2)
{
  v22[2] = *MEMORY[0x29EDCA608];
  v4 = sub_29AE99CDC(this + 3);
  Shadows = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetShadows(v4);
  v6 = sub_29AB80170(Shadows);
  ShadowMapSize = pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetShadowMapSize(v6, a2);
  v8 = sub_29AB80170(Shadows);
  v9 = pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetShadowMapSize(v8, a2);
  v10 = HIDWORD(v9);
  v20[0] = ShadowMapSize;
  v20[1] = HIDWORD(v9);
  v20[2] = 1;
  v11 = *(this + 24) + 80 * a2;
  (*(**(v11 + 8) + 128))(v22);
  if (!sub_29AE8A2C8(v22) || ((v12 = (*(**(v11 + 8) + 48))(*(v11 + 8)), v13 = (*(**(v11 + 8) + 56))(*(v11 + 8)), v12 == ShadowMapSize) ? (v14 = v13 == v10) : (v14 = 0), !v14))
  {
    (*(**(v11 + 8) + 40))(*(v11 + 8), v20, 12, 0);
    (*(**(v11 + 8) + 128))(v21);
    if ((sub_29AE8A2C8(v21) & 1) == 0)
    {
      v18[0] = "hdSt/simpleLightingShader.cpp";
      v18[1] = "_ResizeOrCreateBufferForAov";
      v18[2] = 383;
      v18[3] = "void pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::_ResizeOrCreateBufferForAov(size_t) const";
      v19 = 0;
      v15 = *v11 & 0xFFFFFFFFFFFFFFF8;
      if (v15)
      {
        v16 = (v15 + 16);
        if (*(v15 + 39) < 0)
        {
          v16 = *v16;
        }
      }

      else
      {
        v16 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 1, "No texture on render buffer for AOV %s", v16);
    }

    sub_29A186B14(v21);
  }

  return sub_29A186B14(v22);
}

void sub_29AE9AEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29A186B14(va);
  sub_29A186B14(v10 - 56);
  _Unwind_Resume(a1);
}

void *sub_29AE9AEF0(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AllocateTextureHandles(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this, const pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2)
{
  v74[0] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174F698, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CB10C();
  }

  if (*(this + 3))
  {
    v4 = sub_29AE99CDC(this + 3);
    Lights = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetLights(v4);
    v6 = Lights[1];
    v7 = &qword_2A174F6B0;
    while (v6 != *Lights)
    {
      v6 = (v6 - 408);
      if (pxrInternal__aapl__pxrReserved__::GlfSimpleLight::IsDomeLight(v6))
      {
        DomeLightTextureFile = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetDomeLightTextureFile(v6);
        v10 = *(DomeLightTextureFile + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(DomeLightTextureFile + 8);
        }

        if (!v10)
        {
          *&lpsrc = "hdSt/simpleLightingShader.cpp";
          *(&lpsrc + 1) = "_GetResolvedDomeLightEnvironmentFilePath";
          *v70 = 277;
          *&v70[8] = "const std::string &pxrInternal__aapl__pxrReserved__::_GetResolvedDomeLightEnvironmentFilePath(const GlfSimpleLightingContextRefPtr &)";
          v70[16] = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&lpsrc, "Dome light has no texture asset path.", v9);
          goto LABEL_18;
        }

        v7 = (DomeLightTextureFile + 24);
        v12 = *(DomeLightTextureFile + 47);
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(DomeLightTextureFile + 32);
        }

        if (!v12)
        {
          *&lpsrc = "hdSt/simpleLightingShader.cpp";
          *(&lpsrc + 1) = "_GetResolvedDomeLightEnvironmentFilePath";
          *v70 = 284;
          *&v70[8] = "const std::string &pxrInternal__aapl__pxrReserved__::_GetResolvedDomeLightEnvironmentFilePath(const GlfSimpleLightingContextRefPtr &)";
          v70[16] = 0;
          if (v11 >= 0)
          {
            v13 = DomeLightTextureFile;
          }

          else
          {
            v13 = *DomeLightTextureFile;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&lpsrc, "Texture asset path '%s' for dome light could not be resolved.", v9, v13);
        }

        break;
      }
    }
  }

  else
  {
LABEL_18:
    v7 = &qword_2A174F6B0;
  }

  if (*(this + 32) == 1)
  {
    v14 = sub_29AE99CDC(this + 3);
    UseShadows = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseShadows(v14);
  }

  else
  {
    UseShadows = 0;
  }

  if ((*(v7 + 23) & 0x8000000000000000) != 0)
  {
    if (v7[1])
    {
LABEL_24:
      if (UseShadows)
      {
        goto LABEL_31;
      }

LABEL_30:
      pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::_CleanupAovBindings(this);
      sub_29ADD6238(this + 136, *(this + 17));
      goto LABEL_31;
    }
  }

  else if (*(v7 + 23))
  {
    goto LABEL_24;
  }

  v16 = *(this + 10);
  *(this + 9) = 0;
  *(this + 10) = 0;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  sub_29ADD6238(this + 112, *(this + 14));
  if ((UseShadows & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  v17 = *(v7 + 23);
  if (v17 < 0)
  {
    v17 = v7[1];
    v18 = v17 == 0;
  }

  else
  {
    v18 = v17 == 0;
  }

  v19 = !v18;
  if ((v19 | UseShadows))
  {
    v20 = v17 != 0;
    v21 = *(this + 9);
    if (v21)
    {
      v20 = !pxrInternal__aapl__pxrReserved__::TfToken::operator==((*v21 + 32), v7) && v17 != 0;
    }

    RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a2);
    *(this + 23) = (*(*RenderDelegate + 48))(RenderDelegate);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&lpsrc, a2);
    if (lpsrc)
    {
    }

    else
    {
      v63 = 0;
    }

    if (*(&lpsrc + 1))
    {
      sub_29A014BEC(*(&lpsrc + 1));
    }

    if (v63 || (sub_29B2CB184(v67) & 1) != 0)
    {
      if (v20)
      {
        sub_29ADD6238(this + 112, *(this + 14));
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&lpsrc);
        v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v23)
        {
          v23 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v24 = operator new(0x18uLL);
        pxrInternal__aapl__pxrReserved__::HdStAssetUvSubtextureIdentifier::HdStAssetUvSubtextureIdentifier(v24, 1, 0, (v23 + 112));
        v64.__r_.__value_.__r.__words[0] = v24;
        pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(v68, &lpsrc, &v64);
        v25 = v64.__r_.__value_.__r.__words[0];
        v64.__r_.__value_.__r.__words[0] = 0;
        if (v25)
        {
          (*(*v25 + 16))(v25);
        }

        if ((lpsrc & 7) != 0)
        {
          atomic_fetch_add_explicit((lpsrc & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((atomic_load_explicit(&qword_2A174F688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F688))
        {
          pxrInternal__aapl__pxrReserved__::HdSamplerParameters::HdSamplerParameters(&unk_2A174F660, 1, 0, 0, 5, 1, 0, 0, 0, 1);
          __cxa_guard_release(&qword_2A174F688);
        }

        sub_29A014C58(&v66, this + 1);
        *&v64.__r_.__value_.__l.__data_ = v66;
        if (*(&v66 + 1))
        {
          atomic_fetch_add_explicit((*(&v66 + 1) + 16), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateTextureHandle(v63, v68, 0, &unk_2A174F660, 0, &v64, &lpsrc);
        v26 = lpsrc;
        lpsrc = 0uLL;
        v27 = *(this + 10);
        *(this + 72) = v26;
        if (v27)
        {
          sub_29A014BEC(v27);
          if (*(&lpsrc + 1))
          {
            sub_29A014BEC(*(&lpsrc + 1));
          }
        }

        if (v64.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_weak(v64.__r_.__value_.__l.__size_);
        }

        if (*(&v66 + 1))
        {
          sub_29A014BEC(*(&v66 + 1));
        }

        v28 = atomic_load(&qword_2A174F658);
        if (!v28)
        {
          v28 = sub_29AE9C7F4();
        }

        sub_29A014C58(&v64, this + 1);
        sub_29AE9BCE4(v28, v7, 1, 1, 1, v63, &v64, &lpsrc);
        v29 = atomic_load(&qword_2A174F658);
        if (!v29)
        {
          v29 = sub_29AE9C7F4();
        }

        sub_29A014C58(&v66, this + 1);
        sub_29AE9BCE4((v29 + 8), v7, 1, 1, 5, v63, &v66, &v71);
        v30 = atomic_load(&qword_2A174F658);
        if (!v30)
        {
          v30 = sub_29AE9C7F4();
        }

        sub_29A014C58(&v65, this + 1);
        sub_29AE9BCE4((v30 + 16), v7, 0, 0, 1, v63, &v65, v73);
        sub_29ADD6798(this + 14, &lpsrc, v74, 3uLL);
        for (i = 0; i != -120; i -= 40)
        {
          v32 = *&v73[i + 24];
          if (v32)
          {
            sub_29A014BEC(v32);
          }

          v33 = *&v73[i];
          if ((v33 & 7) != 0)
          {
            atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        if (*(&v65 + 1))
        {
          sub_29A014BEC(*(&v65 + 1));
        }

        if (*(&v66 + 1))
        {
          sub_29A014BEC(*(&v66 + 1));
        }

        if (v64.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(v64.__r_.__value_.__l.__size_);
        }

        pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(v68);
      }

      sub_29ADD6798(this + 11, *(this + 14), *(this + 15), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 15) - *(this + 14)) >> 3));
      if (UseShadows)
      {
        v34 = sub_29AE99CDC(this + 3);
        Shadows = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetShadows(v34);
        v36 = *(this + 24);
        v62 = (this + 192);
        v37 = *(this + 25);
        v38 = sub_29AB80170(Shadows);
        NumShadowMapPasses = pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetNumShadowMapPasses(v38);
        v40 = NumShadowMapPasses;
        v41 = (v37 - v36) >> 4;
        v42 = 0xCCCCCCCCCCCCCCCDLL * v41;
        if (0xCCCCCCCCCCCCCCCDLL * v41 >= NumShadowMapPasses)
        {
          if (0xCCCCCCCCCCCCCCCDLL * v41 > NumShadowMapPasses)
          {
            if (*(this + 23))
            {
              v52 = NumShadowMapPasses;
              do
              {
                v53 = *(*(this + 27) + 8 * v52);
                (*(*v53 + 24))(v53, *(this + 23));
                ++v52;
              }

              while (v42 != v52);
            }

            sub_29AE9C0B8(v62, v40);
            sub_29AE9C254(this + 27, v40);
          }
        }

        else
        {
          sub_29AE9C0B8(v62, NumShadowMapPasses);
          v43 = 80 * v42 + 72;
          v44 = v42;
          do
          {
            v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
            if (!v45)
            {
              v45 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
            }

            pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::_GetAovPath((v45 + 8), v44, &v64);
            v46 = operator new(0x58uLL);
            pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::HdStRenderBuffer(v46, v63, &v64);
            *&lpsrc = v46;
            sub_29AE9C154(this + 27, &lpsrc);
            v47 = lpsrc;
            *&lpsrc = 0;
            if (v47)
            {
              (*(*v47 + 8))(v47);
            }

            *(&v68[0] + 1) = &unk_2A2044C63;
            LODWORD(v68[0]) = 1065353216;
            LODWORD(lpsrc) = 12;
            BYTE4(lpsrc) = 0;
            sub_29A186EF4(&lpsrc + 1, v68);
            *&v70[8] = 0u;
            v71 = 0u;
            v72 = 1065353216;
            sub_29A186B14(v68);
            v48 = *v62;
            v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
            if (!v49)
            {
              v49 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
            }

            sub_29A166F2C(&v48[v43 - 72], v49 + 1);
            v50 = &v48[v43 - 32];
            if (v50 != &v70[8])
            {
              *&v48[v43] = v72;
              sub_29AC9488C(v50, v71, 0);
            }

            v51 = &v48[v43];
            sub_29A2258F0(v51 - 14, &v64);
            sub_29A225948(v51 - 13, v64.__r_.__value_.__r.__words + 1);
            sub_29A1854E8(v51 - 6, &lpsrc + 1);
            *(v51 - 8) = *(*(this + 28) - 8);
            sub_29AC1E22C(&v70[8]);
            sub_29A186B14(&lpsrc + 8);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v64.__r_.__value_.__r.__words + 1);
            sub_29A1DE3A4(&v64);
            ++v44;
            v43 += 80;
          }

          while (v40 != v44);
        }

        if (v40)
        {
          for (j = 0; j != v40; ++j)
          {
            pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::_ResizeOrCreateBufferForAov(this, j);
          }
        }

        if (v42 >= v40)
        {
          if (v42 > v40)
          {
            sub_29AE9C304(this + 17, v40);
          }
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::HdSamplerParameters::HdSamplerParameters(v68, 0, 0, 0, 1, 1, 2, 1, 3, 16);
          do
          {
            pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::GetTextureIdentifier(*(*(this + 27) + 8 * v42), 0, &lpsrc);
            sub_29A014C58(&v65, this + 1);
            *&v64.__r_.__value_.__l.__data_ = v65;
            if (*(&v65 + 1))
            {
              atomic_fetch_add_explicit((*(&v65 + 1) + 16), 1uLL, memory_order_relaxed);
            }

            pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateTextureHandle(v63, &lpsrc, 0, v68, 0, &v64, &v66);
            if (v64.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_weak(v64.__r_.__value_.__l.__size_);
            }

            if (*(&v65 + 1))
            {
              sub_29A014BEC(*(&v65 + 1));
            }

            pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(&lpsrc);
            v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
            if (!v55)
            {
              v55 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
            }

            if ((*(v55 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = ((*(v55 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v55);
            }

            std::to_string(&v64, v42);
            v57 = *(EmptyString + 23);
            if (v57 >= 0)
            {
              v58 = EmptyString;
            }

            else
            {
              v58 = *EmptyString;
            }

            if (v57 >= 0)
            {
              v59 = *(EmptyString + 23);
            }

            else
            {
              v59 = EmptyString[1];
            }

            v60 = std::string::insert(&v64, 0, v58, v59);
            v61 = *&v60->__r_.__value_.__l.__data_;
            *v70 = *(&v60->__r_.__value_.__l + 2);
            lpsrc = v61;
            v60->__r_.__value_.__l.__size_ = 0;
            v60->__r_.__value_.__r.__words[2] = 0;
            v60->__r_.__value_.__r.__words[0] = 0;
            pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v65);
            if ((v70[7] & 0x80000000) != 0)
            {
              operator delete(lpsrc);
            }

            if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v64.__r_.__value_.__l.__data_);
            }

            *&lpsrc = v65;
            if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              *&lpsrc = lpsrc & 0xFFFFFFFFFFFFFFF8;
            }

            DWORD2(lpsrc) = 0;
            *v70 = v66;
            if (*(&v66 + 1))
            {
              atomic_fetch_add_explicit((*(&v66 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            *&v70[16] = bswap64(0x9E3779B97F4A7C55 * (v65 & 0xFFFFFFFFFFFFFFF8));
            sub_29AE62F18(this + 136, &lpsrc);
            if (*&v70[8])
            {
              sub_29A014BEC(*&v70[8]);
            }

            if ((lpsrc & 7) != 0)
            {
              atomic_fetch_add_explicit((lpsrc & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v65 & 7) != 0)
            {
              atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (*(&v66 + 1))
            {
              sub_29A014BEC(*(&v66 + 1));
            }

            ++v42;
          }

          while (v40 != v42);
        }
      }

      sub_29AE9D1E0(this + 11, *(this + 12), *(this + 17), *(this + 18), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 18) - *(this + 17)) >> 3));
    }
  }

  else
  {
    sub_29ADD6238(this + 88, *(this + 11));
  }
}

void sub_29AE9BA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40)
{
  __cxa_guard_abort(&qword_2A174F688);
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(&a29);
  _Unwind_Resume(a1);
}

void sub_29AE9BCE4(uint64_t *a1@<X0>, const void **a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, std::string::size_type *a7@<X6>, uint64_t a8@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = a2[1];
  }

  v17 = &v38;
  v18 = sub_29A022DE0(&v38, v16 + 1);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v38.__r_.__value_.__r.__words[0];
  }

  if (v16)
  {
    if (*(a2 + 23) >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    v18 = memmove(v17, v19, v16);
  }

  *(&v17->__r_.__value_.__l.__data_ + v16) = 91;
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
  }

  v21 = *(EmptyString + 23);
  if (v21 >= 0)
  {
    v22 = EmptyString;
  }

  else
  {
    v22 = *EmptyString;
  }

  if (v21 >= 0)
  {
    v23 = *(EmptyString + 23);
  }

  else
  {
    v23 = EmptyString[1];
  }

  v24 = std::string::append(&v38, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v39, "]");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v36 = v26->__r_.__value_.__r.__words[2];
  *__p = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v40);
  v28 = operator new(8uLL);
  pxrInternal__aapl__pxrReserved__::HdStDynamicUvSubtextureIdentifier::HdStDynamicUvSubtextureIdentifier(v28);
  v37 = v28;
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(v41, &v40, &v37);
  v29 = v37;
  v37 = 0;
  if (v29)
  {
    (*(*v29 + 16))(v29);
  }

  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::HdSamplerParameters::HdSamplerParameters(__p, a3, 0, a4, a5, 1, 0, 0, 0, 1);
  v30 = a7[1];
  v38.__r_.__value_.__r.__words[0] = *a7;
  v38.__r_.__value_.__l.__size_ = v30;
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateTextureHandle(a6, v41, 0, __p, 0, &v38, &v39);
  if (v38.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_weak(v38.__r_.__value_.__l.__size_);
  }

  v31 = *a1;
  *a8 = *a1;
  if ((v31 & 7) != 0)
  {
    v32 = (v31 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a8 = v32;
    }
  }

  *(a8 + 8) = 0;
  size = v39.__r_.__value_.__l.__size_;
  *(a8 + 16) = v39.__r_.__value_.__r.__words[0];
  *(a8 + 24) = size;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
    v34 = v39.__r_.__value_.__l.__size_;
  }

  else
  {
    v34 = 0;
  }

  *(a8 + 32) = bswap64(0x9E3779B97F4A7C55 * (*a1 & 0xFFFFFFFFFFFFFFF8));
  if (v34)
  {
    sub_29A014BEC(v34);
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(v41);
}

void sub_29AE9BFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, std::__shared_weak_count *a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier((v32 - 96));
  _Unwind_Resume(a1);
}

void *sub_29AE9C070(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void **sub_29AE9C0B8(void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_29AE9CA0C(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 80 * a2;
    while (v3 != v7)
    {
      v3 -= 80;
      result = sub_29AC94464(v2, v3);
    }

    *(v2 + 8) = v7;
  }

  return result;
}

const void **sub_29AE9C154(const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      sub_29A00C9A4();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v23[4] = result;
    if (v14)
    {
      v15 = sub_29A00C9BC(result, v14);
      v14 = v16;
      v8 = *v3;
      v9 = v3[1] - *v3;
    }

    else
    {
      v15 = 0;
    }

    v17 = &v15[8 * v10];
    v18 = &v15[8 * v14];
    v19 = *a2;
    *a2 = 0;
    v20 = &v17[-8 * (v9 >> 3)];
    *v17 = v19;
    v7 = v17 + 8;
    memcpy(v20, v8, v9);
    v21 = *v3;
    *v3 = v20;
    v3[1] = v7;
    v22 = v3[2];
    v3[2] = v18;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = sub_29AE9CE84(v23);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void sub_29AE9C254(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_29AE9CF30(a1, v5);
  }
}

void sub_29AE9C304(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29AE9D054(a1, v4);
  }

  else if (!v3)
  {
    sub_29ADD6238(a1, *a1 + 40 * a2);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddResourcesFromTextures(pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader *this, pxrInternal__aapl__pxrReserved__::HdStShaderCode::ResourceContext *a2)
{
  if (*(this + 9))
  {
    sub_29A014C58(&v25, this + 1);
    v4 = v25;
    v5 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      if (!v5)
      {
        v32 = v6;
        v33 = 0;
LABEL_10:
        if (v26)
        {
          sub_29A014BEC(v26);
        }

        v25 = 0;
        v26 = 0;
        v7 = atomic_load(&qword_2A174F658);
        if (!v7)
        {
          v7 = sub_29AE9C7F4();
        }

        sub_29AE9D5D0(v7, &v32, &v30);
        v31 = v30;
        v30 = 0uLL;
        pxrInternal__aapl__pxrReserved__::HdStShaderCode::ResourceContext::AddComputation(a2, &v25, &v31, 0);
        if (*(&v31 + 1))
        {
          sub_29A014BEC(*(&v31 + 1));
        }

        if (*(&v30 + 1))
        {
          sub_29A014BEC(*(&v30 + 1));
        }

        if (v26)
        {
          sub_29A014BEC(v26);
        }

        v8 = **(this + 9);
        {
          v25 = "hdSt/simpleLightingShader.cpp";
          v26 = "AddResourcesFromTextures";
          v27 = 610;
          v28 = "virtual void pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddResourcesFromTextures(ResourceContext &) const";
          v29 = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v25, "srcTextureObject", 0) & 1) == 0)
          {
LABEL_55:
            if (v33)
            {
              std::__shared_weak_count::__release_weak(v33);
            }

            return;
          }

          v9 = 0;
        }

        if (v9[9])
        {
          Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v9[9]);
          v12 = *(Descriptor + 52);
          if (v12 <= *(Descriptor + 56))
          {
            v12 = *(Descriptor + 56);
          }

          v13 = log2(v12);
          v14 = 0;
          v15 = v13;
          if (v13 <= 1)
          {
            v15 = 1;
          }

          v23 = 0;
          v24 = v15;
          do
          {
            v16 = 0.0;
            v17 = v15 - 1;
            if (v17)
            {
              v16 = v14 / v17;
            }

            v22 = v16;
            v25 = 0;
            v26 = 0;
            v18 = atomic_load(&qword_2A174F658);
            if (!v18)
            {
              v18 = sub_29AE9C7F4();
            }

            sub_29AE9D728(v18 + 8, &v32, &v24, &v23, &v22, &v30);
            v31 = v30;
            v30 = 0uLL;
            pxrInternal__aapl__pxrReserved__::HdStShaderCode::ResourceContext::AddComputation(a2, &v25, &v31, 0);
            if (*(&v31 + 1))
            {
              sub_29A014BEC(*(&v31 + 1));
            }

            if (*(&v30 + 1))
            {
              sub_29A014BEC(*(&v30 + 1));
            }

            if (v26)
            {
              sub_29A014BEC(v26);
            }

            v15 = v24;
            v14 = v23 + 1;
            v23 = v14;
          }

          while (v14 < v24);
          v25 = 0;
          v26 = 0;
          v19 = atomic_load(&qword_2A174F658);
          if (!v19)
          {
            v19 = sub_29AE9C7F4();
          }

          sub_29AE9D5D0(v19 + 16, &v32, &v30);
          v31 = v30;
          v30 = 0uLL;
          pxrInternal__aapl__pxrReserved__::HdStShaderCode::ResourceContext::AddComputation(a2, &v25, &v31, 0);
          if (*(&v31 + 1))
          {
            sub_29A014BEC(*(&v31 + 1));
          }

          if (*(&v30 + 1))
          {
            sub_29A014BEC(*(&v30 + 1));
          }

          if (v26)
          {
            sub_29A014BEC(v26);
          }
        }

        else
        {
          v25 = "hdSt/simpleLightingShader.cpp";
          v26 = "AddResourcesFromTextures";
          v27 = 617;
          v28 = "virtual void pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddResourcesFromTextures(ResourceContext &) const";
          v29 = 0;
          v20 = v9[4] & 0xFFFFFFFFFFFFFFF8;
          if (v20)
          {
            v21 = (v20 + 16);
            if (*(v20 + 39) < 0)
            {
              v21 = *v21;
            }
          }

          else
          {
            v21 = "";
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v25, "Invalid texture for dome light environment map at %s", v10, v21);
        }

        goto LABEL_55;
      }

      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v32 = v6;
      v33 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
    }

    else
    {
      v32 = 0;
      v33 = 0;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    sub_29A014BEC(v5);
    goto LABEL_10;
  }
}

void sub_29AE9C704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 48);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE9C7A0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AE9AEF0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

unint64_t sub_29AE9C7F4()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "domeLightIrradiance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "domeLightPrefilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "domeLightBRDF", 0);
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A174F658, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A174F658);
  }

  return v0;
}

void sub_29AE9C970(_Unwind_Exception *a1)
{
  v4 = 16;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void **sub_29AE9CA0C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4) >= a2)
  {

    return sub_29AE9CB68(a1, a2);
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x333333333333333)
    {
      sub_29A00C9A4();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x199999999999999)
    {
      v9 = 0x333333333333333;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      v10 = sub_29A09AEA8(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v16 = v10;
    v17 = &v10[80 * v6];
    *&v18 = v17;
    *(&v18 + 1) = &v10[80 * v9];
    sub_29AE9CBF0(&v16, a2);
    v12 = *(a1 + 8);
    v13 = v17 + *a1 - v12;
    sub_29AE9CC78(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    return sub_29AE9CE08(&v16);
  }
}

void sub_29AE9CB54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AE9CE08(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AE9CB68(_DWORD *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  if (a2)
  {
    v4 = v3 + 80 * a2;
    v5 = v3 + 16;
    do
    {
      *(v5 - 16) = 0;
      *(v5 - 8) = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v5);
      result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((v5 + 4));
      *(v5 + 48) = 0;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *(v5 + 56) = 1065353216;
      v6 = v5 + 64;
      v5 += 80;
    }

    while (v6 != v4);
  }

  else
  {
    v4 = *(result + 1);
  }

  *(v2 + 1) = v4;
  return result;
}

_DWORD *sub_29AE9CBF0(_DWORD *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 2);
  if (a2)
  {
    v4 = v3 + 80 * a2;
    v5 = v3 + 16;
    do
    {
      *(v5 - 16) = 0;
      *(v5 - 8) = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v5);
      result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((v5 + 4));
      *(v5 + 48) = 0;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *(v5 + 56) = 1065353216;
      v6 = v5 + 64;
      v5 += 80;
    }

    while (v6 != v4);
  }

  else
  {
    v4 = *(result + 2);
  }

  *(v2 + 2) = v4;
  return result;
}

uint64_t sub_29AE9CC78(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = a4;
  v8 = a4;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v8;
  v6 = 0;
  if (a2 != a3)
  {
    sub_29AE9CD44(a1, a4, a2);
  }

  v6 = 1;
  return sub_29AC94748(v5);
}

void sub_29AE9CD44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a2 = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a2 + 8) = a3[1];
  sub_29A1E21F4((a2 + 16), a3 + 4);
  sub_29A1E2240((a2 + 20), a3 + 5);
  sub_29A186EF4((a2 + 24), a3 + 3);
  sub_29AC86758(a2 + 40, (a3 + 5));
}

void sub_29AE9CDCC(_Unwind_Exception *a1)
{
  sub_29A186B14(v1 + 24);
  sub_29A1DCEA8((v1 + 16));
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void **sub_29AE9CE08(void **a1)
{
  sub_29AE9CE3C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AE9CE3C(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 80;
      result = sub_29AC94464(v4, v1 - 80);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29AE9CE84(uint64_t a1)
{
  sub_29AE9CEBC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29AE9CEBC(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_29AE9CF30(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_29A00C9A4();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v17[4] = a1;
    if (v11)
    {
      v12 = sub_29A00C9BC(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v9];
    v14 = &v12[8 * v11];
    bzero(v13, 8 * a2);
    memcpy(&v13[-8 * (v7 >> 3)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-8 * (v7 >> 3)];
    *(a1 + 8) = &v13[8 * a2];
    v16 = *(a1 + 16);
    *(a1 + 16) = v14;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    sub_29AE9CE84(v17);
  }
}

void sub_29AE9D054(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = a1;
    if (v9)
    {
      v10 = sub_29A10E224(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v17 = v10;
    v18 = &v10[40 * v6];
    *(&v19 + 1) = &v10[40 * v9];
    v12 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v18, v12);
    *&v19 = &v18[v12];
    v13 = *(a1 + 8);
    v14 = &v18[*a1 - v13];
    sub_29AE64278(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    v16 = *(a1 + 16);
    *(a1 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    sub_29AE6438C(&v17);
  }
}

void sub_29AE9D1CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AE6438C(va);
  _Unwind_Resume(a1);
}

char *sub_29AE9D1E0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) >= a5)
    {
      v18 = v10 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - a2) >> 3)) >= a5)
      {
        v20 = 5 * a5;
        sub_29AE9D3D0(a1, a2, a1[1], a2 + 40 * a5);
        v19 = &v7[v20];
      }

      else
      {
        a1[1] = sub_29ADD6924(a1, (a3 + v18), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_29AE9D3D0(a1, v5, v10, &v5[40 * a5]);
        v19 = v7 + v18;
      }

      sub_29ADD6AC0(v26, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 3);
    if (v12 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x333333333333333)
    {
      v15 = 0x666666666666666;
    }

    else
    {
      v15 = v12;
    }

    v16 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
    v26[4] = a1;
    if (v15)
    {
      v17 = sub_29A10E224(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[40 * v16];
    v26[0] = v17;
    v26[1] = v21;
    v26[3] = &v17[40 * v15];
    v22 = 5 * a5;
    v23 = v21 + 40 * a5;
    v24 = 8 * v22;
    do
    {
      sub_29ADD69B8(a1, v21, v7);
      v21 += 40;
      v7 += 5;
      v24 -= 40;
    }

    while (v24);
    v26[2] = v23;
    v5 = sub_29AE9D458(a1, v26, v5);
    sub_29AE6438C(v26);
  }

  return v5;
}

uint64_t sub_29AE9D3D0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *v9 = 0;
      *(v8 + 8) = *(v9 + 8);
      *(v8 + 16) = *(v9 + 16);
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v8 + 32) = *(v9 + 32);
      v9 += 40;
      v8 += 40;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29AE9D514(&v11, a2, v7, v6);
}

uint64_t sub_29AE9D458(uint64_t a1, void *a2, char *a3)
{
  v6 = a2[1];
  sub_29AE64278(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_29AE64278(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_29AE9D514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = (a4 - 40);
      if (v7 != a4)
      {
        if ((*v8 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v8 = *(v7 - 40);
        *(v7 - 40) = 0;
      }

      *(a4 - 32) = *(v7 - 32);
      v9 = *(v7 - 24);
      *(v7 - 24) = 0;
      *(v7 - 16) = 0;
      v10 = *(a4 - 16);
      *(a4 - 24) = v9;
      if (v10)
      {
        sub_29A014BEC(v10);
      }

      *(a4 - 8) = *(v7 - 8);
      v7 -= 40;
      a4 -= 40;
    }

    while (v7 != a2);
  }

  return a3;
}

void *sub_29AE9D5D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x48uLL);
  result = sub_29AE9D634(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AE9D634(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20992A0;
  pxrInternal__aapl__pxrReserved__::HdSt_DomeLightComputationGPU::HdSt_DomeLightComputationGPU(a1 + 3, a2, a3, 1, 0, -1.0);
  return a1;
}

void sub_29AE9D6BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20992A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE9D728@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned int *a3@<X3>, unsigned int *a4@<X4>, float *a5@<X5>, void *a6@<X8>)
{
  v12 = operator new(0x48uLL);
  result = sub_29AE9D7B4(v12, a1, a2, a3, a4, a5);
  *a6 = v12 + 3;
  a6[1] = v12;
  return result;
}

void *sub_29AE9D7B4(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5, float *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20992A0;
  pxrInternal__aapl__pxrReserved__::HdSt_DomeLightComputationGPU::HdSt_DomeLightComputationGPU(a1 + 3, a2, a3, *a4, *a5, *a6);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationCPU::HdSt_SmoothNormalsComputationCPU(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, char a6)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *result = &unk_2A20992F0;
  v7 = *a3;
  v6 = a3[1];
  *(result + 32) = a2;
  *(result + 40) = v7;
  *(result + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a4;
  *(result + 56) = *a4;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 56) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = a5[1];
  *(result + 64) = *a5;
  *(result + 72) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 80) = a6;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationCPU::GetBufferSpecs(uint64_t a1, void *a2)
{
  if (*(a1 + 80) == 1)
  {
    LODWORD(v9) = 29;
    v4 = 1;
  }

  else
  {
    *&v9 = (*(**(a1 + 40) + 56))(*(a1 + 40));
  }

  *(&v9 + 1) = v4;
  v5 = a2[1];
  if (v5 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 56), &v9);
  }

  else
  {
    v6 = v9;
    v7 = *(a1 + 56);
    *v5 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v5 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5[1] = v6;
    v5[2] = v4;
    result = (v5 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationCPU::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationCPU *this)
{
  v48 = *MEMORY[0x29EDCA608];
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load((v2 + 8));
    if (v3 < 2)
    {
      return 0;
    }
  }

  v4 = atomic_load((*(this + 5) + 8));
  if (v4 < 2)
  {
    return 0;
  }

  v5 = 0;
  atomic_compare_exchange_strong(this + 2, &v5, 1u);
  if (v5)
  {
    return 0;
  }

  sub_29A0ECEEC(&v44, "hdSt", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationCPU::Resolve()");
  if (*(this + 4) || (*&v41 = "hdSt/smoothNormals.cpp", *(&v41 + 1) = "Resolve", *&v42 = 80, *(&v42 + 1) = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationCPU::Resolve()", LOBYTE(v43) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v41, "_adjacency", 0) & 1) != 0))
  {
    v6 = (*(**(this + 5) + 64))(*(this + 5));
    v7 = (*(**(this + 5) + 56))(*(this + 5));
    if (v7 == 15)
    {
      if (*(this + 80) != 1)
      {
        v30 = operator new(0x40uLL);
        v31 = *(this + 4);
        v32 = (*(**(this + 5) + 48))(*(this + 5));
        pxrInternal__aapl__pxrReserved__::Hd_SmoothNormals::ComputeSmoothNormals(v31, v6, v32, &v41);
        v47 = &off_2A20433C0;
        v33 = operator new(0x30uLL);
        v34 = v42;
        *v33 = v41;
        *(v33 + 1) = v34;
        v35 = v43;
        *(v33 + 4) = v43;
        if (v35)
        {
          v36 = (v35 - 16);
          if (*(v33 + 3))
          {
            v36 = *(v33 + 3);
          }

          atomic_fetch_add_explicit(v36, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v33 + 10);
        v46 = v33;
        atomic_fetch_add_explicit(v33 + 10, 1u, memory_order_relaxed);
        pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v30, (this + 56), &v46, 1, 1);
        sub_29AD9CE74(&v40, v30);
        v40 = 0uLL;
        sub_29A186B14(&v46);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
      }

      v8 = operator new(0x40uLL);
      v16 = *(this + 4);
      v17 = (*(**(this + 5) + 48))(*(this + 5));
      pxrInternal__aapl__pxrReserved__::Hd_SmoothNormals::ComputeSmoothNormalsPacked(v16, v6, v17, &v41);
      v47 = &off_2A2097968;
      v11 = operator new(0x30uLL);
      v18 = v42;
      *v11 = v41;
      *(v11 + 1) = v18;
      v19 = v43;
      *(v11 + 4) = v43;
      if (v19)
      {
        v20 = (v19 - 16);
        if (*(v11 + 3))
        {
          v20 = *(v11 + 3);
        }

        atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      if (v7 != 21)
      {
        *&v41 = "hdSt/smoothNormals.cpp";
        *(&v41 + 1) = "Resolve";
        *&v42 = 126;
        *(&v42 + 1) = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationCPU::Resolve()";
        LOBYTE(v43) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v41, 1, "Unsupported points type for computing smooth normals");
        v21 = 0;
        v22 = 0;
        goto LABEL_34;
      }

      if (*(this + 80) != 1)
      {
        v23 = operator new(0x40uLL);
        v24 = *(this + 4);
        v25 = (*(**(this + 5) + 48))(*(this + 5));
        pxrInternal__aapl__pxrReserved__::Hd_SmoothNormals::ComputeSmoothNormals(v24, v6, v25, &v41);
        v47 = &off_2A2043530;
        v26 = operator new(0x30uLL);
        v27 = v42;
        *v26 = v41;
        *(v26 + 1) = v27;
        v28 = v43;
        *(v26 + 4) = v43;
        if (v28)
        {
          v29 = (v28 - 16);
          if (*(v26 + 3))
          {
            v29 = *(v26 + 3);
          }

          atomic_fetch_add_explicit(v29, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v26 + 10);
        v46 = v26;
        atomic_fetch_add_explicit(v26 + 10, 1u, memory_order_relaxed);
        pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v23, (this + 56), &v46, 1, 1);
        sub_29AD9CE74(&v40, v23);
        v40 = 0uLL;
        sub_29A186B14(&v46);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
      }

      v8 = operator new(0x40uLL);
      v9 = *(this + 4);
      v10 = (*(**(this + 5) + 48))(*(this + 5));
      pxrInternal__aapl__pxrReserved__::Hd_SmoothNormals::ComputeSmoothNormalsPacked(v9, v6, v10, &v41);
      v47 = &off_2A2097968;
      v11 = operator new(0x30uLL);
      v12 = v42;
      *v11 = v41;
      *(v11 + 1) = v12;
      v13 = v43;
      *(v11 + 4) = v43;
      if (v13)
      {
        v14 = (v13 - 16);
        if (*(v11 + 3))
        {
          v14 = *(v11 + 3);
        }

        atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
      }
    }

    atomic_store(0, v11 + 10);
    v46 = v11;
    atomic_fetch_add_explicit(v11 + 10, 1u, memory_order_relaxed);
    pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v8, (this + 56), &v46, 1, 1);
    sub_29AD9CE74(&v40, v8);
    v39 = v40;
    v40 = 0uLL;
    sub_29A186B14(&v46);
    sub_29A213190(&v41);
    v21 = *(&v39 + 1);
    v22 = v39;
    if (*(&v39 + 1))
    {
      v37 = 0;
      atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
LABEL_35:
      v38 = *(this + 3);
      *(this + 2) = v22;
      *(this + 3) = v21;
      if (v38)
      {
        sub_29A014BEC(v38);
      }

      sub_29AD1019C(this);
      if ((v37 & 1) == 0)
      {
        sub_29A014BEC(v21);
      }

      goto LABEL_39;
    }

LABEL_34:
    v37 = 1;
    goto LABEL_35;
  }

LABEL_39:
  if (v44)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v45, v44);
  }

  return 1;
}

void sub_29AE9DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationCPU::_CheckValid(pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationCPU *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    IsValid = pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(v2);
  }

  else
  {
    IsValid = 0;
  }

  v4 = *(this + 8);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(v4);
  }

  else
  {
    v5 = 1;
  }

  return v5 & IsValid;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationGPU::HdSt_SmoothNormalsComputationGPU(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int a5, int a6)
{
  *a1 = &unk_2A2099370;
  *(a1 + 8) = a2;
  v8 = *a3;
  *(a1 + 16) = *a3;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *a4;
  *(a1 + 24) = *a4;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = a5;
  if (a5 != 15 && a5 != 21)
  {
    v15[0] = "hdSt/smoothNormals.cpp";
    v15[1] = "HdSt_SmoothNormalsComputationGPU";
    v15[2] = 233;
    v15[3] = "pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationGPU::HdSt_SmoothNormalsComputationGPU(const HdSt_VertexAdjacencyBuilder *, const TfToken &, const TfToken &, HdType, BOOL)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2076058, a5, __p);
    if (v14 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v15, 1, "Unsupported points type %s for computing smooth normals", v10);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    a5 = -1;
    *(a1 + 32) = -1;
  }

  if (a6)
  {
    v11 = 29;
  }

  else
  {
    v11 = a5;
  }

  *(a1 + 36) = v11;
  return a1;
}

void sub_29AE9E204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v16 + 3);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(v16 + 2);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(v16);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationGPU::Execute(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a3)
{
  v86[4] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v68, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)");
  if (*(a1 + 32) == -1)
  {
    goto LABEL_86;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v71 = "hdSt/smoothNormals.cpp";
    v72 = "Execute";
    v73 = 250;
    v74 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
    LOBYTE(v75) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v71, "_vertexAdjacencyBuilder", 0);
    v6 = *(a1 + 8);
  }

  v7 = *(v6 + 48);
  if (!v7)
  {
    v71 = "hdSt/smoothNormals.cpp";
    v72 = "Execute";
    v73 = 253;
    v74 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
    LOBYTE(v75) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v71, "adjacencyRange_", 0);
    v7 = *(v6 + 48);
  }

  v8 = *(v6 + 56);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v67 = 0;
  v9 = *(a1 + 32);
  if (v9 == 21)
  {
    v12 = *(a1 + 36);
    if (v12 == 29)
    {
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
      if (!v15)
      {
        v15 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
      }

      v11 = (v15 + 24);
    }

    else
    {
      if (v12 != 21)
      {
        goto LABEL_26;
      }

      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
      if (!v13)
      {
        v13 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
      }

      v11 = (v13 + 16);
    }
  }

  else
  {
    if (v9 != 15)
    {
      goto LABEL_26;
    }

    v10 = *(a1 + 36);
    if (v10 == 29)
    {
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
      if (!v14)
      {
        v14 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
      }

      v11 = (v14 + 8);
    }

    else
    {
      if (v10 != 15)
      {
        goto LABEL_26;
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
      if (!v11)
      {
        v11 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
      }
    }
  }

  sub_29A166F2C(&v67, v11);
  if (v67)
  {
LABEL_27:
    v86[0] = &unk_2A20993D8;
    v86[1] = &v67;
    v86[2] = a1;
    v86[3] = v86;
    pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(&v67, a3, v86, &v64);
    sub_29ADEC314(v86);
    if (v64)
    {
      v17 = *a2;
      v16 = a2[1];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v17 + 168))(&v62, v17, a1 + 16);
      (*(*v17 + 168))(&v60, v17, a1 + 24);
      (*(*v7 + 160))(&v58, v7);
      v66[0] = (*(*v17 + 72))(v17);
      v66[1] = (*(*v7 + 72))(v7);
      ComponentType = pxrInternal__aapl__pxrReserved__::HdGetComponentType(*(v62 + 32));
      v19 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(ComponentType);
      v20 = *(v62 + 52) / v19;
      v66[2] = *(v62 + 48) / v19;
      v66[3] = v20;
      v21 = pxrInternal__aapl__pxrReserved__::HdGetComponentType(*(v60 + 32));
      v22 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(v21);
      v23 = *(v60 + 52) / v22;
      v66[4] = *(v60 + 48) / v22;
      v66[5] = v23;
      v24 = (*(*v17 + 88))(v17);
      v25 = **(a1 + 8);
      if (v25 >= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      v66[6] = v26;
      Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a3);
      v28 = *(v60 + 8);
      v29 = v28 + *(v62 + 8) + (v28 + *(v62 + 8)) * (v28 + *(v62 + 8));
      v30 = *(v64 + 64);
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterResourceBindings(a3, bswap64(0x9E3779B97F4A7C55 * (*(v58 + 8) + ((*(v58 + 8) + v28 + (v29 >> 1) + (*(v58 + 8) + v28 + (v29 >> 1)) * (*(v58 + 8) + v28 + (v29 >> 1))) >> 1))), &v52);
      if (v57 == 1)
      {
        v31 = v62;
        v32 = v60;
        v33 = v58;
        v34 = pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(v81);
        MEMORY[0x29C2C1A60](v34);
        if (*v31)
        {
          pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v71);
          v78 = 0x100000005;
          v79 = 4;
          v80 = 0;
          v70 = 0;
          sub_29A00D250(&v74, &v70);
          sub_29A03A998(&v71, v31);
          sub_29ADEB7F8(&v83, &v71);
          if (__p)
          {
            v77 = __p;
            operator delete(__p);
          }

          if (v74)
          {
            v75 = v74;
            operator delete(v74);
          }

          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }
        }

        if (*v32)
        {
          pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v71);
          v78 = 0x200000005;
          v79 = 4;
          v80 = 1;
          v70 = 0;
          sub_29A00D250(&v74, &v70);
          sub_29A03A998(&v71, v32);
          sub_29ADEB7F8(&v83, &v71);
          if (__p)
          {
            v77 = __p;
            operator delete(__p);
          }

          if (v74)
          {
            v75 = v74;
            operator delete(v74);
          }

          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }
        }

        if (*v33)
        {
          pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v71);
          v78 = 0x300000005;
          v79 = 4;
          v80 = 0;
          v70 = 0;
          sub_29A00D250(&v74, &v70);
          sub_29A03A998(&v71, v33);
          sub_29ADEB7F8(&v83, &v71);
          if (__p)
          {
            v77 = __p;
            operator delete(__p);
          }

          if (v74)
          {
            v75 = v74;
            operator delete(v74);
          }

          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }
        }

        v35 = (*(*Hgi + 144))(Hgi, v81);
        v37 = v36;
        v38 = operator new(0x28uLL);
        v38->__shared_owners_ = 0;
        v38->__shared_weak_owners_ = 0;
        v38->__vftable = &unk_2A2094318;
        v38[1].__vftable = v35;
        v38[1].__shared_owners_ = v37;
        v50 = v38 + 1;
        v51 = v38;
        v71 = &v85;
        sub_29AB88D58(&v71);
        v71 = &v83;
        sub_29AB88B40(&v71);
        if (v82 < 0)
        {
          operator delete(v81[0]);
        }

        sub_29ADEB100(&v52, &v50);
        if (v51)
        {
          sub_29A014BEC(v51);
        }
      }

      v39 = *v53;
      v40 = v53[1];
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterComputePipeline(a3, bswap64(0x9E3779B97F4A7C55 * (((v30 + 29) * (v30 + 28)) >> 1) + 0x4E115049EC25994CLL), &v71);
      if (__p == 1)
      {
        v41 = v64;
        v42 = pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc::HgiComputePipelineDesc(v81);
        MEMORY[0x29C2C1A60](v42);
        v83 = *(v41 + 64);
        v84 = 28;
        v43 = (*(*Hgi + 176))(Hgi, v81);
        v45 = v44;
        v46 = operator new(0x28uLL);
        v46->__shared_owners_ = 0;
        v46->__shared_weak_owners_ = 0;
        v46->__vftable = &unk_2A2093EA8;
        v46[1].__vftable = v43;
        v46[1].__shared_owners_ = v45;
        v50 = v46 + 1;
        v51 = v46;
        if (v82 < 0)
        {
          operator delete(v81[0]);
        }

        sub_29ADE7EC8(&v71, &v50);
        if (v51)
        {
          sub_29A014BEC(v51);
        }
      }

      v47 = *v72;
      v48 = *(v72 + 1);
      GlobalComputeCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalComputeCmds(a3, 0);
      (*(*GlobalComputeCmds + 24))(GlobalComputeCmds, "Smooth Normals Cmds");
      (*(*GlobalComputeCmds + 48))(GlobalComputeCmds, v39, v40);
      (*(*GlobalComputeCmds + 40))(GlobalComputeCmds, v47, v48);
      (*(*GlobalComputeCmds + 56))(GlobalComputeCmds, v47, v48, 0, 28, v66);
      (*(*GlobalComputeCmds + 64))(GlobalComputeCmds, v26, 1);
      (*(*GlobalComputeCmds + 32))(GlobalComputeCmds);
      if (v75 == 1)
      {
        std::mutex::unlock(v74);
      }

      if (v73)
      {
        sub_29A014BEC(v73);
      }

      if (v56 == 1)
      {
        std::mutex::unlock(v55);
      }

      if (v54)
      {
        sub_29A014BEC(v54);
      }

      if (v59)
      {
        sub_29A014BEC(v59);
      }

      if (v61)
      {
        sub_29A014BEC(v61);
      }

      if (v63)
      {
        sub_29A014BEC(v63);
      }

      if (v16)
      {
        sub_29A014BEC(v16);
      }
    }

    if (v65)
    {
      sub_29A014BEC(v65);
    }

    goto LABEL_82;
  }

LABEL_26:
  v71 = "hdSt/smoothNormals.cpp";
  v72 = "Execute";
  v73 = 273;
  v74 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
  LOBYTE(v75) = 0;
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v71, "!shaderToken.IsEmpty()", 0))
  {
    goto LABEL_27;
  }

LABEL_82:
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

LABEL_86:
  if (v68)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v69, v68);
  }
}

void sub_29AE9EC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v32)
  {
    sub_29A014BEC(v32);
  }

  sub_29A0E9CEC(&a32);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_SmoothNormalsComputationGPU::GetBufferSpecs(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 36);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 24), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 24);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = (v3 + 3);
  }

  a2[1] = result;
  return result;
}

void sub_29AE9EE94(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  *this = &unk_2A20992F0;
  v2 = *(this + 9);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 7);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 6);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  *this = &unk_2A2075F38;
  v5 = *(this + 3);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void sub_29AE9EF3C(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  *this = &unk_2A20992F0;
  v2 = *(this + 9);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 7);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 6);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  *this = &unk_2A2075F38;
  v5 = *(this + 3);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);

  operator delete(v6);
}

void sub_29AE9EFE8(pxrInternal__aapl__pxrReserved__::HdStComputation *a1)
{
  *a1 = &unk_2A2099370;
  v1 = *(a1 + 3);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = *(a1 + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(a1);
}

void sub_29AE9F038(pxrInternal__aapl__pxrReserved__::HdStComputation *a1)
{
  *a1 = &unk_2A2099370;
  v2 = *(a1 + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(a1);

  operator delete(v4);
}

__n128 sub_29AE9F0BC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20993D8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29AE9F108(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20993D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29AE9F138(uint64_t a1, std::string *this)
{
  v3 = *(a1 + 16);
  if ((**(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((**(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  std::string::operator=(this, EmptyString);
  LODWORD(this[1].__r_.__value_.__l.__data_) = 4;
  this[10].__r_.__value_.__l.__size_ = 0x100000040;
  LODWORD(this[10].__r_.__value_.__r.__words[2]) = 1;
  v28 = 0;
  v27 = 0;
  v5 = *(v3 + 32);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (v5 == 15)
  {
    if (!v6)
    {
      v6 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v7 = (v6 + 96);
  }

  else
  {
    if (!v6)
    {
      v6 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v7 = (v6 + 88);
  }

  sub_29A166F2C(&v28, v7);
  v8 = *(v3 + 36);
  switch(v8)
  {
    case 29:
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v12)
      {
        v12 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v10 = (v12 + 104);
      break;
    case 21:
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v11)
      {
        v11 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v10 = (v11 + 88);
      break;
    case 15:
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v9)
      {
        v9 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v10 = (v9 + 96);
      break;
    default:
      goto LABEL_24;
  }

  sub_29A166F2C(&v27, v10);
LABEL_24:
  v13 = sub_29A008E78(&__p, "points");
  if ((v28 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v14 = ((v28 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v14 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v14, 1, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = sub_29A008E78(&__p, "normals");
  if ((v27 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v16 = ((v27 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v16 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddWritableBuffer(this, &__p, v16, 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "entry");
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v17)
  {
    v17 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v17 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v18 = ((*(v17 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v18 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v18, 3, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((atomic_load_explicit(&qword_2A174F770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F770))
  {
    sub_29A008E78(qword_2A174F6C8, "vertexOffset");
    sub_29A008E78(qword_2A174F6E0, "adjacencyOffset");
    sub_29A008E78(qword_2A174F6F8, "pointsOffset");
    sub_29A008E78(qword_2A174F710, "pointsStride");
    sub_29A008E78(qword_2A174F728, "normalsOffset");
    sub_29A008E78(qword_2A174F740, "normalsStride");
    sub_29A008E78(qword_2A174F758, "indexEnd");
    __cxa_atexit(sub_29AE9F6B8, 0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F770);
  }

  v19 = qword_2A174F6C8;
  v20 = 168;
  do
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v21)
    {
      v21 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    if ((*(v21 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v22 = ((*(v21 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v22 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
    }

    memset(&__p, 0, sizeof(__p));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(this, v19, v22, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v19;
    v20 -= 24;
  }

  while (v20);
  sub_29A008E78(&__p, "hd_GlobalInvocationID");
  sub_29A008E78(&v25, "uvec3");
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v23)
  {
    v23 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v23 + 17) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v24 = ((*(v23 + 17) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v24 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(this, &__p, &v25, v24);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AE9F5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  __cxa_guard_abort(&qword_2A174F770);
  if ((a21 & 7) != 0)
  {
    atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(v21 - 40);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AE9F66C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2099438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29AE9F6B8()
{
  v0 = &byte_2A174F76F;
  v1 = -168;
  v2 = &byte_2A174F76F;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

pxrInternal__aapl__pxrReserved__::HdStStagingBuffer *pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::HdStStagingBuffer(pxrInternal__aapl__pxrReserved__::HdStStagingBuffer *this, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2)
{
  *this = a2;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a2);
  *(this + 80) = (*((*(*Hgi + 200))(Hgi) + 48) & 8) != 0;
  return this;
}

void sub_29AE9F784(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 96) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::~HdStStagingBuffer(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **this)
{
  pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::Deallocate(this);
  v2 = this[11];
  if (v2)
  {
    this[12] = v2;
    operator delete(v2);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::Deallocate(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **this)
{
  v2 = this + 1;
  result = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*this);
  v4 = result;
  v5 = 3;
  do
  {
    if (*v2)
    {
      result = (*(*v4 + 104))(v4, v2);
    }

    v2 += 2;
    --v5;
  }

  while (v5);
  this[8] = 0;
  this[9] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::Resize(pxrInternal__aapl__pxrReserved__::HdStStagingBuffer *this, uint64_t a2)
{
  if (*(this + 7))
  {
    v2[0] = "hdSt/stagingBuffer.cpp";
    v2[1] = "Resize";
    v2[2] = 51;
    v2[3] = "void pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::Resize(size_t)";
    v3 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Cannot change size of staging buffer during Commit");
  }

  else
  {
    *(this + 8) = a2;
  }
}

void pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::StageCopy(uint64_t a1, void *a2)
{
  v2 = a2[5];
  if (v2)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return;
  }

  v5 = (a2 + 2);
  if (!a2[2])
  {
    return;
  }

  if (v2 > 0x80000 && (*(a1 + 80) & 1) == 0)
  {
    v7 = *(*pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(*a1) + 64);

    v7();
    return;
  }

  *v31 = *(a1 + 8 + 16 * *(a1 + 72));
  v8 = v31[0];
  if (!v31[0])
  {
    v10 = *(a1 + 64);
LABEL_16:
    __p[0] = 0;
    __p[1] = 0;
    v27 = 0;
    LODWORD(v28) = 1;
    DWORD2(v29) = 0;
    v30 = 0;
    *&v29 = v10;
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a1);
    v13 = Hgi;
    if (v31[0])
    {
      (*(*Hgi + 104))(Hgi, v31);
    }

    v14 = (*(*v13 + 96))(v13, __p);
    v15 = (a1 + 8 + 16 * *(a1 + 72));
    *v15 = v14;
    v15[1] = v16;
    *v31 = *v15;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v31[0];
    goto LABEL_21;
  }

  Descriptor = pxrInternal__aapl__pxrReserved__::HgiBuffer::GetDescriptor(v31[0]);
  v10 = *(a1 + 64);
  if (*(Descriptor + 32) < v10)
  {
    goto LABEL_16;
  }

  v11 = pxrInternal__aapl__pxrReserved__::HgiBuffer::GetDescriptor(v31[0]);
  v10 = *(a1 + 64);
  if (*(v11 + 32) > 4 * v10)
  {
    goto LABEL_16;
  }

LABEL_21:
  v17 = *(pxrInternal__aapl__pxrReserved__::HgiBuffer::GetDescriptor(v8) + 32);
  v18 = (*(*v31[0] + 32))(v31[0]);
  v19 = *(a1 + 56);
  v20 = a2[5];
  if (v20 + v19 > v17)
  {
    __p[0] = "hdSt/stagingBuffer.cpp";
    __p[1] = "StageCopy";
    v27 = 104;
    v28 = "void pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::StageCopy(const HgiBufferCpuToGpuOp &)";
    LOBYTE(v29) = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "_head + copyOp.byteSize <= capacity", 0))
    {
      return;
    }

    v19 = *(a1 + 56);
    v20 = a2[5];
  }

  memcpy((v18 + v19), (*a2 + a2[1]), v20);
  v21 = *(a1 + 96);
  if (*(a1 + 88) != v21 && *(v21 - 16) == a2[3] && (v22 = *(v21 - 32), *(v21 - 8) + v22 == a2[4]))
  {
    v23 = a2[5];
    *(v21 - 32) = v23 + v22;
  }

  else
  {
    *__p = *v31;
    v25 = a2[4];
    v24 = a2[5];
    v27 = *(a1 + 56);
    v28 = v24;
    v29 = *v5;
    v30 = v25;
    sub_29AE9FBE0(a1 + 88, __p);
    v23 = a2[5];
  }

  *(a1 + 56) += v23;
}

void sub_29AE9FBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE9FBE0(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = sub_29A040BCC(a1, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[56 * v10];
    v16 = &v14[56 * v13];
    v17 = *a2;
    v18 = a2[1];
    v19 = a2[2];
    *(v15 + 6) = *(a2 + 6);
    *(v15 + 1) = v18;
    *(v15 + 2) = v19;
    *v15 = v17;
    v9 = v15 + 56;
    v20 = *(a1 + 8) - *a1;
    v21 = &v15[-v20];
    memcpy(&v15[-v20], *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v9;
    *(a1 + 16) = v16;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 16) = v7;
    *(v4 + 32) = v8;
    *v4 = v6;
    v9 = (v4 + 56);
  }

  *(a1 + 8) = v9;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::Flush(uint64_t this)
{
  v1 = this;
  if (*(this + 56))
  {
    GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(*this);
    (*(*GlobalBlitCmds + 24))(GlobalBlitCmds, "void pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::Flush()");
    if ((*(v1 + 80) & 1) == 0)
    {
      v3 = v1 + 16 * *(v1 + 72);
      v4 = *(v3 + 8);
      v5 = *(v3 + 16);
      v11[0] = (*(*v4 + 32))(v4);
      v11[1] = 0;
      v11[2] = v4;
      v11[3] = v5;
      v6 = *(v1 + 56);
      v11[4] = 0;
      v11[5] = v6;
      (*(*GlobalBlitCmds + 64))(GlobalBlitCmds, v11);
      (*(*GlobalBlitCmds + 112))(GlobalBlitCmds, 1);
    }

    v7 = *(v1 + 88);
    v8 = *(v1 + 96);
    while (v7 != v8)
    {
      (*(*GlobalBlitCmds + 56))(GlobalBlitCmds, v7);
      v7 += 56;
    }

    this = (*(*GlobalBlitCmds + 32))(GlobalBlitCmds);
    *(v1 + 96) = *(v1 + 88);
    *(v1 + 56) = 0;
    if (*(v1 + 80))
    {
      v9 = *(v1 + 72);
      if ((v9 + 1) < 3)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = 0;
      }

      *(v1 + 72) = v10;
    }
  }

  else
  {
    *(this + 96) = *(this + 88);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::HdStFieldBaseSubtextureIdentifier(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *a2;
  *result = &unk_2A20994B8;
  *(result + 8) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 16) = a3;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::~HdStFieldBaseSubtextureIdentifier(pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier *this)
{
  *this = &unk_2A20994B8;
  v1 = *(this + 1);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStAssetUvSubtextureIdentifier::HdStAssetUvSubtextureIdentifier(uint64_t result, char a2, char a3, uint64_t *a4)
{
  *result = &unk_2A20994E8;
  *(result + 8) = a2;
  *(result + 9) = a3;
  v4 = *a4;
  *(result + 16) = *a4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStAssetUvSubtextureIdentifier::~HdStAssetUvSubtextureIdentifier(pxrInternal__aapl__pxrReserved__::HdStAssetUvSubtextureIdentifier *this)
{
  v1 = *(this + 2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v1 = *(this + 2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStAssetUvSubtextureIdentifier::~HdStAssetUvSubtextureIdentifier(void *this)
{
  v1 = *(this + 2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(this);
}

_BYTE *pxrInternal__aapl__pxrReserved__::HdStAssetUvSubtextureIdentifier::Clone@<X0>(pxrInternal__aapl__pxrReserved__::HdStAssetUvSubtextureIdentifier *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 8);
  v4 = *(this + 9);
  v5 = *(this + 2);
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v5 &= 0xFFFFFFFFFFFFFFF8;
  }

  result = operator new(0x18uLL);
  *result = &unk_2A20994E8;
  result[8] = v3;
  result[9] = v4;
  *(result + 2) = v5;
  if ((v5 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(result + 2) &= 0xFFFFFFFFFFFFFFF8;
    }

    *a2 = result;
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStAssetUvSubtextureIdentifier::_Hash(pxrInternal__aapl__pxrReserved__::HdStAssetUvSubtextureIdentifier *this)
{
  if ((atomic_load_explicit(&qword_2A174F780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F780))
  {
    sub_29A008E78(&__p, "HdStAssetUvSubtextureIdentifier");
    v6 = sub_29AE4FB24(&v7, &__p);
    if (v12 < 0)
    {
      operator delete(__p);
    }

    qword_2A174F778 = v6;
    __cxa_guard_release(&qword_2A174F780);
  }

  v9 = *(this + 8);
  v8 = *(this + 9);
  v2 = *(this + 2);
  v7 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v3;
    }
  }

  __p = 0;
  v11 = 0;
  sub_29AEA08BC(&__p, &qword_2A174F778, &v9, &v8, &v7);
  v4 = __p;
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void sub_29AEA0254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A174F780);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdStDynamicUvSubtextureIdentifier::HdStDynamicUvSubtextureIdentifier(void *this)
{
  *this = &unk_2A2099518;
  return this;
}

{
  *this = &unk_2A2099518;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::HdStDynamicUvSubtextureIdentifier::Clone@<X0>(void *a1@<X8>)
{
  result = operator new(8uLL);
  *result = &unk_2A2099518;
  *a1 = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDynamicUvSubtextureIdentifier::_Hash(pxrInternal__aapl__pxrReserved__::HdStDynamicUvSubtextureIdentifier *this)
{
  if ((atomic_load_explicit(&qword_2A174F790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F790))
  {
    sub_29A008E78(__p, "HdStDynamicUvSubtextureIdentifier");
    v2 = sub_29AE4FB24(&v5, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A174F788 = v2;
    __cxa_guard_release(&qword_2A174F790);
  }

  return qword_2A174F788;
}

void sub_29AEA03D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A174F790);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStUdimSubtextureIdentifier::HdStUdimSubtextureIdentifier(uint64_t result, char a2, uint64_t *a3)
{
  *result = &unk_2A2099550;
  *(result + 8) = a2;
  v3 = *a3;
  *(result + 16) = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

{
  *result = &unk_2A2099550;
  *(result + 8) = a2;
  v3 = *a3;
  *(result + 16) = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStUdimSubtextureIdentifier::~HdStUdimSubtextureIdentifier(pxrInternal__aapl__pxrReserved__::HdStUdimSubtextureIdentifier *this)
{
  v1 = *(this + 2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v1 = *(this + 2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStUdimSubtextureIdentifier::~HdStUdimSubtextureIdentifier(void *this)
{
  v1 = *(this + 2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(this);
}

_BYTE *pxrInternal__aapl__pxrReserved__::HdStUdimSubtextureIdentifier::Clone@<X0>(pxrInternal__aapl__pxrReserved__::HdStUdimSubtextureIdentifier *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 8);
  v4 = *(this + 2);
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4 &= 0xFFFFFFFFFFFFFFF8;
  }

  result = operator new(0x18uLL);
  *result = &unk_2A2099550;
  result[8] = v3;
  *(result + 2) = v4;
  if ((v4 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(result + 2) &= 0xFFFFFFFFFFFFFFF8;
    }

    *a2 = result;
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStUdimSubtextureIdentifier::_Hash(pxrInternal__aapl__pxrReserved__::HdStUdimSubtextureIdentifier *this)
{
  if ((atomic_load_explicit(&qword_2A174F7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F7A0))
  {
    sub_29A008E78(&__p, "HdStUdimSubtextureIdentifier");
    v6 = sub_29AE4FB24(&v7, &__p);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    qword_2A174F798 = v6;
    __cxa_guard_release(&qword_2A174F7A0);
  }

  v8 = *(this + 8);
  v2 = *(this + 2);
  v7 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v3;
    }
  }

  __p = 0;
  v10 = 0;
  sub_29AEA0974(&__p, &qword_2A174F798, &v8, &v7);
  v4 = __p;
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void sub_29AEA06D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A174F7A0);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStPtexSubtextureIdentifier::HdStPtexSubtextureIdentifier(uint64_t this, char a2)
{
  *this = &unk_2A2099580;
  *(this + 8) = a2;
  return this;
}

{
  *this = &unk_2A2099580;
  *(this + 8) = a2;
  return this;
}

_BYTE *pxrInternal__aapl__pxrReserved__::HdStPtexSubtextureIdentifier::Clone@<X0>(pxrInternal__aapl__pxrReserved__::HdStPtexSubtextureIdentifier *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 8);
  result = operator new(0x10uLL);
  *result = &unk_2A2099580;
  result[8] = v3;
  *a2 = result;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStPtexSubtextureIdentifier::_Hash(pxrInternal__aapl__pxrReserved__::HdStPtexSubtextureIdentifier *this)
{
  if ((atomic_load_explicit(&qword_2A174F7B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F7B0))
  {
    sub_29A008E78(__p, "HdStPtexSubtextureIdentifier");
    v3 = sub_29AE4FB24(&v6, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A174F7A8 = v3;
    __cxa_guard_release(&qword_2A174F7B0);
  }

  return bswap64(0x9E3779B97F4A7C55 * (*(this + 8) + ((qword_2A174F7A8 + *(this + 8) + (qword_2A174F7A8 + *(this + 8)) * (qword_2A174F7A8 + *(this + 8))) >> 1)));
}

void sub_29AEA088C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A174F7B0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEA08BC(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4, void *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29AEA08F8(a1, a3, a4, a5);
}

uint64_t sub_29AEA08F8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29AEA0930(a1, a3, a4);
}

uint64_t sub_29AEA0930(uint64_t result, unsigned __int8 *a2, void *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = (*a3 & 0xFFFFFFFFFFFFFFF8) + (((*a3 & 0xFFFFFFFFFFFFFFF8) + v3 + ((*a3 & 0xFFFFFFFFFFFFFFF8) + v3) * ((*a3 & 0xFFFFFFFFFFFFFFF8) + v3)) >> 1);
  return result;
}

uint64_t sub_29AEA0974(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, void *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29AEA0930(a1, a3, a4);
}

void sub_29AEA09B0(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *a1)
{
  Instance = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(a1);
  sub_29A008E78(__p, "GL");
  v2 = atomic_load(&qword_2A174F7B8);
  if (!v2)
  {
    v2 = sub_29AEA0CB0();
  }

  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::RegisterSceneIndexForRenderer(Instance, __p, v2, &v3, 0, 0);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AEA0A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_TetMeshConversionSceneIndexPlugin::HdSt_TetMeshConversionSceneIndexPlugin(void *this)
{
  *this = &unk_2A2099668;
  return this;
}

{
  *this = &unk_2A2099668;
  return this;
}

void sub_29AEA0AFC(pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin *a1)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::~HdSceneIndexPlugin(a1);

  operator delete(v1);
}

uint64_t sub_29AEA0B24()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = nullsub_1712;
  v3.__vftable = &unk_2A2086100;
  v3.__type_name = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_TetMeshConversionSceneIndexPlugin>;
  v4 = &v3;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_SetFactory(&v1, &v3);
  return sub_29AB10084(&v3);
}

void sub_29AEA0C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB10084(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_TetMeshConversionSceneIndexPlugin>()
{
  sub_29A0ECEEC(&v2, "hdSt", "static HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin() [T = pxrInternal__aapl__pxrReserved__::HdSt_TetMeshConversionSceneIndexPlugin]");
  v0 = operator new(8uLL);
  *v0 = &unk_2A2099668;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  return v0;
}

unint64_t sub_29AEA0CB0()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "HdSt_TetMeshConversionSceneIndexPlugin", 0);
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(&qword_2A174F7B8, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174F7B8);
  }

  return v0;
}

void sub_29AEA0DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSt_TextureBinder::GetBufferSpecs(uint64_t *result, void *a2, int a3)
{
  v5 = *result;
  v6 = result[1];
  if (*result == v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = result;
    result = pxrInternal__aapl__pxrReserved__::HdStTextureHandle::UseBindlessHandles(*(v5 + 16));
    v8 = result;
    v5 = *v7;
    v6 = v7[1];
  }

  if (v5 != v6)
  {
    if (a3)
    {
      v9 = 24;
    }

    else
    {
      v9 = 18;
    }

    do
    {
      v10 = *(v5 + 8);
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          if (v8)
          {
            v17 = a2[1];
            if (v17 >= a2[2])
            {
              v18 = sub_29AE4CF80(a2, v5, xmmword_29B711B20);
            }

            else
            {
              sub_29AE4E438(a2, v5, xmmword_29B711B20);
              v18 = v17 + 24;
            }

            a2[1] = v18;
            v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
            if (!v32)
            {
              v32 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
            }

            sub_29AEA1380(v5, v32 + 2, &v39);
            v33 = a2[1];
            if (v33 >= a2[2])
            {
              v35 = sub_29AEA2BD4(a2, &v39, xmmword_29B711B20);
            }

            else
            {
              v34 = v39;
              *v33 = v39;
              if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                *v33 &= 0xFFFFFFFFFFFFFFF8;
              }

              *(v33 + 8) = xmmword_29B711B10;
              v35 = v33 + 24;
              a2[1] = v33 + 24;
            }

            a2[1] = v35;
            if ((v39 & 7) != 0)
            {
              atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v36)
          {
            v36 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          sub_29AEA1380(v5, v36 + 4, &v40);
          LODWORD(v39) = 0;
          *(&v39 + 1) = 1;
          v25 = a2[1];
          if (v25 < a2[2])
          {
            goto LABEL_76;
          }

LABEL_61:
          result = sub_29AEA2AA8(a2, &v40, &v39);
          goto LABEL_80;
        }

        if (v10 == 3)
        {
          if (v8)
          {
            v13 = a2[1];
            if (v13 >= a2[2])
            {
              v14 = sub_29AE4CF80(a2, v5, xmmword_29B711B20);
            }

            else
            {
              sub_29AE4E438(a2, v5, xmmword_29B711B20);
              v14 = v13 + 24;
            }

            a2[1] = v14;
            v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
            if (!v26)
            {
              v26 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
            }

            sub_29AEA1380(v5, v26 + 2, &v39);
            v27 = a2[1];
            if (v27 >= a2[2])
            {
              v29 = sub_29AEA2BD4(a2, &v39, xmmword_29B711B20);
            }

            else
            {
              v28 = v39;
              *v27 = v39;
              if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                *v27 &= 0xFFFFFFFFFFFFFFF8;
              }

              *(v27 + 8) = xmmword_29B711B10;
              v29 = v27 + 24;
              a2[1] = v27 + 24;
            }

            a2[1] = v29;
            if ((v39 & 7) != 0)
            {
              atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v30)
          {
            v30 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          sub_29AEA1380(v5, v30 + 4, &v40);
          LODWORD(v39) = 0;
          *(&v39 + 1) = 1;
          v25 = a2[1];
          if (v25 >= a2[2])
          {
            goto LABEL_61;
          }

LABEL_76:
          v37 = v39;
          v38 = v40;
          *v25 = v40;
          if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v25 &= 0xFFFFFFFFFFFFFFF8;
          }

          v25[1] = v37;
          v25[2] = 1;
          result = v25 + 3;
          a2[1] = v25 + 3;
LABEL_80:
          a2[1] = result;
          if ((v40 & 7) != 0)
          {
            atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }
      }

      else
      {
        if (!v10)
        {
          if (v8)
          {
            v15 = a2[1];
            if (v15 >= a2[2])
            {
              v16 = sub_29AE4CF80(a2, v5, xmmword_29B711B20);
            }

            else
            {
              sub_29AE4E438(a2, v5, xmmword_29B711B20);
              v16 = v15 + 24;
            }

            a2[1] = v16;
          }

          v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v31)
          {
            v31 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          sub_29AEA1380(v5, v31 + 4, &v40);
          LODWORD(v39) = 0;
          *(&v39 + 1) = 1;
          v25 = a2[1];
          if (v25 >= a2[2])
          {
            goto LABEL_61;
          }

          goto LABEL_76;
        }

        if (v10 == 1)
        {
          if (v8)
          {
            v11 = a2[1];
            if (v11 >= a2[2])
            {
              v12 = sub_29AE4CF80(a2, v5, xmmword_29B711B20);
            }

            else
            {
              sub_29AE4E438(a2, v5, xmmword_29B711B20);
              v12 = v11 + 24;
            }

            a2[1] = v12;
          }

          v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v19)
          {
            v19 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          sub_29AEA1380(v5, v19 + 4, &v40);
          LODWORD(v39) = 0;
          *(&v39 + 1) = 1;
          v20 = a2[1];
          if (v20 >= a2[2])
          {
            v23 = sub_29AEA2AA8(a2, &v40, &v39);
          }

          else
          {
            v21 = v39;
            v22 = v40;
            *v20 = v40;
            if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              *v20 &= 0xFFFFFFFFFFFFFFF8;
            }

            v20[1] = v21;
            v20[2] = 1;
            v23 = (v20 + 3);
            a2[1] = v20 + 3;
          }

          a2[1] = v23;
          if ((v40 & 7) != 0)
          {
            atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v24)
          {
            v24 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          sub_29AEA1380(v5, v24 + 1, &v40);
          LODWORD(v39) = v9;
          *(&v39 + 1) = 1;
          v25 = a2[1];
          if (v25 >= a2[2])
          {
            goto LABEL_61;
          }

          goto LABEL_76;
        }
      }

      v5 += 40;
    }

    while (v5 != v6);
  }

  return result;
}