uint32x4_t sub_277AC3BCC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78248(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3C00(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75874(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3C30(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75874(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC3D30(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77E50(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC3D60(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77E50(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3D94(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A753B0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3DC4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A753B0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC3DF4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(v10, v9));
}

uint64_t sub_277AC3E68(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 4;
}

uint64_t sub_277AC3EE0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 2;
}

uint64_t sub_277AC3F58(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6));
}

uint64_t sub_277AC3FB4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 4;
}

uint64_t sub_277AC4014(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 2;
}

uint32x4_t sub_277AC40CC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77F18(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC40FC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77F18(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4130(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7549C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4160(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7549C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC41CC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10)));
}

uint64_t sub_277AC4250(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 4;
}

uint64_t sub_277AC42D8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 2;
}

uint32x4_t sub_277AC43B8(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78838(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC43E8(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78838(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC441C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75F9C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC444C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75F9C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC447C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(v8);
}

uint64_t sub_277AC44CC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(v8) >> 4;
}

uint64_t sub_277AC4520(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(v8) >> 2;
}

uint64_t sub_277AC4574(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6);
}

uint64_t sub_277AC45B4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC45F8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 2;
}

uint32x4_t sub_277AC4694(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A7893C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC46C4(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A7893C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC46F8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A760B4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4728(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A760B4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC4758(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(vaddq_s32(v10, v9));
}

uint64_t sub_277AC47CC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 4;
}

uint64_t sub_277AC4844(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 2;
}

uint64_t sub_277AC48BC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6));
}

uint64_t sub_277AC4918(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 4;
}

uint64_t sub_277AC4978(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 2;
}

uint32x4_t sub_277AC4A30(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A788B4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC4A60(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A788B4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4A94(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76020(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4AC4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76020(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC4AF4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 512);
  return vaddvq_s32(v8);
}

uint64_t sub_277AC4B48(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 512);
  return vaddvq_s32(v8) >> 4;
}

uint64_t sub_277AC4BA0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 512);
  return vaddvq_s32(v8) >> 2;
}

uint64_t sub_277AC4BF8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(*v4, *v5));
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6);
}

uint64_t sub_277AC4C3C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(*v4, *v5));
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC4C84(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(*v4, *v5));
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 2;
}

uint32x4_t sub_277AC4D24(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78ACC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC4D54(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78ACC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4D88(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7628C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4DB8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7628C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC4E24(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10)));
}

uint64_t sub_277AC4EA8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 4;
}

uint64_t sub_277AC4F30(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 2;
}

uint32x4_t sub_277AC5010(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78A04(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC5040(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78A04(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC5074(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A761A0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC50A4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A761A0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC50D4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 2048);
  return vaddvq_s32(vaddq_s32(v10, v9));
}

uint64_t sub_277AC5148(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 2048);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 4;
}

uint64_t sub_277AC51C0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 2048);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 2;
}

uint64_t sub_277AC5238(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6));
}

uint64_t sub_277AC5294(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 4;
}

uint64_t sub_277AC52F4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 2;
}

uint32x4_t sub_277AC53AC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78BDC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC53DC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78BDC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC5410(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A763D4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC5440(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A763D4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC54E8(unint64_t a1, void *__src, int a3)
{
  v3 = __src;
  *(&__ptr[1] + 1) = *MEMORY[0x277D85DE8];
  v5 = (a1 + 643712);
  v6 = a1 + 269952;
  v126 = *a1;
  v7 = (*a1 + 23172);
  if (*v7 && *(a1 + 644192) == 1)
  {
    v8 = *(a1 + 271408);
  }

  else
  {
    v8 = -1;
  }

  v123 = v8;
  v9 = a1 + 245616;
  v125 = *(a1 + 270312);
  v10 = (v126 + 23176);
  memcpy((a1 + 271104), __src, 0x480uLL);
  v11 = *v5;
  v127 = v9;
  if (*v5)
  {
    v12 = v5;
    v13 = *v11;
    if (*v11)
    {
      do
      {
        v14 = *(v13 + 664);
        free(*(v13 - 8));
        v13 = v14;
      }

      while (v14);
    }

    *v11 = 0;
    v11[1] = 0;
    v5 = v12;
    if (*v12)
    {
      free(*(*v12 - 1));
    }

    *v12 = 0;
    v9 = v127;
  }

  v122 = (a1 + 463508);
  v121 = (a1 + 240840);
  v15 = *(v3 + 224);
  v124 = v5;
  if (v15)
  {
    if (!*v9)
    {
      memcpy((a1 + 269352), &unk_277C3F9A8 + 648 * v15 - 648, 0x288uLL);
      if (*(v3 + 292) == 1)
      {
        *(v6 + 12) = 0;
        *v6 = 0;
        *(v6 + 36) = 0;
        *(a1 + 269476) = 0u;
        *(a1 + 269492) = 0u;
        *(a1 + 269508) = 0u;
        *(a1 + 269524) = 0u;
        *(a1 + 269540) = 0u;
        *(a1 + 269556) = 0u;
        *(a1 + 269572) = 0u;
        *(a1 + 269588) = 0u;
        *(a1 + 269604) = 0u;
        *(a1 + 269620) = 0u;
        *(a1 + 269636) = 0;
        *(a1 + 269748) = 0u;
        *(a1 + 269764) = 0u;
        *(a1 + 269780) = 0u;
        *(a1 + 269796) = 0u;
        *(a1 + 269812) = 0u;
        *(a1 + 269828) = 0u;
        *(a1 + 269844) = 0u;
        *(a1 + 269860) = 0u;
        *(a1 + 269876) = 0u;
        *(a1 + 269892) = 0u;
        *(a1 + 269908) = 0u;
        *(a1 + 269924) = 0u;
        *(a1 + 269940) = 0;
      }

      v16 = *(v6 + 360);
      *(v6 + 32) = *(v16 + 72);
LABEL_16:
      if (*(v16 + 92) == 1)
      {
        *(v6 + 28) = 0;
      }

      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (*(v3 + 110))
  {
    v17 = malloc_type_malloc(0x27uLL, 0x5F484EBFuLL);
    if (v17 && (v18 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF0), *(v18 - 1) = v17, v18))
    {
      *v18 = 0;
      *(((v17 + 23) & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
      v116 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0;
      *v5 = v18;
    }

    else
    {
      *v5 = 0;
      sub_2779F5C10(*(v9 + 48), 2, "Failed to allocate cpi->film_grain_table");
      v116 = *v5;
    }

    v19 = *(v3 + 110);
    v20 = *(v9 + 48);
    v21 = fopen(v19, "rb");
    if (!v21)
    {
      sub_2779F5C10(v20, 1, "Unable to open %s", v19);
      goto LABEL_33;
    }

    v22 = v21;
    v115 = v3;
    *v20 = 0;
    if (!fread(__ptr, 9uLL, 1uLL, v21) || __ptr[0] != 0x316E72676D6C6966)
    {
      sub_2779F5C10(v20, 1, "Unable to read (or invalid) file magic");
LABEL_27:
      fclose(v22);
      v3 = v115;
      goto LABEL_33;
    }

    v117 = v20;
    v118 = 0;
    v91 = v116;
    v119 = v22;
    while (1)
    {
      if (feof(v22))
      {
        goto LABEL_27;
      }

      v92 = malloc_type_malloc(0x2B7uLL, 0x5F484EBFuLL);
      if (!v92 || (v93 = (v92 + 23) & 0xFFFFFFFFFFFFFFF0, *(v93 - 8) = v92, !v93))
      {
        sub_2779F5C10(v20, 2, "Unable to allocate grain table entry");
        goto LABEL_27;
      }

      bzero(((v92 + 23) & 0xFFFFFFFFFFFFFFF0), 0x2A0uLL);
      v94 = fscanf(v22, "E %lld %lld %d %hd %d\n", v93 + 648, v93 + 656, v93, v93 + 644, v93 + 4);
      if (v94 != 5)
      {
        v20 = v117;
        if (v94 || !feof(v119))
        {
          sub_2779F5C10(v117, 1, "Unable to read entry header. Read %d != 5");
        }

        goto LABEL_189;
      }

      v20 = v117;
      if (*(v93 + 4))
      {
        if (fscanf(v119, "p %d %d %d %d %d %d %d %d %d %d %d %d\n", v93 + 296, v93 + 596, v93 + 640, v93 + 292, v93 + 636, v93 + 624, v93 + 600, v93 + 604, v93 + 608, v93 + 612, v93 + 616, v93 + 620) == 12)
        {
          v95 = (v93 + 120);
          if (fscanf(v119, "\tsY %d ", v93 + 120))
          {
            if (*v95 >= 1)
            {
              v96 = 0;
              v97 = v93 + 8;
              while (fscanf(v119, "%d %d", v97, v97 + 4) == 2)
              {
                ++v96;
                v97 += 8;
                if (v96 >= *v95)
                {
                  goto LABEL_202;
                }
              }

              v20 = v117;
              sub_2779F5C10(v117, 1, "Unable to read y scaling points");
              goto LABEL_240;
            }

LABEL_202:
            v98 = (v93 + 204);
            v91 = v116;
            if (fscanf(v119, "\n\tsCb %d", v93 + 204))
            {
              if (*v98 >= 1)
              {
                v99 = 0;
                v100 = v93 + 124;
                while (fscanf(v119, "%d %d", v100, v100 + 4) == 2)
                {
                  ++v99;
                  v100 += 8;
                  if (v99 >= *v98)
                  {
                    goto LABEL_207;
                  }
                }

                v20 = v117;
                sub_2779F5C10(v117, 1, "Unable to read cb scaling points");
                goto LABEL_240;
              }

LABEL_207:
              v101 = (v93 + 288);
              v91 = v116;
              if (fscanf(v119, "\n\tsCr %d", v93 + 288))
              {
                if (*v101 >= 1)
                {
                  v102 = 0;
                  v103 = v93 + 208;
                  while (fscanf(v119, "%d %d", v103, v103 + 4) == 2)
                  {
                    ++v102;
                    v103 += 8;
                    if (v102 >= *v101)
                    {
                      goto LABEL_212;
                    }
                  }

                  v20 = v117;
                  sub_2779F5C10(v117, 1, "Unable to read cr scaling points");
LABEL_240:
                  v91 = v116;
                  goto LABEL_189;
                }

LABEL_212:
                v91 = v116;
                if (!fscanf(v119, "\n\tcY"))
                {
                  v104 = *(v93 + 296) + *(v93 + 296) * *(v93 + 296);
                  v105 = (2 * v104);
                  if (v105 < 1)
                  {
LABEL_225:
                    v91 = v116;
                    if (fscanf(v119, "\n\tcCb"))
                    {
                      v20 = v117;
                      sub_2779F5C10(v117, 1, "Unable to read Cb coeffs header (cCb)", v114);
                    }

                    else if ((v105 & 0x80000000) != 0)
                    {
                      if (fscanf(v119, "\n\tcCr"))
                      {
LABEL_238:
                        v20 = v117;
                        sub_2779F5C10(v117, 1, "Unable read to Cr coeffs header (cCr)", v114);
                      }

                      else
                      {
LABEL_241:
                        fscanf(v119, "\n");
                        v20 = v117;
                      }
                    }

                    else
                    {
                      v108 = v93 + 396;
                      v109 = v105 + 1;
                      v110 = v109;
                      do
                      {
                        if (fscanf(v119, "%d", v108) != 1)
                        {
                          v20 = v117;
                          sub_2779F5C10(v117, 1, "Unable to read Cb coeffs");
                          goto LABEL_240;
                        }

                        v108 += 4;
                        --v110;
                      }

                      while (v110);
                      v91 = v116;
                      if (fscanf(v119, "\n\tcCr"))
                      {
                        goto LABEL_238;
                      }

                      v111 = v93 + 496;
                      while (fscanf(v119, "%d", v111) == 1)
                      {
                        v111 += 4;
                        if (!--v109)
                        {
                          goto LABEL_241;
                        }
                      }

                      v20 = v117;
                      sub_2779F5C10(v117, 1, "Unable to read Cr coeffs");
                    }

                    goto LABEL_189;
                  }

                  v106 = v93 + 300;
                  v107 = (2 * v104);
                  while (fscanf(v119, "%d", v106) == 1)
                  {
                    v106 += 4;
                    if (!--v107)
                    {
                      goto LABEL_225;
                    }
                  }

                  v20 = v117;
                  sub_2779F5C10(v117, 1, "Unable to read Y coeffs");
                  goto LABEL_240;
                }

                v20 = v117;
                sub_2779F5C10(v117, 1, "Unable to read Y coeffs header (cY)", v114);
              }

              else
              {
                v20 = v117;
                sub_2779F5C10(v117, 1, "Unable to read num cr points", v114);
              }
            }

            else
            {
              v20 = v117;
              sub_2779F5C10(v117, 1, "Unable to read num cb points", v113);
            }
          }

          else
          {
            sub_2779F5C10(v117, 1, "Unable to read num y points", v112);
          }
        }

        else
        {
          sub_2779F5C10(v117, 1, "Unable to read entry params. Read %d != 12");
        }
      }

LABEL_189:
      *(v93 + 664) = 0;
      if (v118)
      {
        *(v118 + 664) = v93;
      }

      v5 = v124;
      v22 = v119;
      if (!*v91)
      {
        *v91 = v93;
      }

      v91[1] = v93;
      v118 = v93;
      if (*v20)
      {
        goto LABEL_27;
      }
    }
  }

  if (*(v3 + 223) == 2)
  {
    v16 = *(v6 + 360);
    *(v6 + 32) = *(v16 + 72);
    if (*(v3 + 292) == 1)
    {
      *(v6 + 12) = 0;
      *v6 = 0;
      *(v6 + 36) = 0;
      *(a1 + 269476) = 0u;
      *(a1 + 269492) = 0u;
      *(a1 + 269508) = 0u;
      *(a1 + 269524) = 0u;
      *(a1 + 269540) = 0u;
      *(a1 + 269556) = 0u;
      *(a1 + 269572) = 0u;
      *(a1 + 269588) = 0u;
      *(a1 + 269604) = 0u;
      *(a1 + 269620) = 0u;
      *(a1 + 269636) = 0;
      *(a1 + 269748) = 0u;
      *(a1 + 269764) = 0u;
      *(a1 + 269780) = 0u;
      *(a1 + 269796) = 0u;
      *(a1 + 269812) = 0u;
      *(a1 + 269828) = 0u;
      *(a1 + 269844) = 0u;
      *(a1 + 269860) = 0u;
      *(a1 + 269876) = 0u;
      *(a1 + 269892) = 0u;
      *(a1 + 269908) = 0u;
      *(a1 + 269924) = 0u;
      *(a1 + 269940) = 0;
    }

    goto LABEL_16;
  }

  bzero((a1 + 269352), 0x288uLL);
LABEL_33:
  v23 = 0;
  v24 = v3;
  v25 = *(v3 + 62);
  if (v25 == 4)
  {
    v25 = 0;
  }

  *(v5 + 122) = v25;
  *(a1 + 97136) = *(v125 + 72);
  *(a1 + 97224) = a1 + 270020;
  v26 = *(a1 + 272160);
  *v10 = *(a1 + 272144);
  *(v126 + 23192) = v26;
  v7[9] = 0;
  do
  {
    v27 = v10[v23];
    if (v27 < 0x1C || v27 == 32)
    {
      v7[9] |= 1 << v23;
      v28 = &v10[8 * v23];
      if (!*(v28 + 5))
      {
        v29 = malloc_type_malloc(0x107E7uLL, 0x5F484EBFuLL);
        if (v29 && (v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF0, *(v30 - 8) = v29, v30))
        {
          bzero(((v29 + 23) & 0xFFFFFFFFFFFFFFF0), 0x107D0uLL);
          *(v28 + 5) = v30;
        }

        else
        {
          *(v28 + 5) = 0;
          sub_2779F5C10(*(v127 + 48), 2, "Failed to allocate level_params->level_info[i]");
        }
      }
    }

    ++v23;
  }

  while (v23 != 32);
  if (*v10 < 0x1CuLL)
  {
    v31 = *(v6 + 360);
    v32 = &unk_277C300D0 + 80 * *v10;
    if (*(v125 + 321))
    {
      v33 = *v32 >= 8u;
    }

    else
    {
      v33 = 0;
    }

    v34 = !v33;
    v35 = 56;
    if (v34)
    {
      v35 = 48;
    }

    v36 = 3.0;
    if (*(v31 + 69) == 1)
    {
      v36 = 2.0;
    }

    if (!*(v31 + 69))
    {
      v36 = 1.0;
    }

    v37 = v36 * (*&v32[v35] * 1000000.0);
    v38 = *(v6 + 1288);
    if (v38 >= (v37 * 0.7))
    {
      v38 = (v37 * 0.7);
    }

    *(v6 + 1288) = v38;
    v39 = *(*(*a1 + 23888) + 24);
    if (v39)
    {
      *(*a1 + 35536) = (*(v39 + 168) * v38 / 10000000.0);
    }

    *(v6 + 1324) = 0xFF00000000;
    v40 = *(v32 + 6);
    v41 = *(v6 + 1488);
    if (v41 >= 1)
    {
      v42 = *(v32 + 7);
      while (1 << v41 > v42)
      {
        v43 = __OFSUB__(v41--, 1);
        *(v6 + 1488) = v41;
        if ((v41 < 0) ^ v43 | (v41 == 0))
        {
          LOBYTE(v41) = 0;
          break;
        }
      }
    }

    v44 = *(v6 + 1492);
    if (v44 >= 1)
    {
      v45 = 1 << v41;
      do
      {
        if (v45 << v44 <= v40)
        {
          break;
        }

        v43 = __OFSUB__(v44--, 1);
        *(v6 + 1492) = v44;
      }

      while (!((v44 < 0) ^ v43 | (v44 == 0)));
    }

    if (*(v31 + 57))
    {
      v46 = 80;
    }

    else
    {
      v47 = 72;
      if (v34)
      {
        v47 = 64;
      }

      v46 = (fmax(*&v32[v47] * (*(v32 + 5) / *(v32 + 4)), 0.8) * 100.0);
    }

    if (*(v6 + 1312) > v46)
    {
      v46 = *(v6 + 1312);
    }

    *(v6 + 1312) = v46;
  }

  if (*(v6 + 2228) || *(*a1 + 23172))
  {
    goto LABEL_82;
  }

  if (*(v24 + 47) == 3)
  {
    v48 = 16;
    goto LABEL_83;
  }

  if (*(v6 + 2256) != 1 || *(v6 + 1456) || !*(v127 + 16))
  {
LABEL_82:
    v48 = 18;
LABEL_83:
    *(v126 + 44120) = v48;
  }

  *(v6 + 3800) = 0;
  *(v127 + 516) = ((*(v24 + 864) | *(v24 + 291)) & 1) == 0;
  if (*(a1 + 102896))
  {
    goto LABEL_92;
  }

  v49 = malloc_type_malloc(0x5017uLL, 0x5F484EBFuLL);
  if (v49)
  {
    v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v50 - 8) = v49;
    *(a1 + 102896) = v50;
    if (v50)
    {
      goto LABEL_92;
    }
  }

  else
  {
    *(a1 + 102896) = 0;
  }

  sub_2779F5C10(*(v127 + 48), 2, "Failed to allocate x->palette_buffer");
LABEL_92:
  if (*(a1 + 102944))
  {
    goto LABEL_99;
  }

  v51 = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
  if (!v51)
  {
    *(a1 + 102944) = 0;
LABEL_97:
    sub_2779F5C10(*(v127 + 48), 2, "Failed to allocate x->tmp_conv_dst");
    v52 = *(a1 + 102944);
    goto LABEL_98;
  }

  v52 = (v51 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v52 - 8) = v51;
  *(a1 + 102944) = v52;
  if (!v52)
  {
    goto LABEL_97;
  }

LABEL_98:
  *(a1 + 101512) = v52;
LABEL_99:
  if (*(v6 + 1232))
  {
    if (*(a1 + 102904))
    {
      goto LABEL_126;
    }

    v53 = *(v127 + 48);
    v54 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
    if (v54)
    {
      v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v55 - 8) = v54;
      *(a1 + 102904) = v55;
      if (v55)
      {
        goto LABEL_106;
      }
    }

    else
    {
      *(a1 + 102904) = 0;
    }

    sub_2779F5C10(v53, 2, "Failed to allocate bufs->pred0");
LABEL_106:
    v56 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
    if (v56)
    {
      v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v57 - 8) = v56;
      *(a1 + 102912) = v57;
      if (v57)
      {
        goto LABEL_111;
      }
    }

    else
    {
      *(a1 + 102912) = 0;
    }

    sub_2779F5C10(v53, 2, "Failed to allocate bufs->pred1");
LABEL_111:
    v58 = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
    if (v58)
    {
      v59 = (v58 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v59 - 8) = v58;
      *(a1 + 102920) = v59;
      if (v59)
      {
        goto LABEL_116;
      }
    }

    else
    {
      *(a1 + 102920) = 0;
    }

    sub_2779F5C10(v53, 2, "Failed to allocate bufs->residual1");
LABEL_116:
    v60 = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
    if (v60)
    {
      v61 = (v60 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v61 - 8) = v60;
      *(a1 + 102928) = v61;
      if (v61)
      {
LABEL_121:
        v62 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
        if (!v62)
        {
          *(a1 + 102936) = 0;
LABEL_125:
          sub_2779F5C10(v53, 2, "Failed to allocate bufs->tmp_best_mask_buf");
          goto LABEL_126;
        }

        v63 = (v62 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v63 - 8) = v62;
        *(a1 + 102936) = v63;
        if (!v63)
        {
          goto LABEL_125;
        }

LABEL_126:
        v64 = 0;
        v65 = a1 + 102952;
        v66 = 1;
        while (1)
        {
          v67 = v66;
          if (!*(v65 + 8 * v64))
          {
            break;
          }

LABEL_134:
          v66 = 0;
          v64 = 1;
          if ((v67 & 1) == 0)
          {
            goto LABEL_135;
          }
        }

        v68 = malloc_type_malloc(0x18027uLL, 0x5F484EBFuLL);
        if (v68)
        {
          v69 = (v68 + 39) & 0xFFFFFFFFFFFFFFE0;
          *(v69 - 8) = v68;
          *(v65 + 8 * v64) = v69;
          if (v69)
          {
LABEL_133:
            *(a1 + 101520 + 8 * v64) = v69;
            goto LABEL_134;
          }
        }

        else
        {
          *(v65 + 8 * v64) = 0;
        }

        sub_2779F5C10(*(v127 + 48), 2, "Failed to allocate x->tmp_pred_bufs[i]");
        v69 = *(v65 + 8 * v64);
        goto LABEL_133;
      }
    }

    else
    {
      *(a1 + 102928) = 0;
    }

    sub_2779F5C10(v53, 2, "Failed to allocate bufs->diff10");
    goto LABEL_121;
  }

LABEL_135:
  *(a1 + 264608) = 0;
  *(a1 + 264610) = 0;
  *(a1 + 264612) = 0u;
  *(a1 + 264628) = 0u;
  *(a1 + 264644) = 0u;
  *(a1 + 264660) = 0u;
  *(a1 + 264676) = 0u;
  *(a1 + 264692) = 0u;
  *(a1 + 264708) = 0u;
  *(a1 + 264724) = 0u;
  *(a1 + 264740) = 0u;
  *(a1 + 264756) = 0u;
  v70 = *(a1 + 133624);
  if (v70)
  {
    *(v127 + 493) = 1;
    v70[0x10000] = v70 + 65548;
    v70[65537] = v70 + 24577;
    v70[65538] = v70 + 327684;
    v70[65539] = v70 + 57344;
    v70[65540] = v70 + 65538;
  }

  v71 = *(v126 + 44368);
  v72 = *(v126 + 44152);
  if (v71 >= v72)
  {
    v71 = *(v126 + 44152);
  }

  *(v126 + 44368) = v71;
  v73 = *(v126 + 44336);
  if (v73 >= v72)
  {
    v73 = v72;
  }

  *(v126 + 44336) = v73;
  v74 = *(a1 + 395376);
  if (v74 < 0.1)
  {
    v74 = 30.0;
  }

  *(a1 + 395376) = v74;
  sub_277A5BB98(a1, *(v127 + 56), *(v127 + 60));
  *(a1 + 395240) = *(v24 + 22);
  if (!*(v6 + 1332) && !*(v6 + 1328))
  {
    *(v126 + 44212) = 0u;
  }

  if (*(v24 + 864))
  {
    v75 = 0;
  }

  else
  {
    v75 = 4;
  }

  *(v127 + 505) = v75;
  *(v127 + 503) = *(v24 + 966) | *(v127 + 497);
  v76 = *(v6 + 1192);
  if (v76 < 1 || (v77 = *(v6 + 1196), v77 < 1))
  {
    v78 = *(v6 + 1176);
    v79 = *(v6 + 1180);
    *(v127 + 64) = v78;
    *(v127 + 68) = v79;
  }

  else
  {
    *(v127 + 64) = v76;
    *(v127 + 68) = v77;
    v78 = *(v6 + 1176);
    v79 = *(v6 + 1180);
  }

  *(v127 + 56) = v78;
  *(v127 + 60) = v79;
  if (v78 > *v122 || v79 > *(a1 + 463512) || a3)
  {
    v80 = *(v127 + 592);
    if (v80)
    {
      v80(a1 + 246136);
    }

    sub_277A82C68((a1 + 270936));
    sub_2779C963C(a1 + 240768);
    if (*v121)
    {
      free(*(*v121 - 8));
    }

    *v121 = 0;
    if (*(*(v6 + 360) + 77))
    {
      v81 = 1;
    }

    else
    {
      v81 = 3;
    }

    sub_2779C9AE8(*(a1 + 241064), v81);
    *(a1 + 241064) = 0;
    sub_277AC65E0(a1);
    sub_277AC6A44(a1);
    *v122 = *(v127 + 56);
    *(a1 + 463520) = 0;
  }

  result = sub_277AB9A60(a1);
  *(a1 + 395120) = 0;
  v86 = *a1;
  if (!*(*a1 + 85776))
  {
    *(v6 + 3817) = 0;
  }

  *(v6 + 3819) = 0;
  if (*(v86 + 51016))
  {
    result = sub_277A31A30(a1, *(v24 + 17), v83, v84, v85);
    v86 = *a1;
  }

  if (*(v127 + 16) > *(v124 + 22))
  {
    if (*(v86 + 51016))
    {
      result = sub_277A3251C(a1);
    }

    else
    {
      v87 = *(a1 + 395184);
      v88 = *(a1 + 395196);
      if (v87 < v88 >> 1 || v87 > v88 + (v88 >> 1))
      {
        v89 = (v86 + 44144);
        *(a1 + 395248) = 0;
        v90 = *v89;
        v89[28] = *v89;
        v89[24] = v90;
      }
    }
  }

  if (v123 != -1)
  {
    *(v6 + 1456) = v123;
  }

  *(v124 + 1068) = *(v24 + 299);
  return result;
}

_OWORD *sub_277AC65E0(uint64_t a1)
{
  v2 = (a1 + 270312);
  v3 = a1 + 245584;
  v4 = (a1 + 239312);
  (*(a1 + 246224))(a1 + 246136, *(a1 + 245672), *(a1 + 245676), *(a1 + 395554));
  if (*(v2 + 467) == 1 || *(a1 + 644192) == 1)
  {
    goto LABEL_43;
  }

  v5 = *v2;
  v6 = ((*(v3 + 564) + ~(-1 << *(*v2 + 36))) >> *(*v2 + 36)) * ((*(v3 + 568) + ~(-1 << *(*v2 + 36))) >> *(*v2 + 36));
  if (*(*v2 + 77))
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  v8 = 1 << byte_277C3BCB6[*(v5 + 28)];
  v9 = v8 >> (*(v5 + 100) + *(v5 + 96));
  v10 = v6;
  v11 = (v8 + v9 * (v7 - 1));
  if (!is_mul_ok(v11, v6))
  {
    sub_2779F5C10(*(v3 + 80), 1, "A multiplication would overflow size_t");
  }

  v12 = v11 * v10;
  sub_277A36F80(a1);
  if ((72 * v10) <= 0x1FFFFFFE9 && (v13 = malloc_type_malloc(72 * v10 + 23, 0x5F484EBFuLL)) != 0)
  {
    v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v14 - 8) = v13;
    *v3 = v14;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *v3 = 0;
  }

  sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate cpi->coeff_buffer_base");
LABEL_14:
  if (v12 >> 62)
  {
    sub_2779F5C10(*(v3 + 80), 1, "A multiplication would overflow size_t");
  }

  if (4 * v12 > 0x1FFFFFFD9 || (v15 = malloc_type_malloc(4 * v12 + 39, 0x5F484EBFuLL)) == 0)
  {
    *(v3 + 8) = 0;
LABEL_25:
    sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate coeff_buf_pool->tcoeff");
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    sub_2779F5C10(*(v3 + 80), 1, "A multiplication would overflow size_t");
    goto LABEL_20;
  }

  v16 = (v15 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v16 - 8) = v15;
  *(v3 + 8) = v16;
  if (!v16)
  {
    goto LABEL_25;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  v17 = (v12 >> 3) & 0xFFFFFFFFFFFFFFFLL;
  if (v17 > 0x1FFFFFFE9 || (v18 = malloc_type_malloc(v17 + 23, 0x5F484EBFuLL)) == 0)
  {
    *(v3 + 16) = 0;
LABEL_28:
    sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate coeff_buf_pool->eobs");
    goto LABEL_29;
  }

  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v19 - 8) = v18;
  *(v3 + 16) = v19;
  if (!v19)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v12 <= 0x1FFFFFFE9FLL && (v20 = malloc_type_malloc((v12 >> 4) + 23, 0x5F484EBFuLL)) != 0)
  {
    v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v21 - 8) = v20;
    *(v3 + 24) = v21;
    if (v21)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *(v3 + 24) = 0;
  }

  sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate coeff_buf_pool->entropy_ctx");
  v21 = *(v3 + 24);
LABEL_35:
  if (v10 >= 1)
  {
    v22 = 0;
    v24 = *(v3 + 8);
    v23 = *(v3 + 16);
    for (i = 0; i != v10; ++i)
    {
      v26 = 0;
      v27 = v22;
      do
      {
        if (v26)
        {
          v28 = v9;
        }

        else
        {
          v28 = v8;
        }

        *(*v3 + v27) = v24;
        *(*v3 + v27 + 24) = v23;
        v24 += 4 * v28;
        v29 = v28 / 16;
        *(*v3 + v27 + 48) = v21;
        v23 += 2 * v29;
        v21 += v29;
        --v26;
        v27 += 8;
      }

      while (-v7 != v26);
      v22 += 72;
    }
  }

LABEL_43:
  if (*v4)
  {
    free(*(*v4 - 8));
  }

  *v4 = 0;
  if (*(v2 + 218))
  {
    v30 = malloc_type_malloc(0x8003FuLL, 0x5F484EBFuLL);
    if (v30 && (v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF0, *(v31 - 8) = v30, v31))
    {
      bzero(((v30 + 23) & 0xFFFFFFFFFFFFFFF0), 0x80028uLL);
      *v4 = v31;
    }

    else
    {
      *v4 = 0;
      sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate cpi->td.mv_costs_alloc");
      v31 = *v4;
    }

    *(a1 + 133624) = v31;
  }

  sub_2779C9490(*v2, a1 + 240768, *(v3 + 80));
  if (sub_2779C9F18(a1, a1 + 86064))
  {
    sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate SMS tree");
  }

  result = sub_2779C96A8(a1, 6, a1 + 240768);
  v4[219] = result;
  if (!result)
  {
    v33 = *(v3 + 80);

    return sub_2779F5C10(v33, 2, "Failed to allocate PICK_MODE_CONTEXT");
  }

  return result;
}

unint64_t sub_277AC6A44(uint64_t a1)
{
  v1 = (a1 + 463416);
  v2 = a1 + 245664;
  v3 = *(a1 + 463416);
  if (v3)
  {
    free(*(v3 - 8));
  }

  v4 = sub_2779724A8(*(v2 + 488) * *(v2 + 484), 1uLL);
  *v1 = v4;
  if (!v4)
  {
    sub_2779F5C10(*v2, 2, "Failed to allocate cpi->enc_seg.map");
  }

  v5 = v1[2];
  if (v5)
  {
    sub_277A4C9A0(v5);
  }

  v6 = *(v2 + 484);
  v7 = *(v2 + 488);
  v8 = malloc_type_malloc(0x8FuLL, 0x5F484EBFuLL);
  if (v8)
  {
    v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v9 - 8) = v8;
    if (v9)
    {
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
      *v9 = 0u;
      v10 = sub_2779724A8(v7 * v6, 1uLL);
      *(v9 + 40) = v10;
      *(v9 + 112) = 0;
      *(v9 + 4) = 5;
      *(v9 + 80) = 0x3FD0000000000000;
      if (v10)
      {
        v1[2] = v9;
        goto LABEL_13;
      }

      free(*(v9 - 8));
    }
  }

  v1[2] = 0;
  sub_2779F5C10(*v2, 2, "Failed to allocate cpi->cyclic_refresh");
LABEL_13:
  v11 = v1[4];
  if (v11)
  {
    free(*(v11 - 8));
  }

  result = sub_2779724A8(*(v2 + 488) * *(v2 + 484), 1uLL);
  v1[4] = result;
  if (!result)
  {
    v13 = *v2;

    return sub_2779F5C10(v13, 2, "Failed to allocate cpi->active_map.map");
  }

  return result;
}

char *sub_277AC6BC0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x14FAFuLL, 0x5F484EBFuLL);
  if (v6)
  {
    *(((v6 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v6;
    v7 = ((v6 + 39) & 0xFFFFFFFFFFFFFFE0);
  }

  else
  {
    v7 = 0;
  }

  v40 = v7;
  if (!v7)
  {
    return 0;
  }

  bzero(v7, 0x14F88uLL);
  if (setjmp(v40 + 12811))
  {
    *(v40 + 12810) = 0;
    sub_277AC8F60(v40);
    return 0;
  }

  v9 = 1;
  *(v40 + 12810) = 1;
  *(v40 + 94) = 0;
  *(v40 + 5793) = a2 > 0;
  *(v40 + 48) = a1;
  *(v40 + 5868) = 0;
  *(v40 + 5869) = *(a3 + 12);
  *(v40 + 82) = 1;
  *(v40 + 12754) = 0;
  *(v40 + 6378) = 0x100000001;
  v10 = *(a3 + 1072);
  v40[49141] = v10;
  v11 = *(a3 + 272);
  *(v40 + 12286) = v11;
  v40[49148] = *(a3 + 1107);
  v12 = *(a3 + 904);
  *(v40 + 6144) = v12;
  v13 = *(a3 + 912);
  *(v40 + 12290) = v13;
  v14 = *(a3 + 292);
  v40[49149] = v14;
  *(v40 + 12294) = *(a3 + 916);
  *(v40 + 12291) = *(a3 + 920);
  v15 = *(a3 + 946);
  *(v40 + 12330) = v15;
  v16 = *(a3 + 924);
  *(v40 + 49324) = v16;
  v40[49360] = *(a3 + 945);
  v17 = *(a3 + 944);
  v40[49340] = v17;
  if (v17 == 1)
  {
    *(v40 + 12336) = *(a3 + 940);
    v40[51020] = 1;
    *(v40 + 49348) = 0xA00000010;
    *(v40 + 12339) = 10;
    v18 = xmmword_277BB7970;
LABEL_13:
    *(v40 + 12358) = v9;
    *(v40 + 3091) = v18;
    v19 = 8;
    goto LABEL_14;
  }

  v19 = 10;
  if (v15 && DWORD2(v16))
  {
    v18 = xmmword_277BB7960;
    v9 = 0;
    goto LABEL_13;
  }

LABEL_14:
  *(v40 + 12368) = v19;
  if (v14)
  {
LABEL_15:
    v20 = 1;
    *(v40 + 12292) = 1;
    goto LABEL_23;
  }

  if (v12 == 0xD00000001 && !v13 || v10 == 1)
  {
    v20 = 0;
    *(v40 + 12292) = 0;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_15;
    }

    if (v11 == 12)
    {
      v21 = *(a3 + 20);
      *(v40 + 12292) = *(a3 + 16);
      v20 = v21;
    }

    else
    {
      *(v40 + 12292) = 1;
      v20 = 0;
    }
  }

LABEL_23:
  *(v40 + 12293) = v20;
  sub_277ABA1EC(v40, a3, 0);
  v22 = *(a3 + 308);
  if (!v22)
  {
    v23 = (*a3 * 0.125);
    v24 = *a3 * (*(a3 + 24) * *(a3 + 28));
    if (v23 >= 32)
    {
      v23 = 32;
    }

    if (v23 <= 4)
    {
      v23 = 4;
    }

    v22 = v23;
    if (v24 > 165888000.0)
    {
      if (v23 <= (v24 * 4.0 / 165888000.0 + 0.5))
      {
        v22 = (v24 * 4.0 / 165888000.0 + 0.5);
      }

      else
      {
        v22 = v23;
      }
    }
  }

  v25 = *(a3 + 176);
  v26 = *(a3 + 312);
  if (!v26)
  {
    v27 = (*a3 * 0.75);
    if (v27 >= 32)
    {
      v27 = 32;
    }

    v28 = (v27 & 1) + v27;
    if (v28 <= v22)
    {
      v28 = v22;
    }

    if (v28 <= 32)
    {
      v26 = 32;
    }

    else
    {
      v26 = v28;
    }
  }

  *(v40 + 11030) = (v26 + v22) / 2;
  *(v40 + 2770) = 0u;
  *(v40 + 5516) = 0;
  *(v40 + 11048) = 0;
  *(v40 + 5525) = 0;
  v29 = *(v40 + 5517);
  *(v40 + 5542) = v29;
  if (*(a3 + 1040) < 0x1Cu)
  {
    v25 = 255;
  }

  if (*(a3 + 1076) || *(a3 + 188) != 1)
  {
    *(v40 + 11053) = (*(a3 + 180) + v25) / 2;
    v25 = (*(a3 + 180) + v25) / 2;
  }

  else
  {
    *(v40 + 11053) = v25;
  }

  *(v40 + 11054) = v25;
  *(v40 + 5533) = sub_277A58CE0(*(a3 + 176), *(a3 + 272));
  *(v40 + 11068) = *(a3 + 180);
  *(v40 + 11069) = *(a3 + 176);
  memset_pattern16(v40 + 44288, &unk_277BB7CF0, 0x20uLL);
  *(v40 + 5539) = 0x3FF0000000000000;
  *(v40 + 5546) = v29;
  v30 = (*(a3 + 136) / *a3);
  if (v30 <= 1)
  {
    v30 = 1;
  }

  *(v40 + 11094) = v30;
  *(v40 + 11095) = v30;
  *(v40 + 11046) = 2;
  if (!*(v40 + 5793))
  {
    goto LABEL_54;
  }

  if ((a2 - 19) < 0xE)
  {
    v31 = 1;
LABEL_53:
    *(v40 + 11046) = v31;
    goto LABEL_54;
  }

  if (a2 <= 18)
  {
    v31 = 0;
    goto LABEL_53;
  }

LABEL_54:
  *(v40 + 6686) = sub_27799EA84;
  *(v40 + 6688) = sub_27799FC20;
  *(v40 + 6689) = off_280ABCC48;
  *(v40 + 6690) = sub_277A0B8C0;
  *(v40 + 6691) = sub_277A1061C;
  *(v40 + 6692) = sub_277A4B1C0;
  *(v40 + 6700) = sub_2779A09E8;
  *(v40 + 6701) = sub_277A151E8;
  *(v40 + 6693) = sub_277A49FDC;
  *(v40 + 6702) = qword_280ABC988;
  *(v40 + 6704) = qword_280ABC990;
  *(v40 + 6705) = off_280ABCC10;
  *(v40 + 6706) = sub_277A0BAF4;
  *(v40 + 6707) = sub_277A10868;
  *(v40 + 6708) = qword_280ABC9A0;
  *(v40 + 6716) = qword_280ABC860;
  *(v40 + 6717) = sub_277A1546C;
  *(v40 + 6709) = qword_280ABC998;
  *(v40 + 6718) = sub_27799EAD4;
  *(v40 + 6720) = sub_27799FC7C;
  *(v40 + 6721) = off_280ABCC88;
  *(v40 + 6722) = sub_277A0B9E4;
  *(v40 + 6723) = sub_277A10748;
  *(v40 + 6724) = sub_277A4B2AC;
  *(v40 + 6732) = sub_2779A0A5C;
  *(v40 + 6733) = sub_277A15330;
  *(v40 + 6725) = sub_277A4A0A8;
  *(v40 + 6734) = qword_280ABCA48;
  *(v40 + 6736) = qword_280ABCA50;
  *(v40 + 6737) = off_280ABCC40;
  *(v40 + 6738) = sub_277A0C018;
  *(v40 + 6739) = sub_277A10DB0;
  *(v40 + 6740) = qword_280ABCA60;
  *(v40 + 6748) = qword_280ABC890;
  *(v40 + 6749) = sub_277A159A4;
  *(v40 + 6741) = qword_280ABCA58;
  *(v40 + 6750) = qword_280ABC9A8;
  *(v40 + 6752) = qword_280ABC9B0;
  *(v40 + 6753) = off_280ABCC18;
  *(v40 + 6754) = sub_277A0BC14;
  *(v40 + 6755) = sub_277A10990;
  *(v40 + 6756) = qword_280ABC9C0;
  *(v40 + 6764) = qword_280ABC868;
  *(v40 + 6765) = sub_277A15578;
  *(v40 + 6757) = qword_280ABC9B8;
  *(v40 + 6766) = qword_280ABCA88;
  *(v40 + 6768) = qword_280ABCA90;
  *(v40 + 6769) = off_280ABCC68;
  *(v40 + 6770) = sub_277A0C520;
  *(v40 + 6771) = sub_277A11334;
  *(v40 + 6772) = qword_280ABCAA0;
  *(v40 + 6780) = qword_280ABC8A0;
  *(v40 + 6781) = sub_277A15E8C;
  *(v40 + 6773) = qword_280ABCA98;
  *(v40 + 6670) = qword_280ABC908;
  *(v40 + 6672) = qword_280ABC910;
  *(v40 + 6673) = off_280ABCBF0;
  *(v40 + 6674) = sub_277A0B368;
  *(v40 + 6675) = sub_277A10064;
  *(v40 + 6676) = qword_280ABC920;
  *(v40 + 6684) = qword_280ABC840;
  *(v40 + 6685) = sub_277A14CA0;
  *(v40 + 6677) = qword_280ABC918;
  *(v40 + 6654) = qword_280ABC928;
  *(v40 + 6656) = qword_280ABC930;
  *(v40 + 6657) = off_280ABCBF8;
  *(v40 + 6658) = sub_277A0AE10;
  *(v40 + 6659) = sub_277A0FAAC;
  *(v40 + 6660) = qword_280ABC940;
  *(v40 + 6668) = qword_280ABC848;
  *(v40 + 6669) = sub_277A14758;
  *(v40 + 6661) = qword_280ABC938;
  *(v40 + 6638) = qword_280ABCA68;
  *(v40 + 6640) = qword_280ABCA70;
  *(v40 + 6641) = off_280ABCC60;
  *(v40 + 6642) = sub_277A0A8B8;
  *(v40 + 6643) = sub_277A0F4F4;
  *(v40 + 6644) = qword_280ABCA80;
  *(v40 + 6652) = qword_280ABC898;
  *(v40 + 6653) = sub_277A14210;
  *(v40 + 6645) = qword_280ABCA78;
  *(v40 + 6558) = qword_280ABC9E8;
  *(v40 + 6560) = qword_280ABC9F0;
  *(v40 + 6561) = off_280ABCC28;
  *(v40 + 6562) = sub_277A08F3C;
  *(v40 + 6563) = sub_277A0D94C;
  *(v40 + 6564) = qword_280ABCA00;
  *(v40 + 6572) = qword_280ABC878;
  *(v40 + 6573) = sub_277A128E0;
  *(v40 + 6565) = qword_280ABC9F8;
  *(v40 + 6542) = qword_280ABC968;
  *(v40 + 6544) = qword_280ABC970;
  *(v40 + 6545) = off_280ABCC08;
  *(v40 + 6546) = sub_277A08B38;
  *(v40 + 6547) = sub_277A0D52C;
  *(v40 + 6548) = qword_280ABC980;
  *(v40 + 6556) = qword_280ABC858;
  *(v40 + 6557) = sub_277A124B4;
  *(v40 + 6549) = qword_280ABC978;
  *(v40 + 6606) = qword_280ABCAA8;
  *(v40 + 6608) = qword_280ABCAB0;
  *(v40 + 6609) = off_280ABCC70;
  *(v40 + 6610) = sub_277A09E2C;
  *(v40 + 6611) = sub_277A0E9AC;
  *(v40 + 6612) = qword_280ABCAC0;
  *(v40 + 6620) = qword_280ABC8A8;
  *(v40 + 6621) = sub_277A137B4;
  *(v40 + 6613) = qword_280ABCAB8;
  *(v40 + 6590) = qword_280ABCA28;
  *(v40 + 6592) = qword_280ABCA30;
  *(v40 + 6593) = off_280ABCC38;
  *(v40 + 6594) = sub_277A0991C;
  *(v40 + 6595) = sub_277A0E424;
  *(v40 + 6596) = qword_280ABCA40;
  *(v40 + 6604) = qword_280ABC888;
  *(v40 + 6605) = sub_277A132B0;
  *(v40 + 6597) = qword_280ABCA38;
  *(v40 + 6574) = off_280ABCA08;
  *(v40 + 6576) = qword_280ABCA10;
  *(v40 + 6577) = off_280ABCC30;
  *(v40 + 6578) = sub_277A0942C;
  *(v40 + 6579) = sub_277A0DEB8;
  *(v40 + 6580) = qword_280ABCA20;
  *(v40 + 6588) = qword_280ABC880;
  *(v40 + 6589) = sub_277A12DC8;
  *(v40 + 6581) = qword_280ABCA18;
  *(v40 + 6622) = qword_280ABCAC8;
  *(v40 + 6624) = qword_280ABCAD0;
  *(v40 + 6625) = off_280ABCC78;
  *(v40 + 6626) = sub_277A0A360;
  *(v40 + 6627) = sub_277A0EF3C;
  *(v40 + 6628) = qword_280ABCAE0;
  *(v40 + 6636) = qword_280ABC8B0;
  *(v40 + 6637) = sub_277A13CC8;
  *(v40 + 6629) = qword_280ABCAD8;
  *(v40 + 6526) = qword_280ABC948;
  *(v40 + 6528) = qword_280ABC950;
  *(v40 + 6529) = off_280ABCC00;
  *(v40 + 6530) = sub_277A08734;
  *(v40 + 6531) = sub_277A0D10C;
  *(v40 + 6532) = qword_280ABC960;
  *(v40 + 6540) = qword_280ABC850;
  *(v40 + 6541) = sub_277A12088;
  *(v40 + 6533) = qword_280ABC958;
  *(v40 + 6510) = qword_280ABC9C8;
  *(v40 + 6512) = qword_280ABC9D0;
  *(v40 + 6513) = off_280ABCC20;
  *(v40 + 6514) = sub_277A0860C;
  *(v40 + 6515) = sub_277A0CFDC;
  *(v40 + 6516) = qword_280ABC9E0;
  *(v40 + 6524) = qword_280ABC870;
  *(v40 + 6525) = sub_277A11EDC;
  *(v40 + 6517) = qword_280ABC9D8;
  *(v40 + 6494) = sub_27799E57C;
  *(v40 + 6496) = sub_27799F5DC;
  *(v40 + 6497) = off_280ABCC80;
  *(v40 + 6498) = sub_277A084FC;
  *(v40 + 6499) = sub_277A0CEBC;
  *(v40 + 6500) = sub_277A4A6B0;
  *(v40 + 6508) = sub_27799FFF8;
  *(v40 + 6509) = sub_277A11DA0;
  *(v40 + 6501) = sub_277A49630;
  *(v40 + 6478) = sub_27799E544;
  *(v40 + 6480) = sub_27799F598;
  *(v40 + 6481) = off_280ABCC98;
  *(v40 + 6482) = sub_277A083F4;
  *(v40 + 6483) = sub_277A0CDA4;
  *(v40 + 6484) = sub_277A4A624;
  *(v40 + 6492) = sub_27799FF9C;
  *(v40 + 6493) = sub_277A11C6C;
  *(v40 + 6485) = sub_277A495B0;
  *(v40 + 6462) = sub_27799E50C;
  *(v40 + 6464) = sub_27799F554;
  *(v40 + 6465) = off_280ABCC90;
  *(v40 + 6466) = sub_277A082EC;
  *(v40 + 6467) = sub_277A0CC8C;
  *(v40 + 6468) = sub_277A4A598;
  *(v40 + 6476) = sub_27799FF40;
  *(v40 + 6477) = sub_277A11B38;
  *(v40 + 6469) = sub_277A49530;
  *(v40 + 6446) = sub_27799E4BC;
  *(v40 + 6448) = sub_27799F4F8;
  *(v40 + 6449) = off_280ABCC58;
  *(v40 + 6450) = sub_277A081C8;
  *(v40 + 6451) = sub_277A0CB60;
  *(v40 + 6452) = sub_277A4A4AC;
  *(v40 + 6460) = sub_27799FECC;
  *(v40 + 6461) = sub_277A119F0;
  *(v40 + 6453) = sub_277A49464;
  *(v40 + 6430) = sub_27799E46C;
  *(v40 + 6432) = sub_27799F49C;
  *(v40 + 6433) = off_280ABCC50;
  *(v40 + 6434) = sub_277A080A4;
  *(v40 + 6435) = sub_277A0CA34;
  *(v40 + 6436) = sub_277A4A3DC;
  *(v40 + 6444) = sub_27799FE58;
  *(v40 + 6445) = sub_277A118A8;
  *(v40 + 6437) = sub_277A493B4;
  *(v40 + 6681) = sub_2779F69B0;
  *(v40 + 6682) = sub_277B304E8;
  *(v40 + 6683) = sub_277A1A7D4;
  *(v40 + 6665) = sub_2779F68EC;
  *(v40 + 6666) = sub_277B303F0;
  *(v40 + 6667) = sub_277A1A294;
  *(v40 + 6649) = sub_2779F6828;
  *(v40 + 6650) = sub_277B302F8;
  *(v40 + 6651) = sub_277A19D54;
  *(v40 + 6633) = sub_2779F6764;
  *(v40 + 6634) = sub_277B30200;
  *(v40 + 6635) = sub_277A19814;
  *(v40 + 6617) = sub_2779F66A0;
  *(v40 + 6618) = sub_277B30108;
  *(v40 + 6619) = sub_277A192F8;
  *(v40 + 6601) = sub_2779F6518;
  *(v40 + 6602) = sub_277B30010;
  *(v40 + 6603) = sub_277A18904;
  *(v40 + 6585) = sub_2779F6454;
  *(v40 + 6586) = sub_277B2FF18;
  *(v40 + 6587) = sub_277A1842C;
  *(v40 + 6569) = sub_2779F6390;
  *(v40 + 6570) = sub_277B2FE20;
  *(v40 + 6571) = sub_277A17F54;
  *(v40 + 6553) = sub_2779F6174;
  *(v40 + 6554) = sub_277B2FD40;
  *(v40 + 6555) = sub_277A1728C;
  *(v40 + 6537) = sub_2779F60C8;
  *(v40 + 6538) = sub_277B2FC60;
  *(v40 + 6539) = sub_277A16EA0;
  *(v40 + 6521) = sub_2779F601C;
  *(v40 + 6522) = sub_277B2FB80;
  *(v40 + 6523) = sub_277A16D80;
  *(v40 + 6505) = sub_2779F5EB8;
  *(v40 + 6506) = sub_277B2FAF8;
  *(v40 + 6507) = sub_277A16998;
  *(v40 + 6489) = sub_2779F5E5C;
  *(v40 + 6490) = sub_277B2FA70;
  *(v40 + 6491) = sub_277A16838;
  *(v40 + 6457) = sub_2779F5D30;
  *(v40 + 6458) = sub_277B2F954;
  *(v40 + 6459) = sub_277A164A0;
  *(v40 + 6473) = sub_2779F5E00;
  *(v40 + 6474) = sub_277B2F9E8;
  *(v40 + 6475) = sub_277A166D8;
  *(v40 + 6441) = sub_2779F5CC8;
  *(v40 + 6442) = sub_277B2F8C0;
  *(v40 + 6443) = sub_277A16384;
  *(v40 + 6697) = sub_2779F5D98;
  *(v40 + 6698) = sub_277B305E0;
  *(v40 + 6699) = sub_277A165BC;
  *(v40 + 6713) = sub_2779F5F70;
  *(v40 + 6714) = sub_277B30674;
  *(v40 + 6715) = sub_277A16C68;
  *(v40 + 6729) = sub_2779F5F14;
  *(v40 + 6730) = sub_277B30754;
  *(v40 + 6731) = sub_277A16B00;
  *(v40 + 6745) = sub_2779F62CC;
  *(v40 + 6746) = sub_277B307DC;
  *(v40 + 6747) = sub_277A17A64;
  *(v40 + 6761) = sub_2779F6220;
  *(v40 + 6762) = sub_277B308D4;
  *(v40 + 6763) = sub_277A17678;
  *(v40 + 6777) = sub_2779F65DC;
  *(v40 + 6778) = sub_277B309B4;
  *(v40 + 6779) = sub_277A18DFC;
  *(v40 + 6679) = sub_277987B68;
  *(v40 + 6680) = sub_277A20488;
  *(v40 + 6663) = sub_2779877C8;
  *(v40 + 6664) = sub_277A1FB20;
  *(v40 + 6647) = sub_2779875C8;
  *(v40 + 6648) = sub_277A1F1B8;
  *(v40 + 6631) = sub_2779873C8;
  *(v40 + 6632) = sub_277A1E854;
  *(v40 + 6615) = sub_2779871C8;
  *(v40 + 6616) = sub_277A1DEFC;
  *(v40 + 6599) = sub_2779870A8;
  *(v40 + 6600) = sub_277A1D5C4;
  *(v40 + 6583) = sub_277986F88;
  *(v40 + 6584) = sub_277A1CCE8;
  *(v40 + 6567) = sub_277986E68;
  *(v40 + 6568) = sub_277A1C408;
  *(v40 + 6551) = sub_277986DA4;
  *(v40 + 6552) = sub_277A1BCF0;
  *(v40 + 6535) = sub_277986CE0;
  *(v40 + 6536) = sub_277A1B5D8;
  *(v40 + 6519) = sub_277986C1C;
  *(v40 + 6520) = sub_277A1B44C;
  *(v40 + 6503) = sub_277986B70;
  *(v40 + 6504) = sub_277A1B2E4;
  *(v40 + 6487) = sub_277986AC4;
  *(v40 + 6488) = sub_277A1B184;
  *(v40 + 6455) = sub_277986930;
  *(v40 + 6456) = sub_277A1AE9C;
  *(v40 + 6471) = sub_277986A18;
  *(v40 + 6472) = sub_277A1B024;
  *(v40 + 6439) = sub_277986848;
  *(v40 + 6440) = sub_277A1AD14;
  *(v40 + 6695) = sub_277987F08;
  *(v40 + 6696) = sub_277A20DEC;
  *(v40 + 6711) = sub_277987FF0;
  *(v40 + 6712) = sub_277A210DC;
  *(v40 + 6727) = sub_2779880B4;
  *(v40 + 6728) = sub_277A20F74;
  *(v40 + 6743) = sub_277988160;
  *(v40 + 6744) = sub_277A21978;
  *(v40 + 6759) = sub_277988280;
  *(v40 + 6760) = sub_277A21260;
  *(v40 + 6775) = sub_277988344;
  *(v40 + 6776) = sub_277A22270;
  *(v40 + 6671) = qword_280ABCAE8;
  *(v40 + 6678) = qword_280ABCAF0;
  *(v40 + 6655) = qword_280ABCAF8;
  *(v40 + 6662) = qword_280ABCB00;
  *(v40 + 6639) = qword_280ABCB98;
  *(v40 + 6646) = qword_280ABCBA0;
  *(v40 + 6623) = qword_280ABCBC8;
  *(v40 + 6630) = qword_280ABCBD0;
  *(v40 + 6607) = qword_280ABCBB8;
  *(v40 + 6614) = qword_280ABCBC0;
  *(v40 + 6591) = qword_280ABCB78;
  *(v40 + 6598) = qword_280ABCB80;
  *(v40 + 6575) = qword_280ABCB68;
  *(v40 + 6582) = qword_280ABCB70;
  *(v40 + 6559) = qword_280ABCB58;
  *(v40 + 6566) = qword_280ABCB60;
  *(v40 + 6543) = qword_280ABCB18;
  *(v40 + 6550) = qword_280ABCB20;
  *(v40 + 6527) = qword_280ABCB08;
  *(v40 + 6534) = qword_280ABCB10;
  *(v40 + 6511) = qword_280ABCB48;
  *(v40 + 6518) = qword_280ABCB50;
  *(v40 + 6495) = sub_27799ECF0;
  *(v40 + 6502) = sub_277A4B7BC;
  *(v40 + 6479) = sub_27799ECAC;
  *(v40 + 6486) = sub_277A4B724;
  *(v40 + 6447) = sub_27799EC58;
  *(v40 + 6454) = sub_277A4B650;
  *(v40 + 6767) = qword_280ABCBA8;
  *(v40 + 6774) = qword_280ABCBB0;
  *(v40 + 6751) = qword_280ABCB38;
  *(v40 + 6758) = qword_280ABCB40;
  *(v40 + 6735) = qword_280ABCB88;
  *(v40 + 6742) = qword_280ABCB90;
  *(v40 + 6719) = sub_27799F2DC;
  *(v40 + 6726) = sub_277A4C3BC;
  *(v40 + 6687) = sub_27799F288;
  *(v40 + 6694) = sub_277A4C2CC;
  sub_277ABAA18(v40);
  v32 = ((*(a3 + 24) + 7) >> 2) & 0xFFFFFFFE;
  v33 = ((*(a3 + 28) + 7) >> 2) & 0xFFFFFFFE;
  v35 = v32 + 3;
  v34 = v32 < -3;
  v36 = v32 + 6;
  if (!v34)
  {
    v36 = v35;
  }

  v37 = v36 >> 2;
  v38 = v33 + 3;
  v34 = v33 < -3;
  v39 = v33 + 6;
  if (!v34)
  {
    v39 = v38;
  }

  *(v40 + 6782) = sub_2779724A8((v39 >> 2) * v37, 8uLL);
  if (!*(v40 + 6782))
  {
    sub_2779F5C10((v40 + 51032), 2, "Failed to allocate ppi->tpl_sb_rdmult_scaling_factors");
  }

  *(v40 + 12810) = 0;
  return v40;
}

void sub_277AC8F60(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 75040);
    v3 = a1 + 48384;
    if (*(a1 + 48384))
    {
      sub_27797ABB4(a1 + 48392);
      sub_27797ABB4(a1 + 48600);
      sub_27797ABB4(a1 + 48808);
    }

    for (i = 0; i != 256; i += 8)
    {
      v5 = *(a1 + 23216 + i);
      if (v5)
      {
        free(*(v5 - 8));
      }
    }

    sub_277AE51A4(*(a1 + 368));
    v6 = *(a1 + 54256);
    if (v6)
    {
      free(*(v6 - 8));
    }

    *(a1 + 54256) = 0;
    v7 = *(a1 + 64736);
    if (v7)
    {
      free(*(v7 - 8));
    }

    v8 = 0;
    v9 = a1 + 64352;
    v10 = a1 + 64744;
    do
    {
      v11 = *(v9 + v8);
      if (v11)
      {
        free(*(v11 - 8));
      }

      sub_27797ABB4(v10);
      *(v9 + v8) = 0;
      v8 += 8;
      v10 += 208;
    }

    while (v8 != 384);
    v71 = a1;
    sub_277AF9EF0((a1 + 74872));
    if (*v2 >= 1)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        sub_277985DDC((*(v2 + 7) + v12));
        ++v13;
        v14 = *v2;
        v12 += 56;
      }

      while (v13 < v14);
      v15 = *(v3 + 765) ? 1 : 3;
      if (v14 >= 2)
      {
        v17 = v2[2];
        v16 = v2[3];
        if (v16 >= v14)
        {
          v16 = *v2;
        }

        if (v17 >= v14)
        {
          v17 = *v2;
        }

        v72 = *(v3 + 764);
        v73 = v16;
        v74 = v17;
        v18 = 1;
        do
        {
          v19 = *(v2 + 8) + 456 * v18;
          v20 = *(v19 + 16);
          *(v19 + 8) = v20;
          v21 = (v19 + 8);
          if (v20)
          {
            v22 = (v20 + 153104);
            v23 = *(v20 + 154976);
            if (v23)
            {
              free(*(v23 - 8));
            }

            v24 = *(v20 + 154856);
            if (v24)
            {
              free(*(v24 - 8));
            }

            v25 = *(v20 + 154904);
            if (v25)
            {
              free(*(v25 - 8));
            }

            v26 = *(v20 + 154864);
            if (v26)
            {
              free(*(v26 - 8));
            }

            v27 = *(v20 + 154872);
            if (v27)
            {
              free(*(v27 - 8));
            }

            v28 = *(v20 + 154880);
            if (v28)
            {
              free(*(v28 - 8));
            }

            v29 = *(v20 + 154888);
            if (v29)
            {
              free(*(v29 - 8));
            }

            v30 = *(v20 + 154896);
            if (v30)
            {
              free(*(v30 - 8));
            }

            *(v20 + 154896) = 0;
            *(v20 + 154864) = 0u;
            *(v20 + 154880) = 0u;
            v31 = *(v20 + 154920);
            if (v31)
            {
              free(*(v31 - 8));
            }

            v32 = *(v20 + 154928);
            if (v32)
            {
              free(*(v32 - 8));
            }

            v33 = (v20 + 159256);
            v34 = *(v20 + 159280);
            if (v34)
            {
              free(*(v34 - 8));
            }

            v35 = *(v20 + 159288);
            if (v35)
            {
              free(*(v35 - 8));
            }

            v36 = *(v20 + 154832);
            if (v36)
            {
              free(*(v36 - 8));
            }

            v37 = *(v20 + 154840);
            if (v37)
            {
              free(*(v37 - 8));
            }

            v38 = *(v20 + 154848);
            if (v38)
            {
              free(*(v38 - 8));
            }

            v39 = *(v20 + 154824);
            if (v39)
            {
              free(*(v39 - 8));
            }

            *(v20 + 154824) = 0u;
            *(v20 + 154840) = 0u;
            v40 = *(v20 + 154984);
            if (v40)
            {
              free(*(v40 - 8));
            }

            v41 = *(v20 + 154792);
            if (v41)
            {
              free(*(v41 - 8));
            }

            *(v20 + 154792) = 0;
            v42 = *(v20 + 154800);
            if (v42)
            {
              free(*(v42 - 8));
            }

            *(v20 + 154800) = 0;
            v43 = *(v20 + 154808);
            if (v43)
            {
              free(*(v43 - 8));
            }

            *(v20 + 154808) = 0;
            v44 = *(v20 + 154816);
            if (v44)
            {
              free(*(v44 - 8));
            }

            *(v20 + 154816) = 0;
            v45 = *(v20 + 153248);
            if (v45)
            {
              free(*(v45 - 8));
            }

            *(v20 + 153248) = 0;
            v46 = *(v20 + 153256);
            if (v46)
            {
              free(*(v46 - 8));
            }

            *(v20 + 153256) = 0;
            v47 = *(v20 + 154696);
            if (v47)
            {
              free(*(v47 - 8));
            }

            sub_2779C9AE8(*(v20 + 155000), v15);
            *(v20 + 155000) = 0;
            sub_2779C963C(v20 + 154704);
            v48 = *(v20 + 154776);
            if (v48)
            {
              free(*(v48 - 8));
            }

            *(v20 + 154776) = 0;
            if (v18 < v74)
            {
              if (v72)
              {
                *(v20 + 155048) *= 2;
              }

              v49 = *(v20 + 155024);
              if (v49)
              {
                free(*(v49 - 8));
              }

              *(v20 + 155024) = 0;
              v50 = *(v20 + 155032);
              if (v50)
              {
                free(*(v50 - 8));
              }

              *(v20 + 155032) = 0;
              v51 = *(v20 + 155040);
              if (v51)
              {
                free(*(v51 - 8));
              }

              *(v20 + 155040) = 0;
              v52 = *(v20 + 155048);
              if (v52)
              {
                free(*(v52 - 8));
              }

              *(v20 + 155048) = 0;
            }

            if (v18 < v73)
            {
              v53 = *(v20 + 155056);
              if (v53)
              {
                free(*(v53 - 8));
              }

              *(v20 + 155056) = 0;
              v54 = *(v20 + 155064);
              if (v54)
              {
                free(*(v54 - 8));
              }

              *(v20 + 155064) = 0;
              v55 = *(v20 + 155072);
              if (v55)
              {
                free(*(v55 - 8));
              }

              *(v20 + 155072) = 0;
              v56 = *(v20 + 155080);
              if (v56)
              {
                free(*(v56 - 8));
              }

              *(v20 + 155080) = 0;
              v57 = *(v20 + 155088);
              if (v57)
              {
                free(*(v57 - 8));
              }

              *(v20 + 155088) = 0;
            }

            v58 = *(v20 + 159272);
            if (v58)
            {
              free(*(v58 - 8));
            }

            *(v20 + 159272) = 0;
            if (*v33)
            {
              free(*(*v33 - 8));
            }

            *v33 = 0;
            if (*v22)
            {
              free(*(*v22 - 8));
            }

            v59 = (v20 + 116272);
            *v22 = 0;
            v60 = *(v20 + 116288);
            if (v60)
            {
              free(*(v60 - 8));
            }

            *(v20 + 116288) = 0;
            v61 = v20;
            v62 = v15;
            do
            {
              if (*v61)
              {
                free(*(*v61 - 8));
              }

              *v61 = 0;
              v61 += 17;
              --v62;
            }

            while (v62);
            v63 = *(v20 + 11184);
            if (v63)
            {
              free(*(v63 - 8));
            }

            *(v20 + 11184) = 0;
            if (*v59)
            {
              free(*(*v59 - 8));
            }

            *v59 = 0;
            v64 = *(v20 + 153144);
            if (v64)
            {
              free(*(v64 - 8));
            }

            *(v20 + 153144) = 0;
            v65 = *(v20 + 153232);
            if (v65)
            {
              free(*(v65 - 8));
            }

            *(v20 + 153232) = 0;
            v66 = *(v20 + 153240);
            if (v66)
            {
              free(*(v66 - 8));
            }

            *(v20 + 153240) = 0;
            sub_2779C9C3C(*(v20 + 159296), v15, 0, 0, 0);
            *(v20 + 159296) = 0;
            v67 = *(v20 + 154936);
            if (v67)
            {
              free(*(v67 - 8));
            }

            *(v20 + 154936) = 0;
            free(*(v20 - 8));
            *v21 = 0;
            v21[1] = 0;
            LODWORD(v14) = *v2;
          }

          ++v18;
        }

        while (v18 < v14);
      }
    }

    v68 = *(v2 + 8);
    if (v68)
    {
      free(*(v68 - 8));
    }

    *(v2 + 8) = 0;
    v69 = *(v2 + 7);
    if (v69)
    {
      free(*(v69 - 8));
    }

    *(v2 + 7) = 0;
    *v2 = 0;
    v70 = *(v71 - 8);

    free(v70);
  }
}

double *sub_277AC957C(uint64_t a1, int32x2_t *a2, uint64_t a3, char a4, int a5)
{
  v10 = malloc_type_malloc(0x9D6E7uLL, 0x5F484EBFuLL);
  if (v10)
  {
    *(((v10 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v10;
    v11 = ((v10 + 39) & 0xFFFFFFFFFFFFFFE0);
  }

  else
  {
    v11 = 0;
  }

  v128 = v11;
  if (!v11)
  {
    return 0;
  }

  bzero(v11, 0x9D6C0uLL);
  *v128 = a1;
  *(v128 + 33789) = a1 + 49072;
  v12 = malloc_type_malloc(0x1ABuLL, 0x5F484EBFuLL);
  if (v12)
  {
    v13 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v13 - 1) = v12;
    if (v13)
    {
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x190) = 0;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x170) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x180) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x150) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x160) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x130) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x140) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x110) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x120) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xF0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x100) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xD0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xE0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xB0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xC0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x90) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xA0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x80) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
      *v13 = 0u;
    }
  }

  else
  {
    v13 = 0;
  }

  *(v128 + 30708) = v13;
  if (!*(v128 + 30708))
  {
    if (v128)
    {
      free(*(v128 - 1));
    }

    return 0;
  }

  v14 = setjmp((*(v128 + 30708) + 212));
  v15 = *(v128 + 30708);
  if (v14)
  {
    *(v15 + 208) = 0;
    sub_277ACA688(v128);
    return 0;
  }

  *(v15 + 208) = 1;
  *(v128 + 644192) = a4;
  *(v128 + 644464) = 1;
  *(v128 + 30776) = sub_277ACB3C0;
  *(v128 + 30777) = sub_277ACB354;
  if (a2[134].i32[1] == 1)
  {
    v17 = sub_277ACB2EC;
  }

  else
  {
    v17 = sub_277ACB284;
    if (*(v128 + 644192) == 1)
    {
      v17 = sub_277ACB2EC;
    }
  }

  *(v128 + 30778) = v17;
  *(v128 + 246176) = 0;
  v18 = malloc_type_malloc(0x5323uLL, 0x5F484EBFuLL);
  if (v18)
  {
    *(((v18 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v18;
    v19 = (v18 + 39) & 0xFFFFFFFFFFFFFFE0;
  }

  else
  {
    v19 = 0;
  }

  *(v128 + 33790) = v19;
  if (!*(v128 + 33790))
  {
    sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cm->fc");
  }

  v20 = malloc_type_malloc(0x5323uLL, 0x5F484EBFuLL);
  if (v20)
  {
    *(((v20 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v20;
    v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFE0;
  }

  else
  {
    v21 = 0;
  }

  *(v128 + 33791) = v21;
  if (!*(v128 + 33791))
  {
    sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cm->default_frame_context");
  }

  bzero(*(v128 + 33790), 0x52FCuLL);
  bzero(*(v128 + 33791), 0x52FCuLL);
  *(v128 + 33866) = a3;
  memcpy(v128 + 33888, a2, 0x480uLL);
  v128[49422] = *a2;
  v128[30709] = *&a2[3];
  *(v128 + 644528) = 0;
  sub_277AC65E0(v128);
  *(v128 + 463508) = v128[30709];
  *(v128 + 30095) = v128 + 30672;
  *(v128 + 80475) = 0x100000001;
  *(v128 + 271084) = 0.0;
  *(v128 + 463520) = 0;
  v22 = *v128 + 85776;
  *(v22 + 16) = 0;
  *v22 = 0u;
  sub_277AC54E8(v128, a2, 0);
  *(v128 + 98846) = 0;
  *(v128 + 463532) = 0.0;
  *(v128 + 15368) = xmmword_277BB7980;
  *(v128 + 15366) = xmmword_277BB7060;
  *(v128 + 15367) = xmmword_277BB74D0;
  v128[34210] = 0.0;
  sub_277A6F6F4((v128 + 80528), *(v128 + 61418), *(v128 + 61419));
  if (*(v128 + 644192) == 1)
  {
    *(v128 + 67852) = a5;
  }

  *(v128 + 98778) = 8;
  v23 = *(v128 + 67820);
  v24 = *(v128 + 67853);
  v25 = *(v128 + 67854);
  *(v128 + 98779) = *(v128 + 67801);
  *(v128 + 98772) = 0;
  *(v128 + 98800) = v23;
  *(v128 + 98801) = 0;
  v26 = v24;
  *(v128 + 98774) = v24;
  *(v128 + 98775) = v25;
  if (!v24)
  {
    v27 = v128[33888];
    v28 = (v27 * 0.125);
    v29 = v27 * (*(v128 + 67782) * *(v128 + 67783));
    if (v28 >= 32)
    {
      v28 = 32;
    }

    if (v28 <= 4)
    {
      v28 = 4;
    }

    v30 = v28;
    if (v29 > 165888000.0)
    {
      v30 = (v29 * 4.0 / 165888000.0 + 0.5);
      if (v28 > v30)
      {
        v30 = v28;
      }
    }

    *(v128 + 98774) = v30;
    v26 = v30;
  }

  if (!v25)
  {
    v31 = (v128[33888] * 0.75);
    if (v31 >= 32)
    {
      v31 = 32;
    }

    v32 = (v31 & 1) + v31;
    if (v32 <= v26)
    {
      v32 = v26;
    }

    if (v32 <= 32)
    {
      v32 = 32;
    }

    *(v128 + 98775) = v32;
  }

  *(v128 + 98817) = 0;
  *(v128 + 98842) = 0;
  *(v128 + 98820) = 0;
  *(v128 + 395228) = 0.0;
  *(v128 + 98794) = 0;
  v128[49413] = 0.0;
  v128[49414] = 0.0;
  v128[49412] = 0.0;
  v33 = *(v128 + 33789);
  *&v34 = v128[30709];
  *(&v34 + 1) = *(v128 + 246148);
  *(v128 + 57933) = v34;
  v128[57935] = v128[30767];
  *(v128 + 115872) = *(v128 + 61536);
  *(v128 + 115873) = *(v33 + 72);
  v128[57937] = *(v33 + 96);
  *(v128 + 115876) = 0;
  *(v128 + 61408) = 0;
  *(v128 + 98809) = 0;
  *(v128 + 98804) = 0;
  *(v128 + 98806) = 0x7FFFFFFF;
  *(v128 + 98805) = 0;
  *(v128 + 67748) = -1;
  v128[57943] = 0.0;
  v128[34218] = 0.0;
  sub_277AC6A44(v128);
  *(v128 + 273754) = 0;
  v128[49382] = NAN;
  v35 = *(v128 + 68045);
  v127 = a2;
  if (v35 > 1 || !v35 && !*(v128 + 644192) && *(*v128 + 23172))
  {
    v36 = a2[33];
    if (*(*v128 + 23172))
    {
      v37 = *v128 + 0x8000;
      v38 = (*v128 + 35276);
      *(v37 + 2496) = *v128 + 23896;
      *(v37 + 2504) = 49;
      *(v38 + 236) = 0u;
      v38[13] = 0u;
      v38[14] = 0u;
      v38[11] = 0u;
      v38[12] = 0u;
      v38[9] = 0u;
      v38[10] = 0u;
      v38[7] = 0u;
      v38[8] = 0u;
      v38[5] = 0u;
      v38[6] = 0u;
      v38[3] = 0u;
      v38[4] = 0u;
      v38[1] = 0u;
      v38[2] = 0u;
      *v38 = 0u;
      v39 = *v128;
      if (*(*(*v128 + 23888) + 8))
      {
        *(v39 + 44344) = 0;
        *(v39 + 35536) = 0uLL;
        *(v39 + 35552) = 0uLL;
        *(v39 + 44352) = 0uLL;
        *(v39 + 35608) = 100;
        *(v39 + 35584) = 0x3FF0000000000000;
        *(v39 + 35592) = xmmword_277BB7990;
      }
    }

    else
    {
      v40 = a2[32];
      **(*v128 + 23888) = v40;
      v128[80567] = **(*v128 + 23888);
      v41 = *&v36 / 0xE8uLL - 1;
      *(*(*v128 + 23888) + 8) = **(*v128 + 23888) + 232 * v41;
      sub_2779B3570(*v128 + 23896, v40, v41);
      v42 = *v128;
      v43 = *(*v128 + 23888);
      v44 = *(v43 + 8);
      if (v44)
      {
        v45 = (v42 + 0x8000);
        v46 = *v43;
        v47 = v44 - 232;
        if (v44 - 232 > v46)
        {
          v48 = v46;
          do
          {
            v49 = v48 + 29;
            v50 = v48[37];
            v51 = v50 > v48[35] && v50 >= 0.5;
            *(v48 + 24) = v51;
            v48 += 29;
          }

          while (v49 < v47);
        }

        v126 = v42 + 0x8000;
        if (v47 >= v46)
        {
          *(v44 - 40) = 0;
        }

        sub_27797318C(v46, v44, *(v128 + 30708));
        sub_277973568(**(v42 + 23888), *(*(v42 + 23888) + 8));
        v52 = *(v42 + 23888);
        v53 = *(v52 + 24);
        v54 = *(v52 + 8);
        v55 = v54[6];
        v57 = v54[3];
        v56 = v54[4];
        *(v53 + 80) = v54[5];
        *(v53 + 96) = v55;
        *(v53 + 48) = v57;
        *(v53 + 64) = v56;
        v58 = v54[10];
        v60 = v54[7];
        v59 = v54[8];
        *(v53 + 144) = v54[9];
        *(v53 + 160) = v58;
        *(v53 + 112) = v60;
        *(v53 + 128) = v59;
        v62 = v54[12];
        v61 = v54[13];
        v63 = v54[11];
        *(v53 + 224) = *(v54 + 28);
        *(v53 + 192) = v62;
        *(v53 + 208) = v61;
        *(v53 + 176) = v63;
        v64 = *v54;
        v65 = v54[2];
        *(v53 + 16) = v54[1];
        *(v53 + 32) = v65;
        *v53 = v64;
        memmove(*(*(v42 + 23888) + 32), v54, 0xE8uLL);
        v66 = *(v53 + 176) * 10000000.0 / *(v53 + 168);
        if (v66 < 0.1)
        {
          v66 = 30.0;
        }

        v128[49422] = v66;
        sub_277A5BB98(v128, *(v128 + 61418), *(v128 + 61419));
        v67 = *(v53 + 176);
        *(v42 + 35536) = (*(v53 + 168) * *(v128 + 33905) / 10000000.0);
        *(v42 + 35600) = 1;
        v68 = *(v128 + 80567);
        v69 = *(v128 + 271300);
        v70.i64[0] = v69;
        v70.i64[1] = SHIDWORD(v69);
        v71 = vdivq_f64(vmulq_n_f64(vcvtq_f64_s64(v70), *(v53 + 32) / (v67 + dbl_277BB7020[v67 < 0.0])), vdupq_n_s64(0x4059000000000000uLL));
        *(v42 + 35544) = v71;
        v72 = *(v42 + 23888);
        v73 = *(v72 + 8);
        v74 = 0.0;
        if (v68 < v73)
        {
          v75 = v68;
          v76 = *(v72 + 24);
          v77 = *(v128 + 67824);
          v78 = v71;
          v79 = 0.0;
          do
          {
            v79 = v79 + sub_277973FD8((v128 + 57933), v76, v75, v77, v78.f64[0], v78.f64[1]);
            v75 = (v75 + 232);
            v74 = v79;
          }

          while (v75 < v73);
        }

        v45[349] = v74;
        v80 = *v128;
        *(v80 + 44344) = 0;
        *(v80 + 44352) = 0u;
        *(v126 + 2836) = 0x6400000064;
        v45[352] = 1.0;
        *(v45 + 353) = 0x100000001;
      }
    }
  }

  if (!*(v128 + 67796))
  {
    goto LABEL_91;
  }

  v81 = *(v128 + 30708);
  v82 = malloc_type_malloc(0x10017uLL, 0x5F484EBFuLL);
  if (v82)
  {
    v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v83 - 8) = v82;
    *(v128 + 12858) = v83;
    if (v83)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v128[12858] = 0.0;
  }

  sub_2779F5C10(v81, 2, "Failed to allocate obmc_buffer->wsrc");
LABEL_76:
  v84 = malloc_type_malloc(0x10017uLL, 0x5F484EBFuLL);
  if (v84)
  {
    v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v85 - 8) = v84;
    *(v128 + 12859) = v85;
    if (v85)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v128[12859] = 0.0;
  }

  sub_2779F5C10(v81, 2, "Failed to allocate obmc_buffer->mask");
LABEL_81:
  v86 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
  if (v86)
  {
    v87 = (v86 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v87 - 8) = v86;
    *(v128 + 12860) = v87;
    if (v87)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v128[12860] = 0.0;
  }

  sub_2779F5C10(v81, 2, "Failed to allocate obmc_buffer->above_pred");
LABEL_86:
  v88 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
  if (v88)
  {
    v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v89 - 8) = v88;
    *(v128 + 12861) = v89;
    if (v89)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v128[12861] = 0.0;
  }

  sub_2779F5C10(v81, 2, "Failed to allocate obmc_buffer->left_pred");
LABEL_91:
  v90 = 1;
  v91 = 0;
  do
  {
    v92 = v90;
    v93 = 1;
    v94 = 0;
    do
    {
      v95 = v93;
      v96 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
      if (v96)
      {
        *(((v96 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v96;
        v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF0;
      }

      else
      {
        v97 = 0;
      }

      *&v128[2 * v91 + 26577 + v94] = v97;
      if (!*&v128[2 * v91 + 26577 + v94])
      {
        sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cpi->td.mb.intrabc_hash_info.hash_value_buffer[x][y]");
      }

      v94 = 1;
      v93 = 0;
    }

    while ((v95 & 1) != 0);
    v91 = 1;
    v90 = 0;
  }

  while ((v92 & 1) != 0);
  *(v128 + 53684) = 0;
  sub_2779C44C0(v128, v127[129].i32[1]);
  sub_2779C32A8(v128, v127[129].i32[1]);
  v98 = vrev64_s32(v127[4]);
  v99 = vbsl_s8(vceqz_s32(v98), *(v128 + 246148), (*&vshr_n_s32(vadd_s32(v98, 0x700000007), 2uLL) & 0xFFFFFFFEFFFFFFFELL));
  v100 = v99.i32[1];
  v101 = v99.i32[0];
  v102 = (v99.i32[0] * v99.i32[1]) >> 2;
  *(v128 + 80533) = sub_2779724A8((v99.i32[0] * v99.i32[1]) >> 2, 1uLL);
  if (!*(v128 + 80533))
  {
    sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cpi->consec_zero_mv");
  }

  *(v128 + 161068) = v102;
  v128[80559] = 0.0;
  v128[80565] = 0.0;
  *(v128 + 161196) = 0;
  *(v128 + 161197) = 0;
  v103 = v100 + 3;
  if (v100 < -3)
  {
    v103 = v100 + 6;
  }

  v104 = v103 >> 2;
  v105 = v101 + 3;
  if (v101 < -3)
  {
    v105 = v101 + 6;
  }

  v106 = (v105 >> 2) * v104;
  *(v128 + 80473) = sub_2779724A8(v106, 8uLL);
  if (!*(v128 + 80473))
  {
    sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cpi->ssim_rdmult_scaling_factors");
  }

  *(v128 + 34117) = sub_2779724A8(v106, 8uLL);
  if (!*(v128 + 34117))
  {
    sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cpi->tpl_rdmult_scaling_factors");
  }

  *&v107 = 0x8000000080000000;
  *(&v107 + 1) = 0x8000000080000000;
  *(v128 + 5377) = v107;
  *(v128 + 21512) = 0x7FFFFFFF;
  sub_277A7FF54(v128 + 1, v128 + 61558, *(*(v128 + 33789) + 72));
  v108 = v128 + 31706;
  if (*(*(v128 + 33789) + 77))
  {
    v109 = 1;
  }

  else
  {
    v109 = 3;
  }

  v110 = 0;
  v111 = v128 + 30702;
  do
  {
    v112 = v128 + 31649;
    v125 = v108;
    v113 = v108;
    v114 = v111;
    v115 = 0;
    do
    {
      v116 = 0;
      v117 = v112;
      for (i = 0; i != 19; ++i)
      {
        if (i > 0x10u)
        {
          if (i == 17)
          {
            v119 = 9;
            goto LABEL_125;
          }

          if (i == 18)
          {
            v119 = 10;
            goto LABEL_125;
          }
        }

        else
        {
          v119 = 3;
          if (i - 11 < 2 || i == 4)
          {
            goto LABEL_125;
          }
        }

        v119 = i;
LABEL_125:
        if (v110 == 15)
        {
          v117[912] = 0.0;
          *v117 = 0.0;
        }

        else
        {
          v120 = &v114[i];
          if (i == v119)
          {
            v121 = dword_277BFE7FC[i];
            *&v113[i] = &unk_277BFE84C + 6688 * v110 + 3344 * (v115 != 0) + v116;
            *(v120 + 92) = &unk_277C1702C + 6688 * v110 + 3344 * (v115 != 0) + v116;
            v116 += v121;
          }

          else
          {
            v113[i] = v128[57 * v110 + 31706 + 19 * v115 + v119];
            v120[92] = v128[57 * v110 + 30794 + 19 * v115 + v119];
          }
        }

        ++v117;
      }

      ++v115;
      v112 += 19;
      v114 += 19;
      v113 += 19;
    }

    while (v115 != v109);
    ++v110;
    v111 += 57;
    v108 = v125 + 57;
  }

  while (v110 != 16);
  sub_277A46DC8((v128 + 33100), *(v128 + 67164));
  v122 = (v128 + 33104);
  for (j = 0; j != 64; ++j)
  {
    v124 = 0x101010101010101 * (j >> 4);
    *v122 = v124;
    v122[1] = v124;
    v122 += 6;
  }

  *(v128 + 245696) = 8;
  *(v128 + 61422) = v127[3].i32[0];
  *(v128 + 61423) = v127[3].i32[1];
  v128[80572] = 0.0;
  if (*(v128 + 68045) == 3)
  {
    sub_2779F5C10(*(v128 + 30708), 1, "To utilize three-pass encoding, libaom must be built with CONFIG_THREE_PASS=1 & CONFIG_AV1_DECODER=1.");
  }

  v128[80573] = 0.0;
  *(v128 + 161152) = 0;
  *(*(v128 + 30708) + 208) = 0;
  return v128;
}

void sub_277ACA688(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 643344;
    v3 = a1 + 634344;
    v4 = a1 + 245320;
    v5 = a1 + 239168;
    v6 = *(a1 + 245664);
    if (v6)
    {
      strcpy((*(a1 + 245664) + 199), "AAAAAAAA");
      *&v7 = 0x4141414141414141;
      *(&v7 + 1) = 0x4141414141414141;
      *(v6 + 184) = v7;
      *(v6 + 168) = v7;
      *(v6 + 152) = v7;
      *(v6 + 136) = v7;
      *(v6 + 120) = v7;
      *(v6 + 104) = v7;
      *(v6 + 88) = v7;
      *(v6 + 72) = v7;
      *(v6 + 56) = v7;
      *(v6 + 40) = v7;
      *(v6 + 24) = v7;
      *(v6 + 8) = v7;
      v8 = *(a1 + 245664);
      if (v8)
      {
        free(*(v8 - 8));
      }
    }

    v9 = *(v5 + 1872);
    if (v9)
    {
      free(*(v9 - 8));
    }

    v11 = *(v3 + 368);
    v10 = *(v3 + 376);
    v12 = *v2;
    v13 = *(v3 + 440);
    v14 = *(v3 + 720);
    if (v11)
    {
      pthread_mutex_destroy(*(v3 + 368));
      free(*(v11 - 8));
    }

    if (v10)
    {
      pthread_cond_destroy(v10);
      free(*&v10[-1].__opaque[32]);
    }

    if (v12)
    {
      pthread_mutex_destroy(v12);
      free(*&v12[-1].__opaque[48]);
    }

    if (v13)
    {
      pthread_mutex_destroy(v13);
      free(*&v13[-1].__opaque[48]);
    }

    if (v14)
    {
      pthread_mutex_destroy(v14);
      free(*&v14[-1].__opaque[48]);
    }

    v15 = (a1 + 463416);
    sub_277AF65C4(a1);
    if (*v3 >= 2)
    {
      sub_277AF64E0((*a1 + 85848));
      sub_2779CE694(a1 + 634808);
      v16 = *(v2 + 32);
      if (v16)
      {
        pthread_mutex_destroy(v16);
        v17 = *(v2 + 32);
        if (v17)
        {
          free(*(v17 - 8));
        }
      }

      sub_2779D1E04(a1 + 634936);
      v18 = *(v2 + 16);
      if (v18)
      {
        pthread_mutex_destroy(v18);
        v19 = *(v2 + 16);
        if (v19)
        {
          free(*(v19 - 8));
        }
      }

      *(v2 + 24) = 0;
    }

    if (*(*(a1 + 270312) + 77))
    {
      v20 = 1;
    }

    else
    {
      v20 = 3;
    }

    v21 = *(v4 + 248);
    if (v21)
    {
      free(*(v21 - 8));
    }

    *(v4 + 248) = 0;
    *(v4 + 256) = 0;
    v22 = *(a1 + 463544);
    if (v22)
    {
      free(*(v22 - 8));
    }

    *(a1 + 463544) = 0;
    *(a1 + 463552) = 0;
    *(v3 + 80) = 0;
    if (*v15)
    {
      free(*(*v15 - 8));
    }

    v23 = (a1 + 272936);
    *v15 = 0;
    sub_277A4C9A0(*(a1 + 463432));
    *(a1 + 463432) = 0;
    v24 = *(a1 + 463448);
    if (v24)
    {
      free(*(v24 - 8));
    }

    v25 = (a1 + 102864);
    *(a1 + 463448) = 0;
    v26 = *(v2 + 440);
    if (v26)
    {
      free(*(v26 - 8));
    }

    *(v2 + 440) = 0;
    if (*v23)
    {
      free(*(*v23 - 8));
    }

    *v23 = 0;
    v27 = *(a1 + 102872);
    if (v27)
    {
      free(*(v27 - 8));
    }

    v28 = *(a1 + 102880);
    if (v28)
    {
      free(*(v28 - 8));
    }

    v29 = *(a1 + 102888);
    if (v29)
    {
      free(*(v29 - 8));
    }

    if (*v25)
    {
      free(*(*v25 - 8));
    }

    *v25 = 0u;
    *(a1 + 102880) = 0u;
    v30 = *(v5 + 144);
    if (v30)
    {
      free(*(v30 - 8));
    }

    *(v5 + 144) = 0;
    v31 = *(v5 + 152);
    if (v31)
    {
      free(*(v31 - 8));
    }

    v32 = (a1 + 212616);
    *(v5 + 152) = 0;
    v33 = *(v5 + 128);
    if (v33)
    {
      free(*(v33 - 8));
    }

    *(v5 + 128) = 0;
    v34 = *(v5 + 136);
    if (v34)
    {
      free(*(v34 - 8));
    }

    *(v5 + 136) = 0;
    sub_2779C9C3C(*(v4 + 40), v20, 0, 0, *(a1 + 395528));
    *(v4 + 40) = 0;
    if (*v32)
    {
      free(*(*v32 - 8));
    }

    *v32 = 0;
    v35 = *(a1 + 212624);
    if (v35)
    {
      free(*(v35 - 8));
    }

    *(a1 + 212624) = 0;
    v36 = *(a1 + 212632);
    if (v36)
    {
      free(*(v36 - 8));
    }

    *(a1 + 212632) = 0;
    v37 = *(a1 + 212640);
    if (v37)
    {
      free(*(v37 - 8));
    }

    *(a1 + 212640) = 0;
    sub_277AE4284((a1 + 212648));
    v38 = *(a1 + 271032);
    if (v38)
    {
      free(*(v38 - 8));
    }

    *(a1 + 271032) = 0;
    v39 = *(v4 + 24);
    if (v39)
    {
      free(*(v39 - 8));
    }

    *(v4 + 24) = 0;
    v40 = *(v4 + 32);
    if (v40)
    {
      free(*(v40 - 8));
    }

    *(v4 + 32) = 0;
    v41 = *(v5 + 1880);
    if (v41)
    {
      free(*(v41 - 8));
    }

    *(v5 + 1880) = 0;
    sub_2779C9AE8(*(v5 + 1896), v20);
    *(v5 + 1896) = 0;
    if (*(a1 + 273404))
    {
      *(v5 + 1944) *= 2;
    }

    v42 = *(v5 + 1920);
    if (v42)
    {
      free(*(v42 - 8));
    }

    *(v5 + 1920) = 0;
    v43 = *(v5 + 1928);
    if (v43)
    {
      free(*(v43 - 8));
    }

    *(v5 + 1928) = 0;
    v44 = *(v5 + 1936);
    if (v44)
    {
      free(*(v44 - 8));
    }

    *(v5 + 1936) = 0;
    v45 = *(v5 + 1944);
    if (v45)
    {
      free(*(v45 - 8));
    }

    *(v5 + 1944) = 0;
    v46 = *(v5 + 1952);
    if (v46)
    {
      free(*(v46 - 8));
    }

    *(v5 + 1952) = 0;
    v47 = *(v5 + 1960);
    if (v47)
    {
      free(*(v47 - 8));
    }

    *(v5 + 1960) = 0;
    v48 = *(v5 + 1968);
    if (v48)
    {
      free(*(v48 - 8));
    }

    *(v5 + 1968) = 0;
    v49 = *(v5 + 1976);
    if (v49)
    {
      free(*(v49 - 8));
    }

    *(v5 + 1976) = 0;
    v50 = *(v5 + 1984);
    if (v50)
    {
      free(*(v50 - 8));
    }

    *(v5 + 1984) = 0;
    v51 = *(v4 + 16);
    if (v51)
    {
      free(*(v51 - 8));
    }

    *(v4 + 16) = 0;
    if (*v4)
    {
      free(*(*v4 - 8));
    }

    v52 = (a1 + 202336);
    *v4 = 0;
    sub_2779A4878(*(a1 + 273416));
    v53 = *(a1 + 273416);
    if (v53)
    {
      free(*(v53 - 8));
    }

    *(a1 + 273416) = 0;
    if (*v5)
    {
      free(*(*v5 - 8));
    }

    *v5 = 0;
    v54 = *(a1 + 202352);
    if (v54)
    {
      free(*(v54 - 8));
    }

    *(a1 + 202352) = 0;
    v55 = 86064;
    v56 = v20;
    do
    {
      v57 = *(a1 + v55);
      if (v57)
      {
        free(*(v57 - 8));
      }

      *(a1 + v55) = 0;
      v55 += 136;
      --v56;
    }

    while (v56);
    v58 = *(a1 + 97248);
    if (v58)
    {
      free(*(v58 - 8));
    }

    *(a1 + 97248) = 0;
    if (*v52)
    {
      free(*(*v52 - 8));
    }

    *v52 = 0;
    v59 = *(v5 + 40);
    if (v59)
    {
      free(*(v59 - 8));
    }

    *(v5 + 40) = 0;
    v60 = *(v5 + 1832);
    if (v60)
    {
      free(*(v60 - 8));
    }

    *(v5 + 1832) = 0;
    sub_277A36F80(a1);
    v61 = *(v4 + 888);
    if (v61)
    {
      v61(a1 + 246136);
    }

    sub_277A82C68((a1 + 270936));
    sub_27797ABB4(a1 + 273776);
    v62 = 0;
    v63 = a1 + 268696;
    do
    {
      v64 = *(v63 + v62);
      if (v64)
      {
        free(*(v64 - 8));
      }

      *(v63 + v62) = 0;
      v62 += 64;
    }

    while (v62 != 192);
    v65 = *(a1 + 268864);
    if (v65)
    {
      free(*(v65 - 8));
    }

    *(a1 + 268864) = 0;
    v66 = *(a1 + 268872);
    if (v66)
    {
      free(*(v66 - 8));
    }

    *(a1 + 268872) = 0;
    v67 = 3;
    v68 = (a1 + 268704);
    do
    {
      if (*v68)
      {
        free(*(*v68 - 8));
      }

      v69 = v68[1];
      if (v69)
      {
        free(*(v69 - 8));
      }

      *v68 = 0;
      v68[1] = 0;
      v68 += 8;
      --v67;
    }

    while (v67);
    sub_27797ABB4(a1 + 268880);
    v70 = *(v2 + 872);
    if (v70)
    {
      free(*(v70 - 8));
    }

    *(v2 + 872) = 0;
    v71 = *(v2 + 864);
    if (v71)
    {
      free(*(v71 - 8));
    }

    *(v2 + 864) = 0;
    if (*(a1 + 272180) != 1 && *(v2 + 848) != 1)
    {
      v72 = 0;
      v135 = *a1;
      v73 = *(a1 + 269340);
      v74 = a1 + 269112;
      do
      {
        v75 = *(v74 + v72);
        if (v75)
        {
          free(*(v75 - 8));
        }

        *(v74 + v72) = 0;
        v72 += 8;
      }

      while (v72 != 24);
      v76 = a1 + 269088;
      v77 = *(a1 + 269136);
      if (v77)
      {
        free(*(v77 - 8));
      }

      v78 = 0;
      *(a1 + 269136) = 0;
      do
      {
        v79 = *(v76 + v78);
        if (v79)
        {
          free(*(v79 - 8));
        }

        *(v76 + v78) = 0;
        v78 += 8;
      }

      while (v78 != 24);
      v80 = *(v2 + 40);
      if (v80)
      {
        if (v73 < 1)
        {
          goto LABEL_157;
        }

        v81 = 0;
        do
        {
          v82 = *(v2 + 40);
          v83 = *(v82 + v81);
          if (v83)
          {
            pthread_mutex_destroy(v83);
            v82 = *(v2 + 40);
            v84 = *(v82 + v81);
            if (v84)
            {
              free(*(v84 - 8));
              v82 = *(v2 + 40);
            }
          }

          v85 = *(v82 + v81 + 8);
          if (v85)
          {
            pthread_cond_destroy(v85);
            v86 = *(*(v2 + 40) + v81 + 8);
            if (v86)
            {
              free(*(v86 - 8));
            }
          }

          v81 += 24;
        }

        while (24 * v73 != v81);
        v80 = *(v2 + 40);
        if (v80)
        {
LABEL_157:
          free(*(v80 - 8));
        }

        *(v2 + 40) = 0;
      }

      v87 = *(a1 + 269344);
      if (v87 >= 2 && *(v135 + 75112))
      {
        v134 = v4;
        v88 = 488 * v87 - 472;
        do
        {
          v89 = *(v135 + 75112);
          v90 = v89 + 488 * (v87 - 1);
          v91 = *(v90 + 40);
          if (v91)
          {
            free(*(v91 - 8));
          }

          v92 = 0;
          *(v90 + 40) = 0;
          v93 = v89 + v88;
          do
          {
            v94 = *(v93 + v92);
            if (v94)
            {
              free(*(v94 - 8));
            }

            *(v93 + v92) = 0;
            v92 += 8;
          }

          while (v92 != 24);
          v88 -= 488;
        }

        while (v87-- > 2);
        v96 = *(v135 + 75112);
        if (v96)
        {
          free(*(v96 - 8));
        }

        *(v135 + 75112) = 0;
        v4 = v134;
      }
    }

    v97 = 643680;
    do
    {
      v98 = *(a1 + v97);
      if (v98)
      {
        free(*(v98 - 8));
      }

      *(a1 + v97) = 0;
      v97 += 8;
      --v20;
    }

    while (v20);
    v99 = *(v2 + 360);
    if (v99)
    {
      free(*(v99 - 8));
    }

    *(v2 + 360) = 0;
    sub_27797ABB4(a1 + 273984);
    sub_27797ABB4(a1 + 272288);
    sub_27797ABB4(a1 + 272504);
    sub_27797ABB4(a1 + 272720);
    sub_27797ABB4(a1 + 643920);
    v100 = *(a1 + 463568);
    if (v100)
    {
      free(*(v100 - 8));
    }

    *(a1 + 463568) = 0;
    v101 = *(a1 + 496336);
    if (v101)
    {
      free(*(v101 - 8));
    }

    *(a1 + 496336) = 0;
    *(a1 + 463560) = 0;
    sub_2779C963C(a1 + 240768);
    v102 = *(v5 + 1672);
    if (v102)
    {
      free(*(v102 - 8));
    }

    *(v5 + 1672) = 0;
    v103 = *(a1 + 102896);
    if (v103)
    {
      free(*(v103 - 8));
    }

    v104 = *(a1 + 102904);
    if (v104)
    {
      free(*(v104 - 8));
    }

    v105 = *(a1 + 102912);
    if (v105)
    {
      free(*(v105 - 8));
    }

    v106 = *(a1 + 102920);
    if (v106)
    {
      free(*(v106 - 8));
    }

    v107 = *(a1 + 102928);
    if (v107)
    {
      free(*(v107 - 8));
    }

    v108 = *(a1 + 102936);
    if (v108)
    {
      free(*(v108 - 8));
    }

    *(a1 + 102936) = 0;
    *(a1 + 102904) = 0u;
    *(a1 + 102920) = 0u;
    v109 = *(a1 + 102944);
    if (v109)
    {
      free(*(v109 - 8));
    }

    v110 = *(a1 + 102952);
    if (v110)
    {
      free(*(v110 - 8));
    }

    v111 = *(a1 + 102960);
    if (v111)
    {
      free(*(v111 - 8));
    }

    v112 = *(v2 + 376);
    if (v112)
    {
      sub_27798BF78(v112);
      *(v2 + 376) = 0;
    }

    v113 = *(v2 + 368);
    if (v113)
    {
      v114 = *v113;
      if (*v113)
      {
        do
        {
          v115 = *(v114 + 664);
          free(*(v114 - 8));
          v114 = v115;
        }

        while (v115);
      }

      *v113 = 0;
      v113[1] = 0;
      v116 = *(v2 + 368);
      if (v116)
      {
        free(*(v116 - 8));
      }

      *(v2 + 368) = 0;
    }

    if (*(*a1 + 51016))
    {
      v117 = *(v2 + 456);
      if (v117 >= 1)
      {
        v118 = 0;
        v119 = *(v2 + 460);
        do
        {
          if (v119 >= 1)
          {
            v120 = 0;
            do
            {
              v121 = *(v2 + 792) + 13176 * (v120 + v118 * v119);
              v122 = *(v121 + 13144);
              if (v122)
              {
                free(*(v122 - 8));
                v119 = *(v2 + 460);
              }

              *(v121 + 13144) = 0;
              ++v120;
            }

            while (v120 < v119);
            v117 = *(v2 + 456);
          }

          ++v118;
        }

        while (v118 < v117);
      }
    }

    v123 = *(v2 + 792);
    if (v123)
    {
      free(*(v123 - 8));
    }

    *(v2 + 792) = 0;
    v124 = *(v2 + 920);
    if (v124)
    {
      free(*(v124 - 8));
    }

    *(v2 + 920) = 0;
    *(v2 + 928) = 0;
    v125 = *(v2 + 1248);
    if (v125)
    {
      free(*(v125 - 8));
    }

    *(v2 + 1248) = 0;
    v126 = *(v2 + 1128);
    if (v126)
    {
      free(*(v126 - 8));
    }

    *(v2 + 1128) = 0;
    if (*(a1 + 272224))
    {
      v127 = *(v2 + 1136);
      if (v127)
      {
        free(*(v127 - 8));
      }

      *(v2 + 1136) = 0;
      v128 = *(v2 + 1144);
      if (v128)
      {
        free(*(v128 - 8));
      }

      *(v2 + 1144) = 0;
    }

    v129 = *(v2 + 1176);
    if (v129)
    {
      free(*(v129 - 8));
    }

    *(v2 + 1176) = 0;
    if (*(v2 + 952))
    {
      (*(v2 + 1008))(*(v2 + 968));
    }

    v130 = *(v4 + 888);
    if (v130)
    {
      v130(a1 + 246136);
    }

    sub_277A82C68((a1 + 270936));
    v131 = *(a1 + 270320);
    if (v131)
    {
      free(*(v131 - 8));
    }

    *(a1 + 270320) = 0;
    v132 = *(a1 + 270328);
    if (v132)
    {
      free(*(v132 - 8));
    }

    *(a1 + 270328) = 0;
    v133 = *(a1 - 8);

    free(v133);
  }
}

uint64_t sub_277ACB284(uint64_t result, int a2, int a3, int a4)
{
  *(result + 40) = a4;
  v4 = (a2 + 7) >> 2;
  *(result + 16) = v4 & 0xFFFFFFFE;
  v5 = (a3 + 7) >> 2;
  v6 = v5 & 0xFFFFFFFE;
  v7 = ((v4 & 0xFFFFFFFE) + 31) & 0xFFFFFFE0;
  *(result + 60) = v7;
  v8 = (v4 + 2) >> 2;
  v9 = (v5 + 2) >> 2;
  *result = v9;
  *(result + 4) = v8;
  *(result + 8) = v9 * v8;
  *(result + 12) = v6;
  *(result + 36) = (v7 + byte_277C3F990[a4] - 1) / byte_277C3F990[a4];
  return result;
}

uint64_t sub_277ACB2EC(uint64_t result, int a2, int a3)
{
  *(result + 40) = 6;
  v3 = (a2 + 7) >> 2;
  *(result + 16) = v3 & 0xFFFFFFFE;
  v4 = (a3 + 7) >> 2;
  v5 = v4 & 0xFFFFFFFE;
  v6 = ((v3 & 0xFFFFFFFE) + 31) & 0xFFFFFFE0;
  *(result + 60) = v6;
  v7 = (v3 + 2) >> 2;
  v8 = (v4 + 2) >> 2;
  *result = v8;
  *(result + 4) = v7;
  *(result + 8) = v8 * v7;
  *(result + 12) = v5;
  v9 = v6 | 3;
  v10 = v6 | 4;
  if (v9 < 0)
  {
    v9 = v10;
  }

  *(result + 36) = v9 >> 2;
  return result;
}

void sub_277ACB354(uint64_t a1)
{
  v2 = ((*(a1 + 12) + 31) & 0xFFFFFFFFFFFFFFE0) * *(a1 + 60);
  bzero(*(a1 + 24), 176 * *(a1 + 32));
  bzero(*(a1 + 48), 8 * v2);
  v3 = *(a1 + 64);

  bzero(v3, v2);
}

void sub_277ACB3C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(*(v2 - 8));
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(a1 + 48);
  if (v3)
  {
    free(*(v3 - 8));
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = *(a1 + 64);
  if (v4)
  {
    free(*(v4 - 8));
  }

  *(a1 + 64) = 0;
}

uint64_t sub_277ACB424(uint64_t result)
{
  v1 = (result + 395688);
  v2 = *(result + 245672);
  if (v2 <= *(result + 245676))
  {
    v2 = *(result + 245676);
  }

  if (v2 <= 16)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  v4 = -1;
  do
  {
    ++v4;
  }

  while (v3 << v4 < 1023);
  if (v4 >= 9)
  {
    v4 = 9;
  }

  *(result + 396700) = v4;
  if (*v1)
  {
    if ((*(result + 245616) & 0xFD) == 0)
    {
LABEL_28:
      *(result + 396696) = v2;
      return result;
    }

    if ((*(result + 246096) || *(*result + *(result + 463456) + 400) == 6) && *v1 >= 2)
    {
      v5 = *(result + 396696);
      if (v5 != -1)
      {
        if (v2 >= 2 * v5)
        {
          v2 = 2 * v5;
        }

        if (v2 <= 16)
        {
          v6 = 16;
        }

        else
        {
          v6 = v2;
        }

        v7 = -1;
        do
        {
          ++v7;
        }

        while (v6 << v7 < 1023);
        if (v7 >= 9)
        {
          v7 = 9;
        }

        *(result + 396700) = v7;
      }
    }

    if (*(result + 644464) == 1)
    {
      v2 = -1;
      goto LABEL_28;
    }
  }

  return result;
}

void sub_277ACB51C(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 270312);
  v3 = *(v2 + 56);
  if (v3 == 2)
  {
    v4 = a1 + 643736;
    if (*(a1 + 271996) == 1)
    {
      *(a2 + 3) = 1;
      *(a2 + 4) = *(a1 + 272208) != 1;
      *v4 = 0x100000001;
    }

    else if (*(a1 + 272208) == 1 || *(a1 + 396384) && !*(a1 + 396432))
    {
      *(a2 + 3) = 0;
    }

    else
    {
      v5 = *(a1 + 272712);
      v6 = *v5;
      v7 = v5[2];
      v8 = v7 * *v5;
      v33 = v7;
      if (v7 >= 16)
      {
        v29 = v7 * v6;
        v30 = a1 + 643736;
        v11 = 0;
        v12 = 0;
        v9 = 0;
        v13 = *(v5 + 5);
        v14 = v5[48] & 8;
        v15 = v5[8];
        v37 = *(v2 + 72);
        v16 = 16;
        v31 = a2;
        v32 = v13;
        do
        {
          v35 = v16;
          v36 = v11;
          v34 = v13;
          if (v6 >= 16)
          {
            v17 = 0;
            v18 = v32 + v11 * v15;
            for (i = 16; i <= v6; i += 16)
            {
              v39 = 0;
              if (v14)
              {
                sub_277A9FD00(v18 + v17, v15, 16, 16, v37, 0, v40, &v39, 0);
                v25 = v39;
              }

              else
              {
                bzero(v40, 0x400uLL);
                v20 = 0;
                v21 = v13;
                do
                {
                  for (j = 0; j != 16; ++j)
                  {
                    ++*&v40[4 * *(v21 + j)];
                  }

                  ++v20;
                  v21 += v15;
                }

                while (v20 != 16);
                v23 = 0;
                v24 = 0uLL;
                do
                {
                  v24 = vsubq_s32(v24, vtstq_s32(*&v40[v23], *&v40[v23]));
                  v23 += 16;
                }

                while (v23 != 1024);
                v25 = vaddvq_s32(v24);
              }

              if ((v25 - 2) <= 2)
              {
                ++v12;
                if (sub_277A5D00C(*a1, a1 + 86480, v18 + v17, v15, 6, 0, v14))
                {
                  ++v9;
                }
              }

              v17 += 16;
              v13 += 16;
            }
          }

          v16 = v35 + 16;
          v11 = v36 + 16;
          v13 = v34 + 16 * v15;
        }

        while (v35 + 16 <= v33);
        v10 = 2560 * v12;
        v4 = v30;
        a2 = v31;
        v8 = v29;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      v26 = v10 > v8;
      *(a2 + 3) = v26;
      v27 = 3072 * v9 > v8 && v10 > v8;
      *(a2 + 4) = v27;
      *v4 = v26;
      v28 = v10 > 4 * v8 && 7680 * v9 > v8;
      if (v27)
      {
        v28 = 1;
      }

      *(v4 + 4) = v28;
    }
  }

  else
  {
    *(a2 + 4) = v3 != 0;
    *(a2 + 3) = v3 != 0;
  }
}

uint64_t sub_277ACB81C(uint64_t a1, int a2, int a3, int a4)
{
  v5 = a1 + 463516;
  v6 = (a1 + 270312);
  v7 = *(a1 + 270312);
  if (*(a1 + 463520) == 1 && *(v7 + 76) == a2 && *(v7 + 96) == a3 && *(v7 + 100) == a4)
  {
    return 0;
  }

  v9 = (a1 + 245848);
  *(v7 + 96) = a3;
  *(v7 + 100) = a4;
  *(v7 + 76) = a2;
  sub_2779C44C0(a1, *(a1 + 272140));
  sub_2779C32A8(a1, *(v6 + 457));
  if (*(v6 + 467) != 1 && *(a1 + 644192) != 1)
  {
    v14 = *a1;
    if (*(v6 + 212) < 1)
    {
      *(v14 + 48384) = 0;
    }

    else
    {
      v15 = *(v6 + 274);
      *(v14 + 48384) = v15 > 1;
      if (v15 > 1)
      {
        v16 = 0;
        v17 = *v6;
        v18 = v14 + 48392;
        v19 = 1;
        do
        {
          v20 = sub_27797AC44(v18 + 208 * v16, *(v6 + 204), *(v6 + 205), *(v17 + 96), *(v17 + 100), *(v17 + 76), *(v6 + 455), *(a1 + 246128), v10, v11, v12, v13, *(a1 + 644780), 0);
          if ((v19 & 1) == 0)
          {
            break;
          }

          v19 = 0;
          v16 = 1;
        }

        while (!v20);
        if (v20)
        {
          return 2;
        }
      }
    }
  }

  if (*v9)
  {
    --**v9;
    *v9 = 0;
  }

  v21 = 0;
  v22 = a1 + 246032;
  do
  {
    v23 = *(v22 + v21);
    if (v23)
    {
      --*v23;
      *(v22 + v21) = 0;
    }

    v21 += 8;
  }

  while (v21 != 64);
  sub_277ACB9E8(a1);
  result = 0;
  *v5 = *(a1 + 246144);
  *(v5 + 4) = 1;
  return result;
}

_DWORD *sub_277ACB9E8(_DWORD *result)
{
  v1 = result;
  v48 = *MEMORY[0x277D85DE8];
  v2 = result[61418];
  v3 = (((v2 + 7) & 0xFFFFFFF8) + 2 * result[68033] + 31) & 0xFFFFFFE0;
  v4 = v3;
  if (result[67782] == v2)
  {
    v4 = (((v2 + 7) & 0xFFFFFFF8) + 2 * result[68033] + 31) & 0xFFFFFFE0;
    if (result[67783] == result[61419])
    {
      v4 = (((v2 + 7) & 0xFFFFFFF8) + 2 * result[68033] + 31) & 0xFFFFFFE0;
      if (v2 == result[61422])
      {
        v4 = *(*(*(*result + 368) + 40) + 32);
      }
    }
  }

  v5 = *(result + 30731);
  v6 = (((v2 + 7) & 0xFFFFFFF8) + 2 * result[68033] + 31) & 0xFFFFFFE0;
  if (v5)
  {
    v6 = *(v5 + 1280);
  }

  v7 = result[99971];
  if (!v7 || !result[105529] || v3 != v7)
  {
    v8 = 0;
    v23 = (result + 110634);
    v9 = (result + 99178);
    v10 = (result + 104736);
    do
    {
      v11 = off_28866F278[v8];
      (v11)(v9, v3, (v8 & 6) == 2);
      (v11)(v10, v4, (v8++ & 6) == 2);
      v10 += 3176;
      v9 += 3176;
    }

    while (v8 != 7);
    v12 = 0;
    *v23 = 0;
    *(v23 + 453) = v6;
    v13 = v23 + 4;
    v14 = 1024;
    v15 = 10;
    do
    {
      v16 = 0;
      v24 = 0;
      if ((v14 * 0.41) <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = (v14 * 0.41);
      }

      v25 = -v14;
      if (v14 == 1)
      {
        v18 = 8;
      }

      else
      {
        v18 = 12;
      }

      v26 = 0;
      v27 = v14;
      v28 = 0;
      v29 = -v14;
      v30 = 0;
      v31 = v14;
      v32 = -v14;
      v35 = v17;
      v38 = v17;
      v41 = v17;
      v44 = v17;
      v33 = -v17;
      v34 = v14;
      v36 = -v17;
      v37 = v14;
      v39 = -v14;
      v40 = -v14;
      v42 = v14;
      v43 = -v17;
      v45 = v14;
      v46 = -v17;
      v47 = -v14;
      v19 = v13;
      do
      {
        v20 = *(&v24 + v16);
        *(v19 - 1) = v20;
        *v19 = v20 * v6 + (v20 >> 16);
        v16 += 4;
        v19 += 2;
      }

      while (((16 * ((v18 >> 2) & 3)) | 4) != v16);
      v1[v15 + 111043] = v18;
      v1[v15-- + 111065] = v14;
      ++v12;
      v14 >>= 1;
      v13 -= 34;
    }

    while (v12 != 11);
    *(v23 + 408) = 11;
    v21 = (v1 + 111088);
    v22 = 6;
    do
    {
      result = memcpy(v21, v1 + 110294, 0xC68uLL);
      v21 += 3176;
      --v22;
    }

    while (v22);
  }

  return result;
}

int *sub_277ACBCC0(uint64_t a1, int a2, int a3, double a4, double a5, double a6, int32x2_t a7)
{
  v9 = a1;
  v10 = a1 + 643408;
  v104 = a1 + 395554;
  v11 = a1 + 268672;
  v12 = a1 + 245568;
  v13 = *(a1 + 270312);
  if (*(v13 + 77))
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v110 = (a1 + 463456);
  v111 = v14;
  if (*(a1 + 245672) == a2 && *(a1 + 245676) == a3)
  {
    goto LABEL_40;
  }

  v15 = sub_277ACB81C(a1, *(v13 + 76), *(v13 + 96), *(v13 + 100));
  if (v15)
  {
    sub_2779F5C10(*(v12 + 96), v15, "av1_check_initial_width() failed");
  }

  if (a2 >= 1 && a3 >= 1)
  {
    *(v12 + 104) = a2;
    *(v12 + 108) = a3;
    if (*(v110 + 13) < a2 || *(v110 + 14) < a3)
    {
      v16 = (v9 + 240840);
      v17 = *(v12 + 640);
      if (v17)
      {
        v17(v9 + 246136);
      }

      sub_277A82C68((v9 + 270936));
      sub_2779C963C(v9 + 240768);
      if (*v16)
      {
        free(*(*v16 - 8));
      }

      *v16 = 0;
      if (*(*(v11 + 1640) + 77))
      {
        v18 = 1;
      }

      else
      {
        v18 = 3;
      }

      sub_2779C9AE8(*(v9 + 241064), v18);
      *(v9 + 241064) = 0;
      sub_277AC65E0(v9);
      sub_277AC6A44(v9);
      v19 = *(v12 + 108);
      *(v110 + 13) = *(v12 + 104);
      *(v110 + 14) = v19;
      v110[64] = 0;
    }

    if (sub_277A82D8C(v9 + 245616))
    {
      sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate context buffers");
    }

    if (*(v11 + 3508) == 1 || *(v10 + 784) == 1)
    {
      goto LABEL_35;
    }

    v20 = byte_277C3F990[*(v12 + 608)];
    v21 = (*(v12 + 584) + v20 - 1) / v20;
    v22 = v21 * ((v20 - 1 + *(v12 + 580)) / v20);
    if (v22 <= *(v12 + 8))
    {
LABEL_34:
      *(v12 + 12) = v21;
LABEL_35:
      sub_277AB9A60(v9);
      goto LABEL_36;
    }

    if (*v12)
    {
      free(*(*v12 - 8));
    }

    *v12 = 0;
    *(v12 + 8) = 0;
    v23 = 84 * v22;
    if (v23 <= 0x1FFFFFFE9 && (v24 = malloc_type_malloc(v23 + 23, 0x5F484EBFuLL)) != 0)
    {
      v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v25 - 8) = v24;
      *v12 = v25;
      if (v25)
      {
LABEL_33:
        *(v12 + 8) = v22;
        goto LABEL_34;
      }
    }

    else
    {
      *v12 = 0;
    }

    sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate mbmi_ext_info->frame_base");
    goto LABEL_33;
  }

LABEL_36:
  v26 = *(v12 + 104);
  v27 = *(v12 + 547) == 1 && v26 == *(v12 + 120);
  *(v12 + 548) = v27;
  sub_277A6F6F4(v9 + 644224, v26, *(v12 + 108));
LABEL_40:
  v28 = *(v11 + 3508);
  if (v28 > 1 || !v28 && !*(v10 + 784) && *(*v9 + 23172))
  {
    sub_277A5BDA4(v9, *(v12 + 104), *(v12 + 108), a4, a5);
  }

  v29 = *(v12 + 280);
  v30 = *(v29 + 72);
  if (v30)
  {
    if (*(v29 + 260) == *(v12 + 580) && *(v29 + 264) == *(v12 + 584))
    {
      goto LABEL_55;
    }

    free(*(v30 - 8));
  }

  v31 = *(v12 + 580);
  *(v29 + 260) = v31;
  v32 = *(v12 + 584);
  *(v29 + 264) = v32;
  v33 = sub_2779724A8(((v32 + 1) >> 1) * ((v31 + 1) >> 1), 8uLL);
  *(v29 + 72) = v33;
  if (!v33)
  {
    sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate buf->mvs");
  }

  v34 = *(v29 + 80);
  if (v34)
  {
    free(*(v34 - 8));
  }

  v35 = sub_2779724A8(*(v12 + 584) * *(v12 + 580), 1uLL);
  *(v29 + 80) = v35;
  if (!v35)
  {
    sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate buf->seg_map");
  }

LABEL_55:
  v36 = ((*(v12 + 580) + 32) >> 1) * (*(v12 + 628) >> 1);
  v37 = *(v11 + 2360);
  if (v37)
  {
    if (*(v11 + 2368) >= v36)
    {
      goto LABEL_61;
    }

    free(*(v37 - 8));
  }

  v38 = sub_2779724A8(v36, 8uLL);
  *(v11 + 2360) = v38;
  if (!v38)
  {
    sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate cm->tpl_mvs");
  }

  *(v11 + 2368) = v36;
LABEL_61:
  v106 = v13;
  v108 = v10;
  v39 = *(v12 + 104);
  *(v29 + 268) = v39;
  if (*(*(v11 + 1640) + 77))
  {
    v40 = 1;
  }

  else
  {
    v40 = 3;
  }

  if (*(v11 + 2304) < v40 || *(v11 + 2312) < *(v12 + 584) || *(v11 + 2308) < *(v11 + 1668))
  {
    v41 = (v11 + 2264);
    sub_277A82C68((v11 + 2264));
    v42 = *(v11 + 1668);
    if (*(*(v11 + 1640) + 77))
    {
      v43 = 1;
    }

    else
    {
      v43 = 3;
    }

    v44 = *(v12 + 584) + 31;
    v45 = v44 & 0xFFFFFFFFFFFFFFE0;
    *(v11 + 2308) = v42;
    *(v11 + 2312) = v44 & 0xFFFFFFE0;
    *(v11 + 2304) = v43;
    v46 = (v11 + 2272);
    v47 = v43;
    do
    {
      v48 = sub_2779724A8(v42, 8uLL);
      *v46 = v48;
      if (!v48)
      {
        goto LABEL_84;
      }

      ++v46;
      --v47;
    }

    while (v47);
    v49 = sub_2779724A8(v42, 8uLL);
    *v41 = v49;
    if (!v49)
    {
      goto LABEL_84;
    }

    v50 = sub_2779724A8(v42, 8uLL);
    *(v11 + 2296) = v50;
    if (!v50)
    {
      goto LABEL_84;
    }

    if (v42 >= 1)
    {
      v51 = 0;
      v101 = 1;
      v102 = v9;
LABEL_77:
      v52 = (v11 + 2272);
      v53 = v43;
      while (1)
      {
        *(*v52 + 8 * v51) = sub_2779724A8(v45, 1uLL);
        if (!*(*v52 + 8 * v51))
        {
          break;
        }

        ++v52;
        if (!--v53)
        {
          *(*v41 + 8 * v51) = sub_2779724A8(v45, 1uLL);
          if (*(*v41 + 8 * v51))
          {
            *(*(v11 + 2296) + 8 * v51) = sub_2779724A8(v45, 1uLL);
            if (*(*(v11 + 2296) + 8 * v51))
            {
              v101 = ++v51 < v42;
              if (v51 != v42)
              {
                goto LABEL_77;
              }
            }
          }

          break;
        }
      }

      v9 = v102;
      if (v101)
      {
LABEL_84:
        sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate context buffers");
      }
    }
  }

  v54 = 288;
  if (!*(v11 + 2664))
  {
    v55 = *(v11 + 2680);
    v54 = v55 ? 288 : 64;
    if (!v55 && *(v11 + 2512))
    {
      v54 = byte_277C3CAFE[*(*(v11 + 1640) + 28)] + 32;
    }
  }

  *(v11 + 3460) = v54;
  if (sub_27797AC44(*(v12 + 280) + 1248, *(v12 + 104), *(v12 + 108), *(v106 + 96), *(v106 + 100), *(v106 + 76), v54, *(v12 + 560), v39, a5, a6, a7, *(v108 + 1372), 0))
  {
    sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate frame buffer");
  }

  if (*(v11 + 3508) != 1 && *(v108 + 784) != 1)
  {
    v56 = *v9;
    if (*(*v9 + 4 * *v110 + 12668) <= 0)
    {
      v57 = v56 + 73728;
      if (*(v56 + 75084) <= 1)
      {
        v58 = 75072;
      }

      else
      {
        v58 = 75040;
      }

      sub_277A82424(v9 + 245616, (v56 + 75112), v9 + 643376, *(v56 + v58), 1);
      *v108 = *(v57 + 1384);
    }
  }

  v109 = (v9 + 94424);
  v59 = *(v11 + 1640);
  if (*(v59 + 68) && (*(v12 + 548) & 1) == 0 && !*(v11 + 2244))
  {
    v60 = vdupq_n_s64(v111 - 1);
    v61 = vmovn_s64(vcgeq_u64(v60, xmmword_277BB70A0));
    if (vuzp1_s16(v61, *v60.i8).u8[0])
    {
      *v11 = 0;
    }

    if (vuzp1_s16(v61, *&v60).i8[2])
    {
      *(v11 + 64) = 0;
    }

    v62 = vmovn_s64(vcgeq_u64(v60, xmmword_277BB7090));
    if (vuzp1_s16(v62, v62).i32[1])
    {
      *(v11 + 128) = 0;
      *(v11 + 192) = 0;
    }

    v63 = *(v59 + 77);
    if (!*(v11 + 192) && (*(v104 + 795) & 1) == 0)
    {
      v64 = malloc_type_malloc(0x13B9B7uLL, 0x5F484EBFuLL);
      if (v64)
      {
        v65 = (v64 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v65 - 8) = v64;
        *(v11 + 192) = v65;
        if (v65)
        {
          goto LABEL_117;
        }
      }

      else
      {
        *(v11 + 192) = 0;
      }

      sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate cm->rst_tmpbuf");
    }

LABEL_117:
    v105 = v9 + 635008;
    if (!*(v11 + 200))
    {
      v66 = malloc_type_malloc(0x1277uLL, 0x5F484EBFuLL);
      if (!v66)
      {
        *(v11 + 200) = 0;
LABEL_122:
        sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate cm->rlbs");
        goto LABEL_123;
      }

      v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v67 - 8) = v66;
      *(v11 + 200) = v67;
      if (!v67)
      {
        goto LABEL_122;
      }
    }

LABEL_123:
    v103 = v9;
    v68 = 0;
    v69 = 4 * *(v12 + 580);
    v71 = v69 + 71;
    v70 = v69 < -71;
    v72 = v69 + 134;
    if (!v70)
    {
      v72 = v71;
    }

    v73 = *(v12 + 120);
    v74 = *(*(v11 + 1640) + 76);
    v75 = 2 * (v72 >> 6);
    v76 = v11 + 32;
    v107 = v75;
    while (1)
    {
      v77 = v68 && *(*(v11 + 1640) + 96) != 0;
      v78 = (((v77 + v73) >> v77) + 39) & 0xFFFFFFE0;
      v79 = (v75 * v78) << v74;
      v80 = *v76;
      if (v79 == *(v76 + 20) && v80 != 0)
      {
        break;
      }

      if (v80)
      {
        goto LABEL_137;
      }

LABEL_138:
      v82 = *(v76 + 8);
      if (v82)
      {
        free(*(v82 - 8));
      }

      if (v79 < 0)
      {
        *v76 = 0;
        sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate boundaries->stripe_boundary_above");
LABEL_150:
        *(v76 + 8) = 0;
LABEL_151:
        sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate boundaries->stripe_boundary_below");
        goto LABEL_152;
      }

      v83 = malloc_type_malloc(v79 | 0x27u, 0x5F484EBFuLL);
      if (v83)
      {
        v84 = (v83 + 39) & 0xFFFFFFFFFFFFFFE0;
        *(v84 - 8) = v83;
        *v76 = v84;
        if (v84)
        {
          goto LABEL_147;
        }
      }

      else
      {
        *v76 = 0;
      }

      sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate boundaries->stripe_boundary_above");
LABEL_147:
      v85 = malloc_type_malloc(v79 | 0x27u, 0x5F484EBFuLL);
      v75 = v107;
      if (!v85)
      {
        goto LABEL_150;
      }

      v86 = (v85 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v86 - 8) = v85;
      *(v76 + 8) = v86;
      if (!v86)
      {
        goto LABEL_151;
      }

LABEL_152:
      *(v76 + 20) = v79;
LABEL_153:
      *(v76 + 16) = v78;
      if (!v63)
      {
        v76 += 64;
        if (v68++ < 2)
        {
          continue;
        }
      }

      v9 = v103;
      v88 = *v103;
      if (*(*v103 + 75040) >= 2 && *v105 && *(v88 + 4 * *v110 + 12668) <= 0)
      {
        if (*(*v103 + 75084) <= 1)
        {
          v89 = 75076;
        }

        else
        {
          v89 = 75040;
        }

        *(*(v105 + 24) + 432 * *(v88 + v89) - 432) = *(v11 + 192);
      }

      goto LABEL_163;
    }

    if (*(v76 + 8))
    {
      goto LABEL_153;
    }

LABEL_137:
    free(*(v80 - 8));
    goto LABEL_138;
  }

LABEL_163:
  sub_277ACB9E8(v9);
  v90 = 0;
  v91 = 0;
  v92 = v9 + 245904;
  do
  {
    v93 = *(v12 + 288 + v90);
    if (v93 != -1)
    {
      v94 = *(v9 + 246032 + 8 * v93);
      if (v94)
      {
        v95 = (v92 + 16 * v93);
        sub_277AF62F8(v95, *(v94 + 1264), *(v94 + 1272), *(v12 + 104), *(v12 + 108));
        if (*v95 != -1)
        {
          v96 = v95[1];
          v91 |= v96 != -1;
          if (v96 != -1 && (*v95 != 0x4000 || v96 != 0x4000))
          {
            sub_277A48A28(v94 + 1248, v111);
          }
        }
      }
    }

    v90 += 4;
  }

  while (v90 != 28);
  if ((*(v9 + 245616) & 0xFD) != 0 && v91 == 0)
  {
    sub_2779F5C10(*(v12 + 96), 7, "Can't find at least one reference frame with valid size");
  }

  result = sub_277AF62F8((v9 + 245888), *(v12 + 104), *(v12 + 108), *(v12 + 104), *(v12 + 108));
  v99 = *(v12 + 288);
  if (v99 == -1)
  {
    v100 = 0;
  }

  else
  {
    v100 = v92 + 16 * v99;
  }

  *v109 = v100;
  v109[1] = v100;
  return result;
}

BOOL sub_277ACC7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__srce, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, uint64_t a40, double a41, double a42, uint64_t a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, __int128 a48, __int128 a49, __int128 a50, __int128 a51, __int128 a52, __int128 a53, __int128 a54, int32x4_t a55)
{
  v51 = MEMORY[0x28223BE20]();
  STACK[0x3A38] = *MEMORY[0x277D85DE8];
  v54 = v51 + 393852;
  v55 = v51 + 273688;
  v56 = (v51 + 245616);
  v57 = *v48;
  *(v51 + 272280) = *v48;
  *(v51 + 272264) = v57;
  v632 = v51 + 269200;
  *(v51 + 272496) = v48[1];
  *(v51 + 245652) = v49[5];
  v58 = *v49;
  *(v51 + 246118) = *v49 != 0;
  *(v51 + 246124) = v49[2];
  v59 = *(v49 + 4);
  *(v51 + 245616) = v59;
  *(v51 + 246096) = v49[4];
  v60 = v49[8];
  *(v51 + 395384) = v60;
  *(v51 + 395388) = v49[18];
  v61 = v49[6];
  *(v51 + 246104) = v61;
  v636 = (v51 + 643472);
  *(v51 + 643472) = v49[7];
  v62 = *(v49 + 9);
  v63 = *(v49 + 13);
  *(v51 + 245856) = v62;
  *(v51 + 245872) = v63;
  v64 = *(v49 + 70);
  *(v51 + 273752) = *(v49 + 34);
  v65 = (v51 + 273752);
  *(v51 + 273754) = v64;
  v66 = *v51;
  v657 = v51 + 463432;
  if (v59)
  {
    v67 = *(v51 + 463456);
  }

  else
  {
    v67 = *(v51 + 463456);
    if (!*(*&v66 + v67 + 6410))
    {
      *(v51 + 245632) = 0;
    }
  }

  v640 = (v51 + 634344);
  v68 = (v51 + 94344);
  v69 = v49[3] + *(v51 + 245632);
  *(v51 + 245624) = v69;
  v70 = *(v51 + 270312);
  *(v51 + 245620) = v69 & ~(-1 << (*(v70 + 44) + 1));
  if (!v69)
  {
    goto LABEL_8;
  }

  v71 = *(*&v66 + 4 * v67 + 1152);
  if (v71 == 6)
  {
    v71 = *(*&v66 + 3152);
    goto LABEL_12;
  }

  if (v71 != 7)
  {
    if (v71 <= 1)
    {
      v71 = 1;
    }
  }

  else
  {
LABEL_8:
    v71 = 1;
  }

LABEL_12:
  *(v51 + 245628) = v71;
  v72 = *(v51 + 272180);
  v683 = v51 + 245616;
  if (v72 == 1 || *(v51 + 644192) == 1)
  {
    v73 = v48[2];
    if (*(v51 + 271312))
    {
      v74 = *(v51 + 271136);
      if (v74)
      {
        v75 = (((v74 + 7) >> 2) + 2) >> 2;
      }

      else
      {
        v75 = *(v51 + 246140);
      }

      v76 = *(v51 + 271140);
      if (v76)
      {
        v77 = (((v76 + 7) >> 2) + 2) >> 2;
      }

      else
      {
        v77 = *(v51 + 246136);
      }

      v78 = (v51 + 644208);
      sub_2779B2DDC(v56, (v51 + 644208), v77, v75);
      v79 = *(v51 + 644208);
      STACK[0x2290] = 0;
      *&STACK[0x2280] = 0u;
      *&STACK[0x2270] = 0u;
      *&STACK[0x2260] = 0u;
      *&STACK[0x2250] = 0u;
      *&STACK[0x2240] = 0u;
      *&STACK[0x2230] = 0u;
      *&STACK[0x2220] = 0u;
      sub_2779B2F4C(&STACK[0x2220], v79, v77, v75);
      v80 = *(v51 + 644216);
      if (v80)
      {
        free(*(v80 - 8));
        v79 = *v78;
      }

      *(v51 + 644216) = 0;
      if (v79)
      {
        free(*(v79 - 8));
      }

      *v78 = 0;
      sub_2779B310C(v51, &STACK[0x2220], *(v51 + 245632), v73, 6, 1.0);
    }

    else
    {
      v651 = v48[2];
      v654 = v60;
      v82 = 0;
      v83 = (v51 + 86064);
      if (*(v70 + 77))
      {
        v84 = 1;
      }

      else
      {
        v84 = 3;
      }

      v658 = v84;
      v615 = v70;
      v85 = *(v70 + 72);
      v86 = 255;
      do
      {
        if (sub_277A58CE0((v82 + v86) >> 1, v85) < 10.0)
        {
          v82 = ((v82 + v86) >> 1) + 1;
        }

        else
        {
          v86 = (v82 + v86) >> 1;
        }
      }

      while (v82 < v86);
      *(v51 + 395384) = 9;
      if ((v59 & 0xFFFFFFFD) == 0)
      {
        *(v51 + 94440) = v57;
        sub_277ACB51C(v51, v51 + 246108);
      }

      sub_2779C44C0(v51, *(v51 + 272140));
      v87 = *(v51 + 643740);
      v88 = *(v51 + 246136);
      v89 = *(v51 + 246140);
      v90 = *(v51 + 271136);
      if (v90)
      {
        v89 = (((v90 + 7) >> 2) + 2) >> 2;
      }

      v91 = *(v51 + 271140);
      if (v91)
      {
        v88 = (((v91 + 7) >> 2) + 2) >> 2;
      }

      if (v87)
      {
        v92 = 3;
      }

      else
      {
        v92 = 6;
      }

      v93 = byte_277C3CFCC[v92];
      if (v87)
      {
        v94 = 3;
      }

      else
      {
        v94 = 6;
      }

      v95 = v88 >> (v93 - 2);
      v96 = v88 << (2 - v93);
      if ((0x14FE80uLL >> v92))
      {
        v97 = v95;
      }

      else
      {
        v97 = v96;
      }

      v666 = v92;
      v98 = byte_277C42228[v92];
      *(v51 + 644276) = v94;
      v643 = v97;
      v646 = v89 << (2 - v98);
      sub_2779B2DDC(v683, (v51 + 644208), v97, v646);
      vars0 = *(v51 + 644216);
      v633 = *(v51 + 644208);
      if (*(v51 + 463552) < *(v51 + 270340) * *(v51 + 270336))
      {
        sub_277A5D194(v51);
      }

      sub_277A5D2C8(v51);
      v103 = v51 + 245616;
      v648 = v98;
      if ((*v683 & 0xFD) != 0)
      {
        sub_277BA45FC(v51, 0, 0, 0, v99, v100, v101, v102);
        v103 = v51 + 245616;
        v104 = *(v51 + 245856);
        if (v104 == -1)
        {
          v105 = 0;
        }

        else
        {
          v105 = (v51 + 245904 + 16 * v104);
        }

        v106 = *v105;
        if (*v105 == -1 || (v107 = v105[1], v107 == -1) || v106 == 0x4000 && v107 == 0x4000)
        {
          v108 = v51 + 273688;
          if (v104 == -1)
          {
            v109 = 0;
          }

          else
          {
            v109 = *(v51 + 8 * v104 + 246032);
          }

          if (v109)
          {
            v124 = v109 + 1248;
          }

          else
          {
            v124 = 0;
          }
        }

        else
        {
          v108 = v51 + 273688;
          v169 = *(v51 + 273688);
          if (v104 == -1)
          {
            v170 = 0;
          }

          else
          {
            v170 = *(v51 + 8 * v104 + 246032);
          }

          v173 = v169 == v170 || v169 == 0;
          v124 = v169 + 1248;
          if (v173)
          {
            v124 = 0;
          }
        }

        v678 = v124;
        v125 = *(v51 + 245868);
        if (v125 == -1)
        {
          v126 = 0;
        }

        else
        {
          v126 = (v51 + 245904 + 16 * v125);
        }

        v127 = *v126;
        if (*v126 == -1 || (v128 = v126[1], v128 == -1) || v127 == 0x4000 && v128 == 0x4000)
        {
          if (v125 == -1)
          {
            v129 = 0;
          }

          else
          {
            v129 = *(v51 + 8 * v125 + 246032);
          }
        }

        else
        {
          v171 = *(v108 + 24);
          if (v125 == -1)
          {
            v172 = 0;
          }

          else
          {
            v172 = *(v51 + 8 * v125 + 246032);
          }

          v174 = v171 == v172 || v171 == 0;
          v129 = v171 + 1248;
          if (v174)
          {
            v129 = 0;
          }
        }

        v123 = v129 == 0;
      }

      else
      {
        v678 = 0;
        v123 = 1;
      }

      vars8 = v123;
      v175 = *(v103 + 232);
      sub_2779F5008(v51, v99.n128_f64[0], v100, v101, v102);
      sub_277ACB424(v51);
      v176 = *(v51 + 246196);
      **(v51 + 246184) = *(v51 + 246160);
      v177 = *(v51 + 246184);
      *v68 = v177;
      *(v51 + 94392) = *(v51 + 246200);
      *(v51 + 94400) = v176;
      **v177 = v94;
      *(v51 + 395108) = 0x7FFFFFFF;
      sub_277A80B98(v683, *(v51 + 271316), *(v51 + 271320), v82, *(v51 + 271331), *(v51 + 271332));
      sub_277A56D00(v51 + 86480, *(v615 + 96), *(v615 + 100), v658);
      sub_277A5D0C0(v51 + 86064, *(v51 + 272264), 0, 0, v658, v94);
      v637 = v175;
      sub_27798E348(v51 + 86496, *(v615 + 28), v175 + 1248, 0, 0, 0, v658);
      v178 = v51 + 245616;
      if ((*v683 & 0xFD) != 0)
      {
        sub_27798E424(v51 + 86480, 0, v678, 0, 0, 0, v658);
        v178 = v51 + 245616;
      }

      v179 = *(v178 + 580);
      **(v178 + 568) = *(v178 + 544);
      v180 = *(v178 + 568);
      *v68 = v180;
      *(v51 + 94392) = *(v178 + 584);
      *(v51 + 101504) = 0;
      *(v51 + 94400) = v179;
      *(v51 + 172664) = -1;
      sub_277A806F0(v51, v51 + 86064, *(*v180 + 167) & 7, 1);
      sub_27798F98C(v178);
      sub_277A464B0(*(v51 + 270320));
      memcpy((*(v51 + 270320) + 11912), &unk_277BC0A3E, 0x11EuLL);
      memcpy((*(v51 + 270320) + 12198), &unk_277BC0A3E, 0x11EuLL);
      sub_277A8A860(v51);
      *(v51 + 634728) = nullsub_3;
      *(v51 + 634736) = nullsub_4;
      if (*v640 <= 1)
      {
        v679 = *(v51 + 270336);
        v192 = *(v51 + 270340);
        sub_277A55DE8(v178, (v51 + 86064));
        if (v192 >= 1)
        {
          for (__src = 0; __src != v192; __src = __src + 1)
          {
            if (v679 >= 1)
            {
              v193 = 0;
              v194 = byte_277C36D60[v666];
              do
              {
                v195 = (*(v51 + 463544) + 23824 * v193 + 23824 * __src * v679);
                for (i = *v195; i < v195[1]; i += v194)
                {
                  sub_2779B1630(v51, v51 + 86064, v195, i >> v93, v94);
                }

                ++v193;
              }

              while (v193 != v679);
            }
          }
        }
      }

      else
      {
        *(v51 + 634728) = sub_277AF6378;
        *(v51 + 634736) = sub_277AF6430;
        v667 = *(v51 + 270336);
        v181 = *(v51 + 270340);
        if (v181 < 1)
        {
          v182 = 0;
        }

        else
        {
          v182 = 0;
          v184 = *(*(v51 + 270312) + 36);
          v185 = *(v51 + 270656);
          v186 = (v51 + 270660);
          v187 = *(v51 + 270340);
          do
          {
            v188 = v185 << v184;
            v189 = *v186++;
            v185 = v189;
            v190 = v189 << v184;
            if (v189 << v184 >= *(v51 + 246148))
            {
              v190 = *(v51 + 246148);
            }

            v183 = byte_277C3CFCC[*(v51 + 644276)];
            v191 = (~(-1 << v183) - v188 + v190) >> v183;
            if (v182 <= v191)
            {
              v182 = v191;
            }

            --v187;
          }

          while (v187);
        }

        v197 = *(v51 + 634424) != __PAIR64__(v667, v181) || *(v51 + 634432) != v182;
        v620 = v181 * v667;
        if (*(v51 + 463552) < v181 * v667)
        {
          sub_277A5D194(v51);
        }

        if (v197)
        {
          sub_277AF8B44(v51, v182, -1, 0);
        }

        v622 = v94;
        sub_277A5D2C8(v51);
        v198 = *(v51 + 634348);
        if (!v198)
        {
          v198 = sub_277AF8A04(v51);
        }

        v624 = v198;
        *&v199 = -1;
        *(&v199 + 1) = -1;
        *(v51 + 634664) = v199;
        *(v51 + 634680) = v199;
        *(v51 + 634632) = v199;
        *(v51 + 634648) = v199;
        *(v51 + 634600) = v199;
        *(v51 + 634616) = v199;
        *(v51 + 634568) = v199;
        *(v51 + 634584) = v199;
        *(v51 + 634536) = v199;
        *(v51 + 634552) = v199;
        *(v51 + 634504) = v199;
        *(v51 + 634520) = v199;
        *(v51 + 634472) = v199;
        *(v51 + 634488) = v199;
        *(v51 + 634440) = v199;
        *(v51 + 634456) = v199;
        *(v51 + 634709) = 0;
        if (v181 >= 1)
        {
          v200 = 0;
          v201 = 0;
          v202 = 4 * v182;
          v659 = 23824 * v667;
          v662 = v181;
          v203 = 23808;
          do
          {
            __srca = v201;
            v680 = v200;
            v670 = v203;
            v204 = v667;
            if (v667 >= 1)
            {
              do
              {
                v205 = *(v51 + 463544);
                v206 = v205 + v203;
                memset(*(v205 + v203 - 24), 255, v202);
                *(v206 - 4) = *(v205 + v200);
                *(v206 - 12) = 0;
                v203 += 23824;
                v200 += 23824;
                --v204;
              }

              while (v204);
            }

            v201 = __srca + 1;
            v203 = v670 + v659;
            v200 = v680 + v659;
          }

          while (__srca + 1 != v662);
        }

        v207 = v51 + 634344;
        LODWORD(v208) = *v640;
        if (v624 >= *v640)
        {
          v208 = v208;
        }

        else
        {
          v208 = v624;
        }

        v681 = v208;
        v94 = v622;
        if (v208 >= 1)
        {
          v209 = 0;
          v210 = 634440;
          v211 = v681;
          do
          {
            *(v51 + v210) = v209;
            if (v209 + 1 == v620)
            {
              v209 = 0;
            }

            else
            {
              ++v209;
            }

            v210 += 4;
            --v211;
          }

          while (v211);
          v212 = v681 - 1;
          v213 = (*(v51 + 634400) + 56 * (v681 - 1));
          v214 = *(v51 + 634408) + 456 * (v681 - 1);
          v213[3] = sub_277AF9890;
          v213[4] = v214;
          v213[5] = 0;
          *(v214 + 452) = v681 - 1;
          *(v214 + 448) = v681 - 1;
          *v214 = v51;
          if (v681 != 1)
          {
            v215 = v681 - 2;
            v216 = 456 * v681;
            v217 = 56 * v681 - 88;
            v218 = v681 - 1;
            do
            {
              v219 = *(v214 + 16);
              *(v214 + 8) = v219;
              memcpy(v219, (v51 + 86064), 0x256A0uLL);
              sub_277A55DE8(v683, *(v214 + 8));
              v220 = *(v51 + 634408);
              v221 = (v220 + v216 - 912);
              v222 = (*(v51 + 634400) + v217);
              *v222 = sub_277AF9890;
              v222[1] = v221;
              v222[2] = 0;
              *(v220 + v216 - 460) = v215;
              *(v220 + v216 - 464) = v215;
              *v221 = v51;
              --v215;
              v216 -= 456;
              v217 -= 56;
              --v218;
              v214 = v220 + 456 * v218;
            }

            while (v218);
            v214 = v220 + v216 - 456;
            v207 = v51 + 634344;
          }

          *(v214 + 8) = v83;
          sub_277A55DE8(v683, (v51 + 86064));
          v223 = *(v207 + 56) + 56 * v212;
          *(v223 + 48) = 0;
          if (v681 != 1)
          {
            v224 = 56 * v681 - 64;
            do
            {
              sub_277985E48(v223, 2);
              v225 = *(v207 + 56);
              *(v225 + v224) = 0;
              v224 -= 56;
              --v212;
              v223 = v225 + 56 * v212;
            }

            while (v212);
            v223 = v225 + v224 + 8;
          }

          v226 = *(v223 + 24);
          if (v226)
          {
            *(v223 + 48) |= v226(*(v223 + 32), *(v223 + 40)) == 0;
          }
        }

        v227 = *(v207 + 56);
        v228 = *(v227 + 48);
        LODWORD(STACK[0x23B0]) = 0;
        *&STACK[0x23A0] = 0u;
        *&STACK[0x2390] = 0u;
        *&STACK[0x2380] = 0u;
        *&STACK[0x2370] = 0u;
        *&STACK[0x2360] = 0u;
        *&STACK[0x2350] = 0u;
        *&STACK[0x2340] = 0u;
        *&STACK[0x2330] = 0u;
        *&STACK[0x2320] = 0u;
        *&STACK[0x2310] = 0u;
        *&STACK[0x2300] = 0u;
        *&STACK[0x22F0] = 0u;
        *&STACK[0x22E0] = 0u;
        *&STACK[0x22D0] = 0u;
        *&STACK[0x22C0] = 0u;
        *&STACK[0x22B0] = 0u;
        *&STACK[0x22A0] = 0u;
        *&STACK[0x2290] = 0u;
        *&STACK[0x2280] = 0u;
        *&STACK[0x2270] = 0u;
        *&STACK[0x2260] = 0u;
        *&STACK[0x2250] = 0u;
        *&STACK[0x2240] = 0u;
        *&STACK[0x2230] = 0u;
        *&STACK[0x2220] = 0u;
        if (v228)
        {
          memcpy(&STACK[0x2220], (*(v227 + 32) + 24), 0x194uLL);
        }

        if (v681 >= 2)
        {
          v229 = v681 + 1;
          v230 = 56 * v681;
          do
          {
            v231 = *(v207 + 56) + v230;
            sub_277985E48((v231 - 56), 1);
            if (*(v231 - 8))
            {
              memcpy(&STACK[0x2220], (*(v231 - 24) + 24), 0x194uLL);
              v228 = 1;
            }

            --v229;
            v230 -= 56;
          }

          while (v229 > 2);
        }

        if (v228)
        {
          sub_2779F5C78(*(v51 + 245664), &STACK[0x2220]);
        }

        *(*(*(v227 + 32) + 8) + 11152) = *(v51 + 245664);
        v232 = v681;
        if (v681 >= 1)
        {
          do
          {
            v233 = *(*(v207 + 64) + 456 * v232 - 448);
            if (v233 != v83)
            {
              if (*(*(v51 + 270312) + 77))
              {
                v234 = 1;
              }

              else
              {
                v234 = 3;
              }

              do
              {
                if (*v233)
                {
                  free(*(*v233 - 8));
                }

                *v233 = 0;
                v233 += 17;
                --v234;
              }

              while (v234);
            }

            v472 = v232-- > 1;
          }

          while (v472);
        }
      }

      STACK[0x2290] = 0;
      *&STACK[0x2280] = 0u;
      *&STACK[0x2270] = 0u;
      *&STACK[0x2260] = 0u;
      *&STACK[0x2250] = 0u;
      *&STACK[0x2240] = 0u;
      *&STACK[0x2230] = 0u;
      *&STACK[0x2220] = 0u;
      sub_2779B2F4C(&STACK[0x2220], v633, v643, v646);
      v235 = (v643 * v646);
      v236 = 0.0;
      if ((*v683 & 0xFD) != 0 && v235 != 0)
      {
        if (v235 <= 0)
        {
          v243 = v235;
          v245 = 0.0;
        }

        else
        {
          v238 = 0;
          v239 = vars0;
          v240 = vars0;
          v241 = (v643 * v646);
          do
          {
            v242 = *v240++;
            v238 += v242;
            --v241;
          }

          while (v241);
          v243 = v235;
          v244 = v238 / v235;
          v245 = 0.0;
          do
          {
            v246 = *v239++;
            v245 = v245 + (v246 - v244) * (v246 - v244);
            --v235;
          }

          while (v235);
        }

        v236 = sqrt(v245 / v243);
      }

      v247 = *(v51 + 644216);
      if (v247)
      {
        free(*(v247 - 8));
      }

      *(v51 + 644216) = 0;
      v248 = *(v51 + 644208);
      if (v248)
      {
        free(*(v248 - 8));
      }

      *(v51 + 644208) = 0;
      if (*(*(v51 + 270312) + 77))
      {
        v249 = 1;
      }

      else
      {
        v249 = 3;
      }

      v250 = 86064;
      v251 = v51 + 245616;
      do
      {
        v252 = *(v51 + v250);
        if (v252)
        {
          free(*(v252 - 8));
          v251 = v51 + 245616;
        }

        *(v51 + v250) = 0;
        v250 += 136;
        --v249;
      }

      while (v249);
      if (SLODWORD(STACK[0x225C]) >= v643 / 2)
      {
        v253 = v643 / 2;
      }

      else
      {
        v253 = STACK[0x225C];
      }

      if (LODWORD(STACK[0x225C]) == -1)
      {
        v254 = v643 / 2;
      }

      else
      {
        v254 = v253;
      }

      LODWORD(STACK[0x225C]) = v254;
      if (v254 >= 1)
      {
        LODWORD(STACK[0x2258]) = (LODWORD(STACK[0x2258]) - 2 * v646 * v254) & ~((LODWORD(STACK[0x2258]) - 2 * v646 * v254) >> 31);
      }

      v255 = *v51;
      v256 = 463516;
      if (!*(v51 + 271336))
      {
        v256 = 246144;
      }

      *&STACK[0x2288] = vdivq_f64(*&STACK[0x2288], vdupq_lane_s64(COERCE__INT64((*(v51 + v256) << (4 - (v93 + v648)))), 0));
      v257 = *(*(*&v255 + 23888) + 8);
      sub_2779B310C(v51, &STACK[0x2220], *(v251 + 16), v651, v94, v236);
      v258 = *(*&v255 + 35600);
      if (v258 > 3 || *(v51 + 245632) && v257[6] > 0.2 && v257[2] / (v257[4] + dbl_277BB7020[v257[4] < 0.0]) > 2.0)
      {
        v259 = v51 + 269200;
        if (!vars8)
        {
          v260 = *(v51 + 245868);
          v261 = *(v51 + 246032 + 8 * *(v51 + 245856));
          v262 = *(v51 + 246032 + 8 * v260);
          if (v262)
          {
            --*v262;
          }

          *(v51 + 246032 + 8 * v260) = v261;
          ++*v261;
        }

        v263 = 1;
      }

      else
      {
        v263 = v258 + 1;
        v259 = v51 + 269200;
      }

      *(*&v255 + 35600) = v263;
      sub_277A48A28(v637 + 1248, v658);
      v264 = v51 + 246032;
      v265 = *(v51 + 245856);
      v266 = *(v51 + 245848);
      v267 = *(v51 + 246032 + 8 * v265);
      if (v267)
      {
        --*v267;
      }

      *(v264 + 8 * v265) = v266;
      ++*v266;
      v268 = *(v51 + 245632);
      if (!v268)
      {
        v269 = *(v51 + 245868);
        if (v269 != -1)
        {
          v270 = *(v264 + 8 * *(v51 + 245856));
          v271 = *(v264 + 8 * v269);
          if (v271)
          {
            --*v271;
          }

          *(v264 + 8 * v269) = v270;
          ++*v270;
        }
      }

      *(v51 + 245632) = v268 + 1;
      *(v51 + 395384) = v654;
      if ((*v683 & 0xFD) != 0)
      {
        v272 = 0;
        v273 = *(v51 + 273752);
        v274 = v51 + 273688;
        v275 = 1;
        do
        {
          v276 = *(v274 + v272);
          if (v272 == 24)
          {
            if (*(v259 + 2980) || *(*v51 + 23172) || *(v259 + 3008) != 1 || *(v259 + 2208))
            {
              v277 = v275;
            }

            else
            {
              if (*(*v51 + 51016))
              {
                v278 = 1;
              }

              else
              {
                v278 = v276 == 0;
              }

              v277 = v275;
              if (!v278)
              {
                v279 = *(v264 + 8 * *(v51 + 245868));
                v280 = v276[316] == *(v279 + 1264) && v276[318] == *(v279 + 1272);
                v277 = v273 | v280;
                v275 = v273 | v280;
              }
            }
          }

          else
          {
            v277 = 1;
          }

          if (v276 && (v277 & 1) != 0)
          {
            --*v276;
            *(v274 + v272) = 0;
          }

          v272 += 8;
        }

        while (v272 != 56);
      }
    }

    return 0;
  }

  *(v51 + 94440) = v57;
  v611 = v47;
  v612 = v50;
  if ((v72 || *(*&v66 + 23172) || *(v51 + 272208) != 1 || *(v51 + 271408)) && *(v51 + 271329) == 2)
  {
    v62.i64[0] = *(*(*(*&v66 + 23888) + 24) + 24);
    if (*v62.i64 < 0.0)
    {
      v110 = 463516;
      if (!*(v51 + 271336))
      {
        v110 = 246144;
      }

      v111 = *(v51 + v110);
      v113 = 3;
      if (!*(v51 + 643740))
      {
        v113 = 6;
      }

      v114 = v70;
      v112 = *(v51 + 272712);
      v115 = sub_2779F1744(*(v112 + 40), *(v112 + 32), *(v112 + 192) & 8, (byte_277C3CAE8[v113] + *(v112 + 24) - 1) / byte_277C3CAE8[v113] * (byte_277C3CAE8[v113] >> 3), (byte_277C3CAFE[v113] + *(v112 + 16) - 1) / byte_277C3CAFE[v113] * (byte_277C3CAFE[v113] >> 3));
      *v62.i64 = log1p(v115 / v111);
      v70 = v114;
      v55 = v51 + 273688;
      v65 = (v51 + 273752);
      v54 = v51 + 393852;
      v56 = (v51 + 245616);
      *(v51 + 644568) = v62.i64[0];
    }
  }

  *(*(v56 + 29) + 1464) = v59;
  v116 = *(v51 + 271968);
  *(v51 + 270916) = v116;
  *(v51 + 270920) = *(v51 + 271969);
  if (v58)
  {
    LOBYTE(v117) = 0;
  }

  else
  {
    v117 = *(v70 + 52);
    if (v117)
    {
      v117 = *(v70 + 40);
      if (v117)
      {
        LOBYTE(v117) = (v59 & 0xFD) != 0;
      }
    }
  }

  v118 = (v117 & v56[498]);
  if (v116)
  {
    v119 = 1;
  }

  else
  {
    v119 = v118 == 0;
  }

  v120 = !v119;
  v56[498] = v120;
  v121 = v59 & 0xFFFFFFFD;
  if (!v58 && (*(v51 + 272069) & 1) != 0 && v121)
  {
    v56[497] = *(v70 + 65) != 0;
    *(v51 + 644193) = v59;
  }

  else
  {
    v56[497] = 0;
    *(v51 + 644193) = v59;
    if (!v121)
    {
      v122 = (v51 + 643472);
      *(v51 + 644688) = 0;
      goto LABEL_108;
    }
  }

  v119 = v59 == 3;
  v122 = (v51 + 643472);
  if (v119)
  {
    *(*&v66 + *(*&v66 + 6664) + 400) = 2;
    v61 = *(v56 + 122);
  }

LABEL_108:
  v130 = v51 + 269200;
  if (!v61 || v56[502] == 1 && *v56)
  {
    v131 = v51 + 264608;
    v610 = v51 + 264608;
    v613 = v55;
    v614 = v65;
    if (*(v51 + 272180) == 1 || *(v122 + 720) == 1 || v56[495] != 1 || (*v56 & 0xFD) == 0 || *(v54 + 2532))
    {
      goto LABEL_116;
    }

    v281 = *(*(v51 + 270312) + 59);
    if (v281 == 2)
    {
      v282 = *(v51 + 272496);
      if (!v282)
      {
LABEL_116:
        v132 = 0;
        v56[494] = 0;
LABEL_117:
        *(v51 + 97208) = v132;
        *(v131 + 4053) = 0;
        v133 = *v56;
        if (v133 <= 3 && v133 != 1)
        {
          *v131 = 0;
          *(v131 + 2) = 0;
          v62.i64[0] = 0;
          *(v51 + 264612) = 0u;
          *(v51 + 264628) = 0u;
          *(v51 + 264644) = 0u;
          *(v51 + 264660) = 0u;
          *(v51 + 264676) = 0u;
          *(v51 + 264692) = 0u;
          *(v51 + 264708) = 0u;
          *(v51 + 264724) = 0u;
          *(v51 + 264740) = 0u;
          *(v51 + 264756) = 0u;
        }

        if (*(v51 + 271436))
        {
          v134 = 1;
        }

        else
        {
          v134 = *(v51 + 271432);
        }

        v122[181] = v134;
        if (!*(v51 + 272180) && !*(*v51 + 23172) && *(v51 + 271292) == 1)
        {
          v157 = v70;
          v158 = v54;
          if (v122[80] >= 1 && !*(v51 + 271240) || (v159 = sub_277A58F40(v51), v56 = (v51 + 245616), v159))
          {
            *(v122 + 1056) = 1;
            goto LABEL_151;
          }

          v54 = v158;
          v70 = v157;
          if (v122[264])
          {
LABEL_151:
            sub_2779F5008(v51, *v62.i64, *&v63, v52, v53);
            sub_277ACB424(v51);
            sub_277A5BAF0(v51);
            v160 = 0;
            v161 = *v614;
            v162 = v51 + 273688;
            v163 = 1;
            do
            {
              v164 = *(v162 + v160);
              if (v160 == 24)
              {
                if (*(v51 + 272180) || *(*v51 + 23172) || *(v51 + 272208) != 1 || *(v51 + 271408))
                {
                  v165 = v163;
                }

                else
                {
                  if (*(*v51 + 51016))
                  {
                    v166 = 1;
                  }

                  else
                  {
                    v166 = v164 == 0;
                  }

                  v165 = v163;
                  if (!v166)
                  {
                    v167 = *(v51 + 246032 + 8 * *(v51 + 245868));
                    v168 = v164[316] == *(v167 + 1264) && v164[318] == *(v167 + 1272);
                    v165 = v161 | v168;
                    v163 = v161 | v168;
                  }
                }
              }

              else
              {
                v165 = 1;
              }

              if (v164 && (v165 & 1) != 0)
              {
                --*v164;
                *(v162 + v160) = 0;
              }

              v160 += 8;
            }

            while (v160 != 56);
            *(*v51 + *(v51 + 463456) + 13918) = 1;
            if (*(v51 + 246096))
            {
              ++*(v51 + 463504);
              ++*(v51 + 245632);
            }

            return 0;
          }
        }

        v682 = v51;
        v618 = v54;
        v616 = v70;
        if (*(v51 + 271992) == 1)
        {
          v285 = *(v56 + 134);
          v286 = v285 + 3;
          v472 = v285 < -3;
          v634 = v285;
          v287 = v285 + 6;
          if (v472)
          {
            v286 = v287;
          }

          v288 = *(v56 + 133);
          v289 = v288 + 3;
          if (v288 < -3)
          {
            v289 = v288 + 6;
          }

          if (v288 >= 1)
          {
            v652 = 0;
            v638 = 0;
            v649 = 0;
            v290 = *(v51 + 272264);
            v641 = *(v290 + 40);
            v291 = *(v290 + 32);
            v292 = (v286 >> 2);
            v293 = v289 >> 2;
            v625 = v292;
            if (v292 <= 1)
            {
              v294 = 1;
            }

            else
            {
              v294 = v292;
            }

            v623 = v293;
            if (v293 <= 1)
            {
              v295 = 1;
            }

            else
            {
              v295 = v293;
            }

            vars8a = v295;
            v296 = 0.0;
            v297 = *(v56 + 134);
            v644 = v294;
            do
            {
              if (v634 >= 1)
              {
                v298 = 0;
                v299 = 0;
                v300 = v638 * v625;
                v668 = 2;
                do
                {
                  v660 = v298;
                  if (4 * v638 >= v288)
                  {
                    v309 = NAN;
                  }

                  else
                  {
                    v655 = v299;
                    v301 = 4 * v299;
                    v302 = 4 * v299 + 4;
                    v663 = v641 + v298;
                    v303 = 0.0;
                    v304 = v652;
                    v305 = v649;
                    v306 = 0.0;
                    do
                    {
                      if (v301 < v297)
                      {
                        v307 = v668;
                        v308 = v663 + v304;
                        do
                        {
                          v306 = v306 + sub_277A5D00C(*v682, (v682 + 10810), v308, v291, 3, 0, (*(v68[12] + 192) >> 3) & 1);
                          v303 = v303 + 1.0;
                          v297 = *(v683 + 536);
                          if (v307 >= v302)
                          {
                            break;
                          }

                          v308 += 8;
                          v472 = v307 < v297;
                          v307 += 2;
                        }

                        while (v472);
                        v288 = *(v683 + 532);
                      }

                      v305 += 2;
                      if (v305 >= 4 * v638 + 4)
                      {
                        break;
                      }

                      v304 += 8 * v291;
                    }

                    while (v305 < v288);
                    v309 = v306 / v303 * -0.0021489;
                    v122 = v636;
                    v294 = v644;
                    v300 = v638 * v625;
                    v299 = v655;
                    v51 = v682;
                  }

                  v310 = (1.0 - exp(v309)) * 67.035434 + 17.492222;
                  *(*(v122 + 39) + 8 * v299 + 8 * v300) = v310;
                  v296 = v296 + log(v310);
                  ++v299;
                  v668 += 4;
                  v298 = v660 + 16;
                }

                while (v299 != v294);
              }

              v649 += 4;
              v652 += 16 * v291;
              ++v638;
            }

            while (v638 != vars8a);
            *v62.i64 = exp(v296 / (v623 * v625));
            v311 = 0;
            v312 = 0;
            v56 = v683;
            v54 = v618;
            v70 = v616;
            do
            {
              if (v634 >= 1)
              {
                v313 = (*(v122 + 39) + v311);
                v314 = v294;
                do
                {
                  *&v63 = *v313 / *v62.i64;
                  *v313++ = v63;
                  --v314;
                }

                while (v314);
              }

              ++v312;
              v311 += 8 * v625;
            }

            while (v312 != vars8a);
          }
        }

        v315 = v632;
        v316 = *(v632 + 2129);
        if (v316 != 3)
        {
          goto LABEL_490;
        }

        if (*(v54 + 2532))
        {
          goto LABEL_573;
        }

        *(v122 + 1032) = 3;
        v317 = *(v122 + 125);
        if (*(v632 + 3024))
        {
          if (!v317 || !*(v122 + 126))
          {
            goto LABEL_382;
          }

          v317 = *(v122 + 127);
        }

        if (v317)
        {
LABEL_389:
          v321 = v56;
          if (sub_27797AC44(*(v56 + 29) + 1248, *(v56 + 14), *(v56 + 15), *(*(v632 + 1112) + 96), *(*(v632 + 1112) + 100), *(*(v632 + 1112) + 76), *(v632 + 2932), *(v56 + 128), *v62.i64, *&v63, v52, v53, *(v122 + 1308), 0))
          {
            sub_2779F5C10(*(v321 + 48), 2, "Failed to allocate frame buffer");
          }

          sub_277B0DA28(v321, v51 + 86064);
          *(v122 + 130) = 0;
          a53 = 0u;
          a54 = 0u;
          a51 = 0u;
          a52 = 0u;
          a50 = 0u;
          a48 = 0u;
          a49 = 0u;
          a46 = 0u;
          a47 = 0u;
          a43 = &a44;
          *v68 = &a43;
          *(v321 + 616) = *(v632 + 2088);
          a44 = 0u;
          a45 = 0u;
          *(v51 + 172664) = -1;
          sub_277A806F0(v51, v51 + 86064, 0, 1);
          a41 = 0.0;
          a42 = 0.0;
          v330 = v640[12];
          if (v330 >= *v640)
          {
            v331 = *v640;
          }

          else
          {
            v331 = v330;
          }

          *(v640 + 52) = nullsub_3;
          *(v640 + 53) = nullsub_4;
          if (v331 <= 1 || (*(v632 + 2879) & 1) != 0)
          {
            if (*(v657 + 40) >= 1)
            {
              v332 = 0;
              v333 = byte_277C3F990[*(v636 + 1032)];
              do
              {
                sub_277B0DACC(v51, v51 + 86064, v51 + 86480, v332, &STACK[0x3220], &STACK[0x2220], &STACK[0x1220], &a55, v322, v323, v324, v325, v326, v327, v328, v329, &a42, &a41, *(v51 + 241000));
                v332 += v333;
              }

              while (v332 < *(v657 + 40));
            }

            v334 = v683;
            v122 = v636;
          }

          else
          {
            __srcb = (v51 + 86064);
            *(v640 + 52) = sub_277AF6378;
            *(v640 + 53) = sub_277AF6430;
            v335 = *v51 + 81920;
            v336 = *(v683 + 532);
            sub_277AF96C0(*v51 + 85848, v683, *(v683 + 532));
            *(v335 + 3956) = 0;
            *(v335 + 3968) = v331;
            *(v335 + 3964) = 0;
            memset(*(v335 + 3944), 255, 4 * v336);
            *(v640 + 366) = 0;
            v337 = 56 * v331;
            v338 = *(v640 + 7);
            v339 = *(v640 + 8);
            v340 = v337 + v338;
            v341 = 456 * v331 - 456;
            v342 = v339 + v341;
            *(v340 - 32) = sub_277AFA790;
            *(v340 - 24) = v339 + v341;
            v343 = v331 - 1;
            *(v340 - 16) = 0;
            *(v342 + 452) = v331 - 1;
            *(v342 + 448) = 0;
            *v342 = v51;
            v344 = v331 - 2;
            v345 = v337 - 88;
            v346 = v331 - 1;
            do
            {
              v347 = *(v342 + 16);
              *(v342 + 8) = v347;
              if (v347 != __srcb)
              {
                memcpy(v347, __srcb, 0x256A0uLL);
                sub_277B0DA28(v683, *(v342 + 8));
                v338 = *(v640 + 7);
                v339 = *(v640 + 8);
              }

              --v346;
              v348 = v339 + v341;
              v349 = (v339 + v341 - 456);
              v350 = (v338 + v345);
              *v350 = sub_277AFA790;
              v350[1] = v349;
              v342 = v339 + 456 * v346;
              v350[2] = 0;
              *(v348 - 8) = 0;
              *(v348 - 4) = v344;
              *v349 = v51;
              --v344;
              v345 -= 56;
              v341 -= 456;
            }

            while (v341);
            *(v339 + 8) = __srcb;
            v351 = (v338 + 56 * v343);
            v351[12] = 0;
            v352 = 56 * v331 - 64;
            do
            {
              sub_277985E48(v351, 2);
              --v343;
              v353 = *(v640 + 7);
              v351 = (v353 + 56 * v343);
              *(v353 + v352) = 0;
              v352 -= 56;
            }

            while (v352 != -8);
            v354 = *(v353 + 24);
            if (v354)
            {
              *(v353 + 48) |= v354(*(v353 + 32), *(v353 + 40)) == 0;
              v353 = *(v640 + 7);
            }

            v355 = *(v353 + 48);
            LODWORD(STACK[0x23B0]) = 0;
            *&STACK[0x2390] = 0u;
            *&STACK[0x23A0] = 0u;
            *&STACK[0x2370] = 0u;
            *&STACK[0x2380] = 0u;
            *&STACK[0x2350] = 0u;
            *&STACK[0x2360] = 0u;
            *&STACK[0x2330] = 0u;
            *&STACK[0x2340] = 0u;
            *&STACK[0x2310] = 0u;
            *&STACK[0x2320] = 0u;
            *&STACK[0x22F0] = 0u;
            *&STACK[0x2300] = 0u;
            *&STACK[0x22D0] = 0u;
            *&STACK[0x22E0] = 0u;
            *&STACK[0x22B0] = 0u;
            *&STACK[0x22C0] = 0u;
            *&STACK[0x2290] = 0u;
            *&STACK[0x22A0] = 0u;
            *&STACK[0x2270] = 0u;
            *&STACK[0x2280] = 0u;
            *&STACK[0x2250] = 0u;
            *&STACK[0x2260] = 0u;
            *&STACK[0x2230] = 0u;
            *&STACK[0x2240] = 0u;
            v356 = v355 == 0;
            *&STACK[0x2220] = 0u;
            if (v355)
            {
              memcpy(&STACK[0x2220], (*(v353 + 32) + 24), 0x194uLL);
            }

            v357 = v331;
LABEL_411:
            v358 = 56 * v357 - 8;
            do
            {
              v359 = v357 - 1;
              v360 = (*(v640 + 7) + v358);
              sub_277985E48(v360 - 12, 1);
              if (*v360)
              {
                memcpy(&STACK[0x2220], (*(v360 - 2) + 24), 0x194uLL);
                v356 = 0;
                v472 = v357-- > 2;
                if (v472)
                {
                  goto LABEL_411;
                }

                goto LABEL_418;
              }

              v358 -= 56;
              --v357;
            }

            while (v359 + 1 > 2);
            if (v356)
            {
              goto LABEL_419;
            }

LABEL_418:
            sub_2779F5C78(*(v683 + 48), &STACK[0x2220]);
LABEL_419:
            *(*(*(v353 + 32) + 8) + 11152) = *(v683 + 48);
            sub_277AF64E0((*v51 + 85848));
            v334 = v683;
            v361 = 8;
            v122 = v636;
            do
            {
              v362 = *(*(v640 + 8) + v361);
              if (v362 != __srcb)
              {
                v363 = v362[19367];
                if (v363)
                {
                  free(*(v363 - 8));
                  v334 = v683;
                }

                v362[19367] = 0;
              }

              v361 += 456;
              --v331;
            }

            while (v331);
          }

          v315 = v632;
          if (*(v632 + 2879) == 1 && *(v334 + 616) <= 127)
          {
            v364 = *(v334 + 60) * *(v334 + 56);
            if (a41 / (100 * v364) > 2.0 && a42 / v364 < 4.0)
            {
              *(v632 + 2873) = 0;
              *(v632 + 2875) = 0;
              *(v632 + 2877) = 0;
            }
          }

          if (*(v632 + 3024))
          {
            v366 = byte_277C3F990[*(v122 + 1032)];
            v367 = fopen(*(v632 + 3032), "r");
            v334 = v683;
            if (v367)
            {
              v368 = v367;
              v369 = *(v657 + 40);
              v370 = 0.0;
              v371 = 0.0;
              if (v369 < 1)
              {
LABEL_443:
                fclose(v368);
                v334 = v683;
                v376 = *(v657 + 40);
                v315 = v632;
                v122 = v636;
                if (v376 >= 1)
                {
                  v377 = 0;
                  v378 = 0;
                  v379 = *(v657 + 44);
                  do
                  {
                    if (v379 >= 1)
                    {
                      for (j = 0; j < v379; j += 4)
                      {
                        v381 = 0;
                        v382 = 0;
                        do
                        {
                          for (k = 0; k < 4; k += v366)
                          {
                            v382 += *(*(v636 + 126) + 4 * ((j + k) / v366 + (v381 | v377) / v366 * v379));
                          }

                          v381 += v366;
                        }

                        while (v381 < 4);
                        v378 += v382;
                      }
                    }

                    v377 += 4;
                  }

                  while (v377 < v376);
                  v370 = v378;
                }

                *(v636 + 128) = v370 / v371;
              }

              else
              {
                v372 = 0;
                v373 = *(v657 + 44);
                while (v373 < 1)
                {
LABEL_442:
                  v372 += 4;
                  if (v372 >= v369)
                  {
                    goto LABEL_443;
                  }
                }

                v374 = 0;
                while (1)
                {
                  LODWORD(STACK[0x2220]) = 0;
                  if (fscanf(v368, "%f", &STACK[0x2220]) != 1)
                  {
                    break;
                  }

                  v375 = *&STACK[0x2220];
                  v371 = v371 + v375;
                  v373 = *(v657 + 44);
                  *(*(v636 + 127) + 8 * (v374 / v366 + v373 * (v372 / v366))) = v375;
                  v374 += 4;
                  if (v374 >= v373)
                  {
                    v369 = *(v657 + 40);
                    goto LABEL_442;
                  }
                }

                fclose(v368);
                v334 = v683;
                v315 = v632;
                v122 = v636;
              }
            }
          }

          v384 = *(*(v315 + 1112) + 28);
          v385 = byte_277C3F990[v384];
          v386 = *(v334 + 532);
          if (v386 < 1)
          {
            v395 = 1;
          }

          else
          {
            v387 = 0;
            v388 = *(v334 + 536);
            v389 = 0.0;
            v390 = 0.0;
            do
            {
              if (v388 >= 1)
              {
                for (m = 0; m < v388; m += v385)
                {
                  v392 = sub_277B0E758(v51, v384, v387, m);
                  v393 = sub_277B0E880(v51, v384, v387, m);
                  v394 = v393 / sqrt(sub_277B0E944(v51, v384, v387, m));
                  v389 = v389 + v394 * log(v392);
                  v390 = v390 + v394;
                }
              }

              v387 += v385;
            }

            while (v387 < v386);
            if (v390 <= 0.0)
            {
              v395 = 1;
            }

            else
            {
              v395 = exp(v389 / v390);
            }

            v334 = v683;
            v315 = v632;
            v122 = v636;
          }

          if (v395 <= 1)
          {
            v396 = 1;
          }

          else
          {
            v396 = v395;
          }

          *(v122 + 130) = v396;
          v397 = 1;
          do
          {
            v398 = v397;
            if (v386 >= 1)
            {
              v671 = v397;
              v399 = 0;
              v400 = *(v334 + 536);
              __srcc = v396;
              v401 = v396;
              v402 = 0.0;
              v403 = 0.0;
              do
              {
                if (v400 >= 1)
                {
                  for (n = 0; n < v400; n += v385)
                  {
                    v405 = v401 / sub_277B0E758(v51, v384, v399, n);
                    sub_277B0EA08(v51, v384, v399, n);
                    if (v406 >= 1.0)
                    {
                      v407 = v406;
                    }

                    else
                    {
                      v407 = 1.0;
                    }

                    v408 = fmax(fmin(v405, 4.0), 0.25);
                    if (v408 >= 1.0 / v407)
                    {
                      v409 = (v401 / v408);
                      v410 = sub_277B0E880(v51, v384, v399, n);
                      v411 = v410 / sqrt(sub_277B0E944(v51, v384, v399, n));
                      v402 = v402 + v411 * log(v409);
                      v403 = v403 + v411;
                    }
                  }
                }

                v399 += v385;
              }

              while (v399 < v386);
              v334 = v683;
              v315 = v632;
              v122 = v636;
              v396 = __srcc;
              v398 = v671;
              if (v403 > 0.0)
              {
                v412 = exp(v402 / v403);
                v334 = v683;
                v396 = v412;
              }
            }

            v397 = 0;
            if (v396 <= 1)
            {
              v396 = 1;
            }

            *(v122 + 130) = v396;
          }

          while ((v398 & 1) != 0);
          *v68 = 0;
          sub_27797ABB4(*(v334 + 232) + 1248);
          v413 = *(v51 + 241000);
          if (v413)
          {
            free(*(v413 - 8));
          }

          *(v51 + 241000) = 0;
          v316 = *(v315 + 2129);
          v56 = v683;
          v54 = v618;
          v70 = v616;
LABEL_490:
          if (v316 == 4)
          {
            if (!*(v122 + 131))
            {
              v414 = sub_2779724A8(*(v657 + 52) * *(v657 + 48), 4uLL);
              v56 = v683;
              *(v122 + 131) = v414;
              if (!v414)
              {
                sub_2779F5C10(*(v683 + 48), 2, "Failed to allocate cpi->mb_delta_q");
                v56 = v683;
              }
            }

            v415 = *(v315 + 3064);
            v661 = *(v415 + 40);
            v416 = *(v415 + 32);
            v417 = *(*(v315 + 1112) + 28);
            vars8b = byte_277C3F990[v417];
            v418 = ((vars8b + *(v56 + 134) - 1) / vars8b);
            v619 = byte_277C36D60[v417];
            v621 = ((byte_277C36D60[v417] + *(v56 + 133) - 1) / byte_277C36D60[v417]);
            v419 = sub_2779724A8(v621 * v418, 4uLL);
            STACK[0x2220] = v419;
            v420 = v419;
            if (!v419)
            {
              sub_2779F5C10(*(v683 + 48), 2, "Failed to allocate mb_delta_q[0]");
            }

            v609 = v621 * v418;
            v421 = sub_2779724A8(v621 * v418, 4uLL);
            STACK[0x1220] = v421;
            if (!v421)
            {
              sub_2779F5C10(*(v683 + 48), 2, "Failed to allocate mb_delta_q[1]");
              v421 = 0;
            }

            v422 = v683;
            v423 = vars8b;
            if (v621 < 1)
            {
              v454 = 0.0;
              v453 = 0.0;
            }

            else
            {
              v424 = 0;
              v425 = 0;
              v650 = 0;
              v426 = 0;
              v642 = v418;
              v626 = v421;
              vars0a = v420;
              do
              {
                v635 = v424;
                if (v418 <= 0)
                {
                  v452 = v426 + 1;
                }

                else
                {
                  v672 = 0;
                  v653 = 0;
                  v656 = 0;
                  v647 = v426 * v418;
                  v645 = v426 * v619;
                  v617 = v426 + 1;
                  __srcd = (v426 + 1) * v619;
                  do
                  {
                    v427 = *(v422 + 532);
                    if (v427 <= v645)
                    {
                      v444 = v653;
                      v429 = v653 + 1;
                      v442 = NAN;
                      v443 = v421;
                    }

                    else
                    {
                      v639 = v425;
                      v428 = v653 * v423;
                      v429 = v653 + 1;
                      v430 = (v653 + 1) * v423;
                      LODWORD(v431) = *(v422 + 536);
                      v432 = 0.0;
                      v433 = v635;
                      v434 = 0.0;
                      v664 = v428;
                      do
                      {
                        if (v431 > v428)
                        {
                          v435 = v429;
                          v436 = v672;
                          v437 = v656 + 2;
                          do
                          {
                            v438 = sub_277A5D00C(*v51, v51 + 86480, v661 + 4 * v416 * v433 + v436, v416, 3, 0, (*(v68[12] + 192) >> 3) & 1);
                            if (v438 <= 1)
                            {
                              v439 = 1;
                            }

                            else
                            {
                              v439 = v438;
                            }

                            v432 = v432 + log(v439);
                            v434 = v434 + 1.0;
                            v431 = *(v683 + 536);
                            v440 = v437;
                            v472 = v437 < v431;
                            v437 += 2;
                            v436 += 8;
                          }

                          while (v472 && v440 < v430);
                          v427 = *(v683 + 532);
                          v429 = v435;
                          v428 = v664;
                        }

                        v433 += 2;
                      }

                      while (v433 < v427 && v433 < __srcd);
                      v442 = v432 / v434;
                      v443 = v626;
                      v420 = vars0a;
                      v423 = vars8b;
                      v425 = v639;
                      v444 = v653;
                    }

                    v445 = v444 + v647;
                    v446 = exp(v442);
                    v447 = exp(v446 * -0.004898) * -98.0 + 131.728;
                    v448 = 0.5;
                    if (v447 < 0.0)
                    {
                      v448 = -0.5;
                    }

                    *(v420 + 4 * v445) = (v447 + v448);
                    v449 = exp(v446 * -0.003093) * -68.8 + 180.4;
                    v450 = 0.5;
                    if (v449 < 0.0)
                    {
                      v450 = -0.5;
                    }

                    v451 = v449 + v450;
                    *(v443 + 4 * v445) = v451;
                    v425 += *(v420 + 4 * v445);
                    v650 += v451;
                    v653 = v429;
                    v656 += v423;
                    v672 += 4 * vars8b;
                    v422 = v683;
                    v421 = v443;
                  }

                  while (v429 != v642);
                  v418 = v642;
                  v452 = v617;
                }

                v424 = v635 + v619;
                v426 = v452;
              }

              while (v452 != v621);
              v453 = v425;
              v454 = v650;
              v315 = v632;
            }

            v455 = v453 / v609;
            v456 = -0.5;
            if (v455 >= 0.0)
            {
              v457 = 0.5;
            }

            else
            {
              v457 = -0.5;
            }

            v458 = v455 + v457;
            v459 = v454 / v609;
            if (v459 >= 0.0)
            {
              v460 = 0.5;
            }

            else
            {
              v460 = -0.5;
            }

            v461 = v459 + v460;
            v462 = v461;
            v463 = *(v315 + 2088);
            v464 = &STACK[0x2220];
            v465 = 255 - v461;
            v466 = v458;
            v467 = &STACK[0x3220];
            v468 = v463 - v458;
            v469 = v461 - v458;
            if (v463 < v461)
            {
              v465 = v461 - v458;
            }

            if (v463 < v462)
            {
              v470 = 1;
            }

            else
            {
              v468 = 255 - v463;
              v470 = 0;
            }

            if (v463 >= v462)
            {
              v471 = &STACK[0x1220];
            }

            else
            {
              v467 = v461;
              v471 = v467;
            }

            v472 = v463 < v466;
            if (v463 >= v466)
            {
              v473 = v465;
            }

            else
            {
              v473 = v458;
            }

            a55.i32[0] = v458;
            LODWORD(STACK[0x3220]) = v462;
            if (v463 >= v466)
            {
              v474 = v468;
            }

            else
            {
              v474 = v463;
            }

            if (v463 >= v466)
            {
              v475 = v470;
            }

            else
            {
              v475 = 0;
            }

            if (v463 >= v466)
            {
              v476 = v467;
            }

            else
            {
              v476 = &a55;
            }

            if (!v472)
            {
              v464 = v471;
            }

            v122 = v636;
            if (v621 >= 1)
            {
              v477 = 0;
              v478 = 0;
              v479 = v474 / v473;
              do
              {
                if (v418 >= 1)
                {
                  v480 = *(v636 + 131);
                  v481 = v477;
                  v482 = v418;
                  do
                  {
                    if (v475)
                    {
                      v483 = *(v420 + v481);
                      v484 = v483;
                      v485 = *(v421 + v481) - v483;
                      *&v486 = v485;
                      LOBYTE(v486) = *(v315 + 2130);
                      v487 = v486 / 100.0 * (v484 + v479 * v485 - (v466 + v479 * v469));
                    }

                    else
                    {
                      LOBYTE(v456) = *(v315 + 2130);
                      v487 = v479 * (*&v456 / 100.0) * (*(*v464 + v481) - v476->i32[0]);
                    }

                    v456 = v487 + 0.5;
                    if (v487 < 0.0)
                    {
                      v456 = v487 + -0.5;
                    }

                    *(v480 + v481) = v456;
                    v481 += 4;
                    --v482;
                  }

                  while (v482);
                }

                ++v478;
                v477 += 4 * v418;
              }

              while (v478 != v621);
            }

            if (v420)
            {
              v488 = v421;
              free(*(v420 - 8));
              v421 = v488;
            }

            if (v421)
            {
              free(*(v421 - 8));
            }

            v56 = v683;
            v54 = v618;
            v70 = v616;
          }

LABEL_573:
          v489 = v657;
          if (*(v70 + 16))
          {
            v490 = *(v315 + 1792);
            if (v490 == -1)
            {
              v492 = *(v315 + 3064);
              v493 = *(v492 + 40);
              if ((*(v492 + 192) & 8) != 0)
              {
                v496 = (2 * v493);
                v494 = *v496;
                v495 = v496[2];
              }

              else
              {
                v494 = *v493;
                v495 = v493[1];
              }

              v491 = (v494 | (v495 << 8)) % (1 << *(v70 + 20));
              if (*(v315 + 1992))
              {
                v491 = 55;
              }
            }

            else
            {
              v491 = (v490 + (1 << *(v70 + 20)) + 1) % (1 << *(v70 + 20));
            }

            *(v315 + 1792) = v491;
          }

          v497 = *(v315 + 1968);
          if (!*(v315 + 1968))
          {
            goto LABEL_611;
          }

          if (v497 == 2)
          {
            if ((*(v315 + 3008) | 2) == 2)
            {
              if ((*v56 & 0xFD) == 0)
              {
LABEL_602:
                LOBYTE(v498) = 0;
                goto LABEL_612;
              }

              LOBYTE(v498) = *(v56 + 120) != 0;
LABEL_612:
              v56[492] = v498;
              goto LABEL_613;
            }
          }

          else
          {
            if (v497 != 1)
            {
LABEL_613:
              if ((v122[248] & 1) == 0 && *(*v51 + *(v657 + 24) + 400) == 6)
              {
                v56[492] = 1;
              }

              if (*(v315 + 2203) == 1 && (*v56 & 0xFD) != 0)
              {
                v501 = v54;
                sub_277A9FC64(*(*(v315 + 3064) + 96));
                sub_2779FB544(*(*(v315 + 3064) + 104));
                v54 = v501;
              }

              a38 = 0;
              v502 = *(v315 + 2152);
              if (v502 != 4 || *(v54 + 1560) == 2 || *(v54 + 1256) < 2)
              {
                v503 = v122[182];
                v122[182] = v502;
                if (sub_277AD0364(v51, v612, v611, 0, 0, &a38))
                {
                  goto LABEL_623;
                }

                v122[182] = v503;
                v505 = v683;
                goto LABEL_625;
              }

              sub_277BA5710(v51);
              STACK[0x3220] = 0x7FFFFFFFFFFFFFFFLL;
              a43 = 0x7FFFFFFFFFFFFFFFLL;
              *&a44 = 0x7FFFFFFFFFFFFFFFLL;
              a40 = 0;
              a42 = NAN;
              v669 = *(*(v315 + 1112) + 72);
              v665 = *(*v51 + *(v657 + 24) + 400);
              if (*(v618 + 1560))
              {
                v122[182] = 4;
                v516 = sub_277AD0364(v51, v612, v611, &STACK[0x3220], &a44, &a40 + 1);
                v122[182] = 0;
                if (v516)
                {
                  goto LABEL_623;
                }

                v517 = *(v51 + 393880);
                *(v51 + 268640) = *(v51 + 393864);
                *(v51 + 268656) = v517;
                *(v315 + 136) = *(v618 + 292);
                v518 = *(v51 + 394032);
                *(v51 + 269208) = *(v51 + 394016);
                *(v51 + 269224) = v518;
                v519 = *(v51 + 394064);
                *(v51 + 269240) = *(v51 + 394048);
                *(v51 + 269256) = v519;
                v520 = *(v51 + 394080);
                v521 = *(v51 + 394096);
                v522 = *(v51 + 394128);
                *(v51 + 269304) = *(v51 + 394112);
                *(v51 + 269320) = v522;
                *(v51 + 269272) = v520;
                *(v51 + 269288) = v521;
                *v315 = *(v618 + 156);
                memcpy((v51 + 395064), (v51 + 394368), 0x138uLL);
                v523 = (*v51 + 74928);
                *v523 = *(v51 + 394680);
                v524 = *(v51 + 394696);
                v525 = *(v51 + 394712);
                v526 = *(v51 + 394728);
                *(v523 + 60) = *(v51 + 394740);
                v523[2] = v525;
                v523[3] = v526;
                v523[1] = v524;
                if ((*v683 & 0xFD) != 0)
                {
                  v527 = 0;
                  v528 = *v614;
                  v529 = v51 + 273688;
                  v530 = 1;
                  do
                  {
                    v531 = *(v529 + v527);
                    if (v527 == 24)
                    {
                      if (*(v315 + 2980) || *(*v51 + 23172) || *(v315 + 3008) != 1 || *(v315 + 2208))
                      {
                        v532 = v530;
                      }

                      else
                      {
                        if (*(*v51 + 51016))
                        {
                          v533 = 1;
                        }

                        else
                        {
                          v533 = v531 == 0;
                        }

                        v532 = v530;
                        if (!v533)
                        {
                          v534 = *(v51 + 246032 + 8 * *(v683 + 252));
                          v535 = v531[316] == *(v534 + 1264) && v531[318] == *(v534 + 1272);
                          v532 = v528 | v535;
                          v530 = v528 | v535;
                        }
                      }
                    }

                    else
                    {
                      v532 = 1;
                    }

                    if (v531 && (v532 & 1) != 0)
                    {
                      --*v531;
                      *(v529 + v527) = 0;
                    }

                    v527 += 8;
                  }

                  while (v527 != 56);
                }

                if (sub_277AD0364(v51, v612, v611, &a43, &a42, &a40))
                {
                  goto LABEL_623;
                }

                v557 = sub_277A89FA0(v669, v665, *(v683 + 616));
                if (v557 * a44 * 0.001953125 + (STACK[0x3220] >> (2 * v669 - 16)) * 128.0 >= v557 * *&a42 * 0.001953125 + (a43 >> (2 * v669 - 16)) * 128.0)
                {
                  a38 = a40;
                  v505 = v683;
                  v122 = v636;
                  v489 = v657;
LABEL_625:
                  v506 = v616;
LABEL_626:
                  v507 = v613;
                  if (*(v506 + 16))
                  {
                    v508 = 0;
                    v509 = *(v505 + 36);
                    do
                    {
                      if ((v509 >> v508))
                      {
                        *(v51 + 270996 + 4 * v508) = *(v315 + 1792);
                      }

                      ++v508;
                    }

                    while (v508 != 8);
                  }

                  if (v122[80] == v122[82] - 1)
                  {
                    ++v122[110];
                  }

                  if (*v610)
                  {
                    if (!*(v610 + 1))
                    {
                      v510 = *(v610 + 176);
                      if (v510)
                      {
                        memcpy(*(*(v505 + 232) + 80), v510, *(*(v505 + 232) + 260) * *(*(v505 + 232) + 264));
                        v507 = v613;
                        v505 = v683;
                      }
                    }
                  }

                  if (!*(*v51 + 4 * *(v489 + 24) + 12668) && (*v505 & 0xFD) != 0)
                  {
                    v511 = v507;
                    sub_277AD6D18(v51);
                    v507 = v511;
                    v505 = v683;
                  }

                  if (*(v505 + 480))
                  {
                    *(v507 + 56) = *(v505 + 232);
                  }

                  if (*(v505 + 516) == 1)
                  {
                    memcpy(*(v315 + 1120), (*(v489 + 112) + 23824 * a38 + 32), 0x52FCuLL);
                    sub_27798FC58(*(v315 + 1120));
                    v505 = v683;
                  }

                  if (!*(v315 + 1716))
                  {
                    memcpy((*(v505 + 232) + 1496), *(v315 + 1120), 0x52FCuLL);
                    v505 = v683;
                  }

                  if (*(v315 + 2770) == 1)
                  {
                    if (*(v315 + 1716))
                    {
                      v512 = *(v315 + 2980);
                      if (v512 > 1 || !v512 && !*(v122 + 720) && *(*v51 + 23172))
                      {
                        *&STACK[0x2220] = *"./fc";
                        LODWORD(STACK[0x2230]) = 0;
                        v513 = *(v505 + 16);
                        LOBYTE(STACK[0x2224]) = v513 / 0x64 + 48;
                        LOBYTE(STACK[0x2225]) = (v513 % 0x64 / 0xA) | 0x30;
                        LOWORD(STACK[0x2226]) = (v513 % 0xA) | 0x30;
                        sub_2779F4E7C(*(v315 + 1120), &STACK[0x2220]);
                        v505 = v683;
                      }
                    }
                  }

                  *(v122 + 721) = *v505;
                  if (*(v505 + 492) == 1)
                  {
                    v514 = v122[304] + 1;
                  }

                  else
                  {
                    v514 = 1;
                  }

                  v122[304] = v514;
                  v515 = v122[82];
                  if (v122[80] == v515 - 1)
                  {
                    v122[84] = v515;
                  }

                  *(v610 + 1) = 0;
                  *(v610 + 4053) = 0;
                  v504 = *(v505 + 480);
                  if (v504)
                  {
                    v504 = 0;
                    ++*(v489 + 72);
                    ++*(v505 + 16);
                  }

                  return v504 != 0;
                }

                v558 = *(v51 + 393880);
                *(v51 + 268640) = *(v51 + 393864);
                *(v51 + 268656) = v558;
                *(v315 + 136) = *(v618 + 292);
                v559 = *(v51 + 394032);
                *(v51 + 269208) = *(v51 + 394016);
                *(v51 + 269224) = v559;
                v560 = *(v51 + 394064);
                *(v51 + 269240) = *(v51 + 394048);
                *(v51 + 269256) = v560;
                v561 = *(v51 + 394080);
                v562 = *(v51 + 394096);
                v563 = *(v51 + 394128);
                *(v51 + 269304) = *(v51 + 394112);
                *(v51 + 269320) = v563;
                *(v51 + 269272) = v561;
                *(v51 + 269288) = v562;
                *v315 = *(v618 + 156);
                memcpy((v51 + 395064), (v51 + 394368), 0x138uLL);
                v564 = (*v51 + 74928);
                v565 = *(v51 + 394696);
                v566 = *(v51 + 394712);
                v567 = *(v51 + 394728);
                *(v564 + 60) = *(v51 + 394740);
                v564[2] = v566;
                v564[3] = v567;
                v564[1] = v565;
                *v564 = *(v51 + 394680);
                v568 = v683;
                v122 = v636;
                v489 = v657;
                if ((*v683 & 0xFD) != 0)
                {
                  v569 = 0;
                  v570 = *v614;
                  v571 = v51 + 273688;
                  v572 = v51 + 246032;
                  v573 = 1;
                  do
                  {
                    v574 = *(v571 + v569);
                    if (v569 == 24)
                    {
                      if (*(v315 + 2980) || *(*v51 + 23172) || *(v315 + 3008) != 1 || *(v315 + 2208))
                      {
                        v575 = v573;
                      }

                      else
                      {
                        if (*(*v51 + 51016))
                        {
                          v576 = 1;
                        }

                        else
                        {
                          v576 = v574 == 0;
                        }

                        v575 = v573;
                        if (!v576)
                        {
                          v577 = *(v572 + 8 * *(v568 + 252));
                          v578 = v574[316] == *(v577 + 1264) && v574[318] == *(v577 + 1272);
                          v575 = v570 | v578;
                          v573 = v570 | v578;
                          v51 = v682;
                          v568 = v683;
                          v315 = v632;
                          v122 = v636;
                          v489 = v657;
                        }
                      }
                    }

                    else
                    {
                      v575 = 1;
                    }

                    if (v574 && (v575 & 1) != 0)
                    {
                      --*v574;
                      *(v571 + v569) = 0;
                    }

                    v569 += 8;
                  }

                  while (v569 != 56);
                }

                v122[182] = 4;
                v608 = sub_277AD0364(v51, v612, v611, &STACK[0x2220], &STACK[0x1220], &a38);
                v122[182] = 0;
              }

              else
              {
                if ((*(*v51 + *(v657 + 24) + 400) - 6) < 0xFEu)
                {
                  v536 = v51 + 273688;
                  v537 = 9;
                  while (1)
                  {
                    *(v632 + 2148) = v537;
                    *(v632 + 2149) = v537;
                    v636[182] = 4;
                    v538 = sub_277AD0364(v51, v612, v611, &STACK[0x2220] + v537 - 9, &STACK[0x1220] + v537 - 9, &a55.i32[v537 - 9]);
                    v636[182] = 0;
                    if (v538)
                    {
                      goto LABEL_623;
                    }

                    v539 = *(v51 + 393880);
                    *(v51 + 268640) = *(v51 + 393864);
                    *(v51 + 268656) = v539;
                    *(v632 + 136) = *(v618 + 292);
                    v540 = *(v51 + 394032);
                    *(v51 + 269208) = *(v51 + 394016);
                    *(v51 + 269224) = v540;
                    v541 = *(v51 + 394064);
                    *(v51 + 269240) = *(v51 + 394048);
                    *(v51 + 269256) = v541;
                    v542 = *(v51 + 394080);
                    v543 = *(v51 + 394096);
                    v544 = *(v51 + 394128);
                    *(v51 + 269304) = *(v51 + 394112);
                    *(v51 + 269320) = v544;
                    *(v51 + 269272) = v542;
                    *(v51 + 269288) = v543;
                    *v632 = *(v618 + 156);
                    memcpy((v51 + 395064), (v51 + 394368), 0x138uLL);
                    v545 = (*v51 + 74928);
                    v546 = *(v51 + 394696);
                    v547 = *(v51 + 394712);
                    v548 = *(v51 + 394728);
                    *(v545 + 60) = *(v51 + 394740);
                    v545[2] = v547;
                    v545[3] = v548;
                    v545[1] = v546;
                    *v545 = *(v51 + 394680);
                    if ((*v683 & 0xFD) != 0)
                    {
                      v549 = 0;
                      v550 = *v614;
                      v551 = 1;
                      do
                      {
                        v552 = *(v536 + v549);
                        if (v549 == 24)
                        {
                          if (*(v632 + 2980) || *(*v51 + 23172) || *(v632 + 3008) != 1 || *(v632 + 2208))
                          {
                            v553 = v551;
                          }

                          else
                          {
                            if (*(*v51 + 51016))
                            {
                              v554 = 1;
                            }

                            else
                            {
                              v554 = v552 == 0;
                            }

                            v553 = v551;
                            if (!v554)
                            {
                              v555 = *(v51 + 246032 + 8 * *(v683 + 252));
                              v556 = v552[316] == *(v555 + 1264) && v552[318] == *(v555 + 1272);
                              v553 = v550 | v556;
                              v551 = v550 | v556;
                            }
                          }
                        }

                        else
                        {
                          v553 = 1;
                        }

                        if (v552 && (v553 & 1) != 0)
                        {
                          --*v552;
                          *(v536 + v549) = 0;
                        }

                        v549 += 8;
                      }

                      while (v549 != 56);
                    }

                    if (++v537 == 17)
                    {
                      *(v632 + 2148) = 2056;
                      goto LABEL_736;
                    }
                  }
                }

                memset_pattern16(&STACK[0x2220], &unk_277BB7D90, 0x40uLL);
                memset_pattern16(&STACK[0x1220], &unk_277BB7D90, 0x40uLL);
LABEL_736:
                if (sub_277AD0364(v51, v612, v611, &a43, &a42, &a40))
                {
                  goto LABEL_623;
                }

                v579 = sub_277A89FA0(v669, v665, *(v683 + 616));
                v580 = 0;
                v581 = 2 * v669 - 16;
                v582 = v579;
                v583 = -1;
                v584 = 1.79769313e308;
                do
                {
                  v585 = (*(&STACK[0x2220] + v580) >> v581);
                  if (v582 * *(&STACK[0x1220] + v580) * 0.001953125 + v585 * 128.0 < v584)
                  {
                    v583 = v580 + 9;
                    v584 = v582 * *(&STACK[0x1220] + v580) * 0.001953125 + v585 * 128.0;
                  }

                  ++v580;
                }

                while (v580 != 8);
                v315 = v632;
                v122 = v636;
                v586 = v612;
                if (v584 >= v582 * *&a42 * 0.001953125 + (a43 >> v581) * 128.0)
                {
                  v608 = 0;
                  a38 = a40;
                }

                else
                {
                  v587 = *(v51 + 393880);
                  *(v51 + 268640) = *(v51 + 393864);
                  *(v51 + 268656) = v587;
                  *(v632 + 136) = *(v618 + 292);
                  v588 = *(v51 + 394032);
                  *(v51 + 269208) = *(v51 + 394016);
                  *(v51 + 269224) = v588;
                  v589 = *(v51 + 394064);
                  *(v51 + 269240) = *(v51 + 394048);
                  *(v51 + 269256) = v589;
                  v590 = *(v51 + 394080);
                  v591 = *(v51 + 394096);
                  v592 = *(v51 + 394128);
                  *(v51 + 269304) = *(v51 + 394112);
                  *(v51 + 269320) = v592;
                  *(v51 + 269272) = v590;
                  *(v51 + 269288) = v591;
                  *v632 = *(v618 + 156);
                  memcpy((v51 + 395064), (v51 + 394368), 0x138uLL);
                  v593 = (*v51 + 74928);
                  v594 = *(v51 + 394696);
                  v595 = *(v51 + 394712);
                  v596 = *(v51 + 394728);
                  *(v593 + 60) = *(v51 + 394740);
                  v593[2] = v595;
                  v593[3] = v596;
                  v593[1] = v594;
                  *v593 = *(v51 + 394680);
                  v597 = v683;
                  if ((*v683 & 0xFD) != 0)
                  {
                    v598 = 0;
                    v599 = *v614;
                    v600 = v51 + 273688;
                    v601 = v51 + 246032;
                    v602 = 1;
                    do
                    {
                      v603 = *(v600 + v598);
                      if (v598 == 24)
                      {
                        if (*(v315 + 2980) || *(*v51 + 23172) || *(v315 + 3008) != 1 || *(v315 + 2208))
                        {
                          v604 = v602;
                        }

                        else
                        {
                          if (*(*v51 + 51016))
                          {
                            v605 = 1;
                          }

                          else
                          {
                            v605 = v603 == 0;
                          }

                          v604 = v602;
                          if (!v605)
                          {
                            v606 = *(v601 + 8 * *(v597 + 252));
                            v607 = v603[316] == *(v606 + 1264) && v603[318] == *(v606 + 1272);
                            v604 = v599 | v607;
                            v602 = v599 | v607;
                            v51 = v682;
                            v597 = v683;
                            v315 = v632;
                            v122 = v636;
                            v586 = v612;
                          }
                        }
                      }

                      else
                      {
                        v604 = 1;
                      }

                      if (v603 && (v604 & 1) != 0)
                      {
                        --*v603;
                        *(v600 + v598) = 0;
                      }

                      v598 += 8;
                    }

                    while (v598 != 56);
                  }

                  *(v315 + 2148) = v583;
                  *(v315 + 2149) = v583;
                  v122[182] = 4;
                  v608 = sub_277AD0364(v51, v586, v611, &a41, &a39, &a38);
                  v122[182] = 0;
                  *(v315 + 2148) = 2056;
                }

                v489 = v657;
              }

              v506 = v616;
              v505 = v683;
              if (v608)
              {
                goto LABEL_623;
              }

              goto LABEL_626;
            }

            if (*(v54 + 2818) == 1 && *(*v51 + 85780) && *(v54 + 1260) > 2)
            {
              goto LABEL_611;
            }

            v498 = *(v54 + 2692);
            if (!v498)
            {
              goto LABEL_612;
            }
          }

          v498 = v122[83];
          if (v122[82] == 1 && v498 == 1)
          {
            if ((*v56 & 0xFD) != 0)
            {
              v499 = *(v657 + 100);
              if ((!v499 || (v500 = *(v657 + 104)) == 0 || *(v56 + 14) == v499 && *(v56 + 15) == v500) && !*(v54 + 1276) && *(v54 + 1260) >= 30 && (*(v315 + 2128) != 3 || *(*v657 + 112) >= 30) && (v122[304] < 9 || !*(v54 + 1300)))
              {
                goto LABEL_611;
              }
            }

            goto LABEL_602;
          }

          if (v498 < 2)
          {
LABEL_611:
            LOBYTE(v498) = 1;
            goto LABEL_612;
          }

          LOBYTE(v498) = v122[81] == v498 - 1;
          goto LABEL_612;
        }

LABEL_382:
        v318 = sub_2779724A8(*(v657 + 44) * *(v657 + 40), 0x38uLL);
        *(v122 + 125) = v318;
        if (!v318)
        {
          sub_2779F5C10(*(v683 + 48), 2, "Failed to allocate cpi->mb_weber_stats");
        }

        v56 = v683;
        if (*(v632 + 3024))
        {
          v319 = sub_2779724A8(*(v657 + 44) * *(v657 + 40), 4uLL);
          *(v122 + 126) = v319;
          if (!v319)
          {
            sub_2779F5C10(*(v683 + 48), 2, "Failed to allocate cpi->prep_rate_estimates");
          }

          v320 = sub_2779724A8(*(v657 + 44) * *(v657 + 40), 8uLL);
          *(v122 + 127) = v320;
          v56 = v683;
          if (!v320)
          {
            sub_2779F5C10(*(v683 + 48), 2, "Failed to allocate cpi->ext_rate_distribution");
            v56 = v683;
          }
        }

        goto LABEL_389;
      }

      v283 = v54;
      v284 = v70;
      v132 = sub_277BA53E4(*(v51 + 272264), v282, v51 + 273424);
      v131 = v51 + 264608;
      v70 = v284;
      v54 = v283;
      v56 = (v51 + 245616);
    }

    else
    {
      v132 = v281 != 0;
    }

    v56[494] = v132;
    goto LABEL_117;
  }

  v135 = v70;
  v136 = v55;
  v137 = v54;
  sub_277BA5128(v51, v62);
  LODWORD(STACK[0x1220]) = 0;
  v137[306] = 0;
  if (sub_277A06350())
  {
LABEL_623:
    v504 = 1;
    return v504 != 0;
  }

  if (*(v135 + 16) && !*v683)
  {
    v140 = (v51 + 270996 + 4 * *v122);
    v138 = vld1q_dup_f32(v140);
    *(v51 + 270996) = v138;
    *(v51 + 271012) = v138;
  }

  if (*(v51 + 246096))
  {
    *(v136 + 56) = *(v51 + 245848);
  }

  sub_277A5BDA4(v51, *(v51 + 245672), *(v51 + 245676), *v138.i64, v139);
  v145 = v51 + 245616;
  if (*(*v51 + 23472) && *(v51 + 272180) != 1 && *(v122 + 720) != 1 && *(v51 + 246096) && (v122[264] & 1) == 0)
  {
    v146 = *(v51 + 245848);
    v147 = *(v146 + 1264);
    v148 = *(v146 + 1272);
    v149 = *(v51 + 270312);
    if (*(v149 + 77))
    {
      v150 = 1;
    }

    else
    {
      v150 = 3;
    }

    v151 = *(v51 + 272280);
    if (*(v151 + 16) != v147 || *(v151 + 24) != v148)
    {
      v151 = v51 + 272288;
      if (sub_27797AC44(v51 + 272288, v147, v148, *(v149 + 96), *(v149 + 100), *(v149 + 76), 288, *(v51 + 246128), v141, v142, v143, v144, *(v122 + 1308), 0))
      {
        sub_2779F5C10(*(v51 + 245664), 2, "Failed to reallocate scaled source buffer");
      }

      if (!sub_2779F4074(*(v51 + 272280), v51 + 272288, *(*(v51 + 270312) + 72), v150, v152, v153, v154, v155, v156))
      {
        sub_2779F5C10(*(v51 + 245664), 2, "Failed to reallocate buffers during resize");
      }

      v145 = v51 + 245616;
    }

    v130 = v51 + 269200;
    *(v51 + 272264) = v151;
  }

  if (v122[284])
  {
    *&STACK[0x22A0] = 0u;
    *&STACK[0x22B0] = 0u;
    *&STACK[0x2280] = 0u;
    *&STACK[0x2290] = 0u;
    *&STACK[0x2260] = 0u;
    *&STACK[0x2270] = 0u;
    *&STACK[0x2240] = 0u;
    *&STACK[0x2250] = 0u;
    *&STACK[0x2220] = 0u;
    *&STACK[0x2230] = 0u;
    sub_277A2C130(*(v130 + 3064), *(v145 + 232) + 1248, &STACK[0x2220]);
    v145 = v51 + 245616;
    v122[296] = *(*(v51 + 245848) + 36);
    v122[297] = *(v51 + 246232);
    v122[298] = *v137;
    v122[299] = 8 * *v612;
    *(v122 + 150) = STACK[0x2240];
    *(v122 + 151) = STACK[0x2220];
  }

  v504 = 0;
  ++*(v51 + 463504);
  ++*(v145 + 16);
  return v504 != 0;
}

uint64_t sub_277AD0364(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, void *a5, _DWORD *a6)
{
  v1010 = a3;
  v1015 = a2;
  v6 = a1;
  v1138 = *MEMORY[0x277D85DE8];
  v7 = a1 + 643376;
  v8 = a1 + 463416;
  v1017 = a1 + 634336;
  *(a1 + 634336) = 0;
  v9 = a1 + 393852;
  v1043 = a1 + 272840;
  *(a1 + 634164) = 0u;
  *(a1 + 634180) = 0u;
  *(a1 + 634196) = 0u;
  *(a1 + 634212) = 0u;
  *(a1 + 634228) = 0u;
  *(a1 + 634244) = 0u;
  v1016 = a1 + 264608;
  *(a1 + 634260) = 0u;
  *(a1 + 634276) = 0u;
  v10 = a1 + 245344;
  v11 = a1 + 239280;
  *(a1 + 634292) = 0u;
  *(a1 + 634308) = 0u;
  v1091 = a1 + 97128;
  v1019 = a1 + 643376;
  v1029 = a1 + 393852;
  v1128 = a1 + 245344;
  v1047 = a1 + 268736;
  v1101 = a1 + 463416;
  v1002 = a4;
  v1003 = a5;
  v1007 = a6;
  if (*(a1 + 395396))
  {
    v12 = 0;
    v1051 = (a1 + 529104);
    do
    {
      v13 = a1 + 270056 + v12;
      *v13 = xmmword_277C3A208;
      *(v13 + 16) = unk_277C3A218;
      *(v13 + 32) = 0;
      v12 += 36;
    }

    while (v12 != 252);
    *(a1 + 394760) = 0;
    sub_2779C44C0(a1, *(a1 + 395388));
    v14 = sub_277A8B744(v6);
    *(v10 + 777) = 4;
    *(v10 + 775) = *(v1047 + 3334) | *(v10 + 769);
    if (*(v1047 + 3444) < 2u || !*(v9 + 2192))
    {
      goto LABEL_130;
    }

    v14 = 0.0;
    memset(__dst, 0, 32);
    if (!*(v7 + 817) || (*(v1043 + 914) & 1) != 0)
    {
      LOWORD(v18) = 511;
LABEL_129:
      *(v7 + 356) = v18;
LABEL_130:
      sub_2779F5008(v6, v14, v15, v16, v17);
      if (*(v1047 + 2616) == 4 && *(v9 + 1560) != 2 && *(v9 + 1256) >= 2 && *(v7 + 824) && *(v10 + 352) == 8)
      {
        if (v1002)
        {
          *v1002 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v1003)
        {
          *v1003 = 0x7FFFFFFFFFFFFFFFLL;
        }

        result = 0;
        *v1007 = 0;
        return result;
      }

      LODWORD(__src[0]) = 0;
      LODWORD(v1136) = 0;
      HIDWORD(v1131) = 0;
      sub_277BA3DF0(v6, &v1131 + 1, &v1136, __src);
      v1053 = v1136;
      v92 = __src[0];
      sub_277ACB424(v6);
      v97 = v1047;
      if ((*(v10 + 272) & 0xFD) == 0 && !*(v9 + 2532) && !*(v9 + 1676) && (*(v9 + 2244) || *(v9 + 2248)))
      {
        v98 = *v10;
        if (!*v10)
        {
          v98 = sub_277972454(2uLL >> *(*(v1047 + 1576) + 77) << 16);
          if (!v98)
          {
            sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate pixel_gradient_info");
          }

          *v10 = v98;
          v97 = v1047;
        }

        *(a1 + 214760) = v98;
      }

      if (*(v97 + 3472) == 2)
      {
        if (!*(v9 + 1676) || (v94.i64[0] = 1.0, v95.i64[0] = -0.25, *v93.i64 = *(v97 + 3404) * -0.25 + 1.0, *v93.i64 > 0.0) && (!*(v9 + 2532) || *(v9 + 2580)))
        {
          v99 = *(v10 + 8);
          if (!v99)
          {
            v100 = *(*(v97 + 1576) + 28);
            v101 = malloc_type_malloc(16 * byte_277C3F990[v100] * byte_277C36D60[v100] + 23, 0x5F484EBFuLL);
            if (!v101 || (v99 = (v101 + 23) & 0xFFFFFFFFFFFFFFF0, *(v99 - 8) = v101, !v99))
            {
              sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate source_variance_info");
              v99 = 0;
            }

            *(v10 + 8) = v99;
            v97 = v1047;
          }

          *v11 = v99;
        }
      }

      if (*(v9 + 1676) != 2)
      {
        goto LABEL_177;
      }

      v102 = *(*(v97 + 1576) + 28);
      if (v102 == 12)
      {
        v103 = 1;
      }

      else
      {
        v103 = 4;
      }

      v104 = *(v11 + 1768);
      if (v104)
      {
        if (v103 == *(v11 + 1776))
        {
LABEL_177:
          if (!*(v10 + 272))
          {
            v108 = *a1;
            if (*(v9 + 2352))
            {
              memcpy(v108 + 75804, &unk_277C3D084, 0x2140uLL);
            }

            if ((*(v9 + 2076) - 0x7FFFFFFF) >= 0x80000002)
            {
              memcpy(v108 + 75160, &unk_277C3F1C4, 0x268uLL);
            }

            v97 = v1047;
            if (*(v9 + 2080) >= 1)
            {
              v108[4736] = xmmword_277C3F42C;
              v93 = *(&xmmword_277C3F42C + 12);
              *(v108 + 75788) = *(&xmmword_277C3F42C + 12);
            }

            if (*(v9 + 2192) == 2)
            {
              memcpy(v108 + 84316, &unk_277C3F448, 0x540uLL);
              v97 = v1047;
            }
          }

          v1058 = v92;
          v109 = a1;
          if (!*(v9 + 1564) && !*(v7 + 1232) && !*(v9 + 2532) && (*(v97 + 2472) & 1) == 0 && !*(v7 + 824) && *(v97 + 3472) != 1 && !*(v7 + 360) && !*(v10 + 272))
          {
            v481 = HIDWORD(v1131);
            v1082 = *(v10 + 768);
            v1122 = *(v10 + 767);
            v1112 = *(v7 + 364);
            if (*(v97 + 2548))
            {
              if (SHIDWORD(v1131) <= 244)
              {
                v481 = 244;
              }
            }

            else
            {
              if (SHIDWORD(v1131) <= 244)
              {
                v951 = 244;
              }

              else
              {
                v951 = HIDWORD(v1131);
              }

              if (*(v97 + 2544))
              {
                v481 = v951;
              }
            }

            v1100 = *(v1029 + 1676);
            v1090 = *(v1029 + 1677);
            *(v1047 + 3528) = sub_2779F4BE8(v10 + 272, *(v97 + 3544), a1 + 272288, *(v10 + 777), 0, 0, 0, *(v97 + 3396), *v93.i64, *v94.i64, *v95.i64, *v96.i8, *(v7 + 1404));
            v956 = *(v1047 + 3760);
            if (v956)
            {
              *(v1047 + 3536) = sub_2779F4BE8(v10 + 272, v956, a1 + 272504, *(v10 + 777), 0, 0, 0, *(v1047 + 3396), v952, v953, v954, v955, *(v7 + 1404));
            }

            sub_277BA4F38(a1);
            v957 = v1016;
            if (*v1016)
            {
              if (*(v1016 + 2) || (v958 = *(v10 + 496)) == 0)
              {
                sub_277AFBBBC(v1016);
                v957 = v1016;
              }

              else
              {
                v959 = 0;
                v960 = v958 + 92;
                v961 = a1 + 264612;
                do
                {
                  v962 = 0;
                  *(a1 + 264740 + 4 * v959) = *(v958 + 220 + 4 * v959);
                  do
                  {
                    *(v961 + v962) = *(v960 + v962);
                    v962 += 2;
                  }

                  while (v962 != 16);
                  ++v959;
                  v961 += 16;
                  v960 += 16;
                }

                while (v959 != 8);
                *(v1016 + 168) = *(v958 + 256);
                *(v1016 + 164) = *(v958 + 252);
                *v1016 = *(v958 + 88);
              }
            }

            else
            {
              *(v1016 + 156) = 0u;
              *(v1016 + 128) = 0u;
              *(v1016 + 144) = 0u;
              *(v1016 + 96) = 0u;
              *(v1016 + 112) = 0u;
              *(v1016 + 64) = 0u;
              *(v1016 + 80) = 0u;
              *(v1016 + 32) = 0u;
              *(v1016 + 48) = 0u;
              *v1016 = 0u;
              *(v1016 + 16) = 0u;
            }

            v963 = 0;
            v964 = *(v10 + 504);
            v965 = a1 + 264612;
            v966 = v964 + 92;
            do
            {
              v967 = 0;
              *(v964 + 220 + 4 * v963) = *(a1 + 264740 + 4 * v963);
              do
              {
                *(v966 + v967) = *(v965 + v967);
                v967 += 2;
              }

              while (v967 != 16);
              ++v963;
              v966 += 16;
              v965 += 16;
            }

            while (v963 != 8);
            v968 = 0;
            *(v964 + 256) = *(v957 + 168);
            *(v964 + 252) = *(v957 + 164);
            *(v964 + 88) = *v957;
            v969 = __dst;
            v970 = 1;
            do
            {
              v971 = v968;
              if (v970)
              {
                v972 = 0;
                v973 = v1128;
                *(v1128 + 768) = 0;
              }

              else
              {
                v972 = 1;
                v973 = v1128;
              }

              *(v973 + 767) = v972;
              *(v1019 + 360) = v972;
              *(v1029 + 1676) = 2305;
              sub_277A80B98(v973 + 272, *(v1047 + 2580), *(v1047 + 2584), v481, *(v1047 + 2595), *(v1047 + 2596));
              sub_2779C5D3C(a1, *(v1047 + 3404));
              sub_277A7FF54((a1 + 16), (a1 + 246232), *(*(v1047 + 1576) + 72));
              sub_277991BD0(a1, v481);
              sub_277A61248(a1);
              sub_277A2BD70(*(v1047 + 3528), *(v973 + 504) + 1248, v969, *(v1091 + 8), *(v1047 + 2376), v974, v975, v976, v977, v978);
              v970 = 0;
              v968 = 1;
              v969 = &__dst[10];
            }

            while ((v971 & 1) == 0);
            v979 = *__dst[10].i64 - *__dst[0].i64;
            v7 = v1019;
            v10 = v1128;
            v980 = *(v1019 + 1408) / (*(v1128 + 328) * *(v1128 + 332));
            v95.i64[0] = 0x3F1A36E2EB1C432DLL;
            if (v980 >= 0.0001)
            {
              v95.i64[0] = 4.0;
              v981 = v979 / v980 > 4.0;
            }

            else
            {
              v981 = 0;
            }

            v97 = v1047;
            v109 = a1;
            v8 = v1101;
            v982 = v1122;
            v983 = v1112;
            v94.i64[0] = 0x3FECCCCCCCCCCCCDLL;
            if (v979 <= 0.9 && !v981)
            {
              v986 = 0;
              v985 = v1082;
            }

            else
            {
              v985 = *(v1019 + 100);
              v982 = 1;
              v986 = 1;
              v983 = 1;
            }

            *(v1128 + 767) = v982;
            *(v1128 + 768) = v985 != 0;
            *(v1019 + 360) = v986;
            *(v1019 + 364) = v983;
            *(v1029 + 1676) = v1100;
            *(v1029 + 1677) = v1090;
            if ((v982 & 1) == 0)
            {
              sub_277BA50D8(a1 + 463560);
              v97 = v1047;
            }
          }

          v1045 = 0;
          v110 = 0;
          v111 = 0;
          v1051[14] = 0;
          __dst[0].i32[0] = 0;
          LODWORD(v1131) = 0;
          v1037 = &v109[15377];
          v1039 = &v109[17105].i8[8];
          v1041 = v109 + 15366;
          v1072 = &v109[16546].i8[4];
          v1061 = &v109[16538].i32[1];
          v112 = &v109[40273].i8[8];
          v1076 = v109 + 16916;
          v1085 = &v109[16899].i8[12];
          v93.i64[0] = 65793;
          v1035 = v93;
          while (1)
          {
            v114 = sub_2779F4BE8(v10 + 272, *(v97 + 3544), &v109[17018], 0, 0, 0, 0, *(v97 + 3396), *v93.i64, *v94.i64, *v95.i64, *v96.i8, *(v7 + 1404));
            v119 = v1047;
            *(v1047 + 3528) = v114;
            v120 = *(v1047 + 3760);
            if (v120)
            {
              v121 = sub_2779F4BE8(v10 + 272, v120, &v109[17031].i64[1], 0, 0, 0, 0, *(v1047 + 3396), v115.n128_f64[0], v116, v117, v118, *(v7 + 1404));
              v119 = v1047;
              *(v1047 + 3536) = v121;
            }

            v122 = v109->i64[0];
            if (!*(v109->i64[0] + 4 * *(v8 + 40) + 12668) && (*(v10 + 272) & 0xFD) != 0)
            {
              if (v111)
              {
                v123 = 0;
                v124 = *(v1043 + 912);
                v125 = 1;
                do
                {
                  v126 = *&v1039[v123];
                  if (v123 == 24)
                  {
                    if (*(v119 + 3444) || *(v122 + 23172) || *(v119 + 3472) != 1 || *(v119 + 2672) || *(v122 + 51016))
                    {
                      v127 = v125;
                    }

                    else
                    {
                      v127 = v125;
                      if (v126)
                      {
                        v128 = *(v1037 + 8 * *(v10 + 524));
                        v129 = v126[316] == *(v128 + 1264) && v126[318] == *(v128 + 1272);
                        v127 = v124 | v129;
                        v125 = v124 | v129;
                      }
                    }
                  }

                  else
                  {
                    v127 = 1;
                  }

                  if (v126 && (v127 & 1) != 0)
                  {
                    --*v126;
                    *&v1039[v123] = 0;
                  }

                  v123 += 8;
                }

                while (v123 != 56);
              }

              sub_277BA45FC(v109, 0, 0, 0, v115, v116, v117, v118);
              v119 = v1047;
            }

            if (*(v7 + 1232) && *(v7 + 1240) == 1)
            {
              HIDWORD(v1131) = *(v7 + 1244);
              *(v119 + 1264) = *(v7 + 1272);
            }

            v130 = HIDWORD(v1131);
            v131 = v119;
            sub_277A80B98(v10 + 272, *(v119 + 2580), *(v119 + 2584), SHIDWORD(v1131), *(v119 + 2595), *(v119 + 2596));
            sub_2779C5D3C(a1, *(v131 + 3404));
            sub_277A7FF54((a1 + 16), (v10 + 888), *(*(v131 + 1576) + 72));
            v1069 = v130;
            sub_277991BD0(a1, v130);
            if (v111)
            {
              v133 = *(v10 + 780);
              if (v133 == 7 || (v133 & 0xF8) != 0 || (v134 = v1041->i32[v133 & 7], v134 == -1) || !*(v1037 + 8 * v134))
              {
                sub_27798F98C(v10 + 272);
                sub_277A46C04(v10 + 272);
              }
            }

            else
            {
              sub_277BA4F38(a1);
            }

            v135 = *(v1047 + 2592);
            v1063 = v111;
            if (v135 == 2)
            {
              v137 = *(v10 + 888);
              v138 = *(v10 + 496);
              if (v138 && (*(v10 + 328) != *(v138 + 268) || *(v10 + 332) != *(v138 + 272)))
              {
                v8 = v1101;
                bzero(*v1101, *(v10 + 808) * *(v10 + 804));
                *(v1061 + 8) = 0u;
                *(v1061 + 9) = 0u;
                *(v1061 + 6) = 0u;
                *(v1061 + 7) = 0u;
                *(v1061 + 4) = 0u;
                *(v1061 + 5) = 0u;
                *(v1061 + 2) = 0u;
                *(v1061 + 3) = 0u;
                *v1061 = 0u;
                *(v1061 + 1) = 0u;
                v142 = v1016;
LABEL_293:
                v132 = 0.0;
                *(v142 + 156) = 0u;
                *(v142 + 128) = 0u;
                *(v142 + 144) = 0u;
                *(v142 + 96) = 0u;
                *(v142 + 112) = 0u;
                *(v142 + 64) = 0u;
                *(v142 + 80) = 0u;
                *(v142 + 32) = 0u;
                *(v142 + 48) = 0u;
                *v142 = 0u;
                *(v142 + 16) = 0u;
                goto LABEL_294;
              }

              if ((*(v10 + 272) & 0xFD) == 0 || (*(v10 + 774) & 1) != 0 || (*(v1043 + 914) & 1) != 0 || *(v1043 + 912) == 1 && !*(v1029 + 1268))
              {
                v139 = *(*(v1047 + 1576) + 72);
                if (v137 >= 0xFF)
                {
                  v140 = 255;
                }

                else
                {
                  v140 = *(v10 + 888);
                }

                if (v137 < 0)
                {
                  v140 = 0;
                }

                if (v139 == 8)
                {
                  v141 = word_277BFE1FA;
                  v8 = v1101;
                }

                else
                {
                  v8 = v1101;
                  if (v139 != 12)
                  {
                    if (v139 == 10)
                    {
                      v141 = &unk_277BFE3FA;
                      goto LABEL_273;
                    }

                    v152 = -1;
LABEL_275:
                    if (v152 <= 103)
                    {
                      v153 = v152 > 43;
                    }

                    else
                    {
                      v153 = (v152 > 43) + 1;
                    }

                    memset(*v8, 3, *(v10 + 808) * *(v10 + 804));
                    *v1061 = 0u;
                    *(v1061 + 1) = 0u;
                    *(v1061 + 2) = 0u;
                    *(v1061 + 3) = 0u;
                    *(v1061 + 4) = 0u;
                    *(v1061 + 5) = 0u;
                    *(v1061 + 6) = 0u;
                    *(v1061 + 7) = 0u;
                    *(v1061 + 8) = 0u;
                    *(v1061 + 9) = 0u;
                    v142 = v1016;
                    if (*(v1029 + 1228) < 256)
                    {
                      goto LABEL_293;
                    }

                    v154 = 0;
                    v132 = *&v1035;
                    *v1016 = v1035;
                    v155 = &unk_277BED680 + 40 * v153;
                    v156 = 264740;
                    do
                    {
                      if (v154 != 12)
                      {
                        v157 = sub_277A5B3A8(a1, *(v10 + 272), v137, *&v155[v154 * 2]);
                        v158 = v137 + v157 || v137 == 0;
                        v159 = v158 ? v157 : 1 - v137;
                        if (v159 + v137 >= 1)
                        {
                          *(a1 + v156) |= 1u;
                          LOWORD(v1061[v154]) = v159;
                        }
                      }

                      v154 += 4;
                      v156 += 4;
                    }

                    while (v154 != 20);
                    goto LABEL_290;
                  }

                  v141 = &unk_277BFE5FA;
                }

LABEL_273:
                v152 = v141[v140];
                goto LABEL_275;
              }
            }

            else if (v135 == 1)
            {
              v136 = *(v10 + 496);
              if (v136)
              {
                v8 = v1101;
                LODWORD(v136) = *(v10 + 328) != *(v136 + 268) || *(v10 + 332) != *(v136 + 272);
              }

              else
              {
                v8 = v1101;
              }

              v132 = *(v7 + 1176) + -2.0;
              v143 = v132;
              if (v132 >= 7)
              {
                v143 = 7;
              }

              if (v136)
              {
                bzero(*v8, *(v10 + 808) * *(v10 + 804));
                v142 = v1016;
                goto LABEL_293;
              }

              v144 = *(v10 + 888);
              v145 = dbl_277C2F8D8[v143 & ~(v143 >> 31)];
              v146 = *(v10 + 272);
              if ((v146 & 0xFFFFFFFD) == 0 || (*(v10 + 774) & 1) != 0 || (*(v1043 + 914) & 1) != 0 || *(v1043 + 912) == 1 && !*(v1029 + 1268))
              {
                v147 = 0;
                *v1051 = 1;
                *v1016 = v1035;
                *v1061 = 0u;
                *(v1061 + 1) = 0u;
                *(v1061 + 2) = 0u;
                *(v1061 + 3) = 0u;
                *(v1061 + 4) = 0u;
                *(v1061 + 5) = 0u;
                *(v1061 + 6) = 0u;
                *(v1061 + 7) = 0u;
                v148 = -128;
                *(v1061 + 8) = 0u;
                *(v1061 + 9) = 0u;
                do
                {
                  v149 = sub_277A5B3A8(a1, v146, v144, dbl_277C2F8D8[v147] / v145);
                  if (v144 + v149)
                  {
                    v150 = 1;
                  }

                  else
                  {
                    v150 = v144 == 0;
                  }

                  if (v150)
                  {
                    v151 = v149;
                  }

                  else
                  {
                    v151 = 1 - v144;
                  }

                  *&v1072[v148] = v151;
                  *&v1072[4 * v147++] |= 1u;
                  v148 += 16;
                }

                while (v148);
              }
            }

LABEL_290:
            v142 = v1016;
            v8 = v1101;
            v111 = v1063;
            if (!*v1016)
            {
              goto LABEL_293;
            }

            if (*(v1016 + 2) || (v250 = *(v10 + 496)) == 0)
            {
              sub_277AFBBBC(v1016);
              v142 = v1016;
LABEL_294:
              v9 = v1029;
              v160 = a1;
              v161 = v1069;
              v162 = v1072;
              goto LABEL_295;
            }

            v251 = 0;
            v252 = v250 + 92;
            v253 = v1061;
            v9 = v1029;
            v160 = a1;
            v161 = v1069;
            v162 = v1072;
            do
            {
              v254 = 0;
              *&v1072[4 * v251] = *(v250 + 220 + 4 * v251);
              do
              {
                *(v253 + v254) = *(v252 + v254);
                v254 += 2;
              }

              while (v254 != 16);
              ++v251;
              v253 += 4;
              v252 += 16;
            }

            while (v251 != 8);
            *(v1016 + 168) = *(v250 + 256);
            *(v1016 + 164) = *(v250 + 252);
            *v1016 = *(v250 + 88);
LABEL_295:
            v163 = 0;
            v164 = *(v10 + 504);
            v165 = v164 + 92;
            v166 = v1061;
            do
            {
              v167 = 0;
              *(v164 + 220 + 4 * v163) = *&v162[4 * v163];
              do
              {
                *(v165 + v167) = *(v166 + v167);
                v167 += 2;
              }

              while (v167 != 16);
              ++v163;
              v165 += 16;
              v166 += 4;
            }

            while (v163 != 8);
            *(v164 + 256) = *(v142 + 168);
            *(v164 + 252) = *(v142 + 164);
            *(v164 + 88) = *v142;
            v1049 = v161;
            if ((*(v10 + 272) & 0xFD) != 0)
            {
              sub_277AE8CB0(v160, v161, v132);
              v1055 = *(v10 + 765);
              if (v111 && v110 != *(v10 + 765))
              {
                *(v9 + 908) = 0;
              }
            }

            else
            {
              v1055 = v110;
            }

            v168 = v1015;
            sub_277A61248(a1);
            v170 = *(v7 + 1088);
            if (*(v7 + 1072) && *(v7 + 1088))
            {
              v93 = 0uLL;
              *(v112 + 60) = 0u;
              *(v112 + 2) = 0u;
              *(v112 + 3) = 0u;
              *v112 = 0u;
              *(v112 + 1) = 0u;
            }

            v97 = v1047;
            v171 = v1069;
            if (!*(v9 + 1552) && (*(v10 + 272) & 0xFD) != 0 && (*(*a1 + *(v8 + 40) + 400) & 0xFE) != 4 && v170 != 0)
            {
              v1066 = *(v1047 + 1604);
              if (v1066 >= 1)
              {
                v173 = 0;
                v1110 = *(v1047 + 1600);
                do
                {
                  v1080 = v173;
                  v174 = *(*(v97 + 1576) + 36);
                  if (*(v1076->i32 + (((v173 << 32) + 0x100000000) >> 30)) << v174 >= *(v10 + 804))
                  {
                    v175 = *(v10 + 804);
                  }

                  else
                  {
                    v175 = *(v1076->i32 + (((v173 << 32) + 0x100000000) >> 30)) << v174;
                  }

                  if (v1110 >= 1)
                  {
                    v176 = 0;
                    v1119 = v1076->i32[v173] << v174;
                    do
                    {
                      v177 = v176 + v1080 * v1110;
                      v178 = *&v1085[4 * v176];
                      v179 = *(*(v97 + 1576) + 36);
                      if (*&v1085[((v176 << 32) + 0x100000000) >> 30] << v179 >= *(v1128 + 808))
                      {
                        v180 = *(v1128 + 808);
                      }

                      else
                      {
                        v180 = *&v1085[((v176 << 32) + 0x100000000) >> 30] << v179;
                      }

                      v181 = 23824 * v177;
                      memcpy((*(v1101 + 128) + 23824 * v177 + 32), *(v97 + 1584), 0x52FCuLL);
                      *v1091 = *(v1101 + 128) + v181 + 32;
                      if (v1119 < v175)
                      {
                        v182 = (v178 << v179);
                        v183 = *(v1047 + 1576);
                        v184 = *(v183 + 32);
                        v185 = *(v183 + 28);
                        v186 = v1119;
                        do
                        {
                          for (i = v182; i < v180; i = (i + v184))
                          {
                            sub_277AE7B0C(v112, a1, v186, i, v185, *v93.i64, *v94.i64, *v95.i8, *v96.i8);
                          }

                          v186 = (v186 + v184);
                        }

                        while (v186 < v175);
                      }

                      ++v176;
                      v97 = v1047;
                    }

                    while (v176 != v1110);
                  }

                  v173 = v1080 + 1;
                  v10 = v1128;
                }

                while (v1080 + 1 != v1066);
              }

              v7 = v1019;
              v171 = v1069;
              *(v1019 + 1004) = v1069;
              *(v1019 + 1008) = *(v10 + 276);
              *(v1019 + 1072) = 1;
              v168 = v1015;
              v9 = v1029;
              v8 = v1101;
            }

            if (*(v9 + 1544) && *(v97 + 2556) != 3 || *(v97 + 2528))
            {
              sub_277BA5128(a1, v93);
              HIDWORD(v1130) = 0;
              *(v9 + 1224) = 0;
              if (sub_277A06350())
              {
                return 1;
              }

              *(v9 + 1220) = 8 * *v168;
              v97 = v1047;
              v171 = v1069;
            }

            v188 = __src[0];
            v189 = v1136;
            v109 = a1;
            v190 = *a1;
            if (*(v9 + 1268) && *(v9 + 1220) < *(v9 + 1340))
            {
              goto LABEL_943;
            }

            v191 = *(v97 + 2528);
            if (v191 >= 1)
            {
              v192 = *(v9 + 1220) >> 3;
              v193 = *(*(v97 + 1576) + 69);
              v194 = 36;
              if (v193 == 1)
              {
                v194 = 30;
              }

              v150 = v193 == 0;
              v195 = 15;
              if (!v150)
              {
                v195 = v194;
              }

              if (v192 <= 0x81)
              {
                v196 = 1;
              }

              else
              {
                v196 = v192 - 128;
              }

              *v93.i64 = ((*(v10 + 332) * *(v10 + 344) * v195) >> 3) / v196;
              v95.i64[0] = 0x4059000000000000;
              *v94.i64 = v191 / 100.0;
              if (*v93.i64 < *v94.i64)
              {
                v197 = *(v9 + 1388);
                if (v171 >= v197)
                {
                  goto LABEL_943;
                }

                v198 = 0;
                *v95.i64 = v171;
                v199 = *v94.i64 / *v93.i64;
                *v94.i64 = v199 * v171;
                *v93.i64 = v199 * *v94.i64;
                v200 = *v93.i64;
                if (v171 >= *v93.i64)
                {
                  v200 = v171 + 1;
                }

                if (v200 >= v171 + 32)
                {
                  v200 = v171 + 32;
                }

                if (v200 < v197)
                {
                  v197 = v200;
                }

                HIDWORD(v1131) = v197;
                v201 = v1053;
                if (v197 > v1053)
                {
                  v201 = v197;
                }

                v1053 = v201;
                v202 = v1058;
                if (v197 > v1058)
                {
                  v202 = v197;
                }

                v1058 = v202;
                v1045 = 1;
                goto LABEL_549;
              }

              if (v1045)
              {
                goto LABEL_943;
              }

              v1045 = 0;
            }

            if (!*(v190 + 23208) || *(v97 + 3444) == 1 || *(v7 + 816) == 1)
            {
              v203 = *a1;
              goto LABEL_365;
            }

            if (*(v10 + 272))
            {
              v203 = *a1;
            }

            else
            {
              v203 = *a1;
              if (!*(v190 + *(v8 + 40) + 6410))
              {
                v261 = v1136;
                sub_277AE75B4(a1);
                v189 = v261;
                v171 = v1069;
                v97 = v1047;
                v203 = *a1;
              }
            }

            if (*(v203 + 23176) > 0x1BuLL)
            {
              goto LABEL_365;
            }

            v262 = *(v203 + 23216) + 1968 * *(v203 + 23176) + 12432;
            if (*v262 || *(v10 + 760))
            {
              goto LABEL_365;
            }

            v263 = v189;
            v264 = *(v9 + 1220);
            v265 = *(*(v203 + 23216) + 1968 * *(v203 + 23176) + 14352);
            v266 = *(*(v203 + 23216) + 1968 * *(v203 + 23176) + 12440);
            *v93.i64 = sub_277AE7520(*(v262 + 1), *(v262 + 68) + 1, *(v262 + 8), v262 + 112, *(v262 + 40));
            if (*v93.i64 < 0.0)
            {
              v9 = v1029;
              v97 = v1047;
              v109 = a1;
              v8 = v1101;
              v171 = v1069;
              v189 = v263;
              v7 = v1019;
LABEL_365:
              v204 = *(v97 + 2556);
              if (v204 == 3)
              {
                goto LABEL_943;
              }

              v205 = *(v9 + 1216);
              v206 = *(v9 + 1548) * v205;
              if (v206 >= 10000)
              {
                v207 = v206 / 0x64uLL;
              }

              else
              {
                v207 = 100;
              }

              v208 = (v205 - v207) & ~((v205 - v207) >> 31);
              v209 = v205 + v207;
              v210 = v9;
              v211 = *(v9 + 1340);
              if (v209 >= v211)
              {
                LODWORD(v209) = v211;
              }

              if (v209 <= 1)
              {
                v212 = 1;
              }

              else
              {
                v212 = v209;
              }

              v213 = *(v10 + 272);
              if (*(v10 + 272))
              {
                v214 = *(v210 + 1220);
                goto LABEL_376;
              }

              v228 = *(v190 + 44128);
              v214 = *(v210 + 1220);
              if (v228 && v214 < v211)
              {
                v229 = *(v1043 + 1352);
                v230 = *(*(v97 + 1576) + 76);
                v231 = *(v97 + 3528);
                v232 = *(v10 + 504);
                v233 = *(v231 + 40);
                v234 = *(v231 + 32);
                v235 = *(v232 + 1288);
                v236 = *(v232 + 1280);
                v237 = *(v231 + 16);
                v238 = *(v231 + 24);
                if (v230)
                {
                  v239 = sub_277A2BAE0(v233, v234, v235, v236, v237, v238, *v93.i64, v94, v95, v96, v169);
                }

                else
                {
                  v239 = sub_277A2B70C(v233, v234, v235, v236, v237, v238);
                }

                v9 = v1029;
                v227 = v1058;
                if (v239 <= 1)
                {
                  v258 = 1;
                }

                else
                {
                  v258 = v239;
                }

                v97 = v1047;
                v255 = v1053;
                v171 = v1069;
                if (v258 > v229 && *(v1029 + 1220) <= v212 || (v259 = v229 >> 1, v258 > v229 >> 1) && (v255 = v1053, *(v1029 + 1220) <= v208))
                {
                  if (v1069 - 1 <= v255)
                  {
                    v227 = v255;
                  }

                  else
                  {
                    v227 = v1069 - 1;
                  }

                  v260 = v229 * v1049 / v258;
                  if ((v227 + v255) >> 1 >= v260)
                  {
                    v256 = v260;
                  }

                  else
                  {
                    v256 = (v227 + v255) >> 1;
                  }
                }

                else
                {
                  if (v258 < v259)
                  {
                    v7 = v1019;
                    if (*(v1029 + 1220) >= v208)
                    {
                      if (v1069 + 1 < v1058)
                      {
                        v255 = v1069 + 1;
                      }

                      else
                      {
                        v255 = v1058;
                      }

                      v109 = a1;
                      v287 = v259 * v1049 / v258;
                      if ((v1058 + v255 + 1) >> 1 >= v287)
                      {
                        v256 = v287;
                      }

                      else
                      {
                        v256 = (v1058 + v255 + 1) >> 1;
                      }
                    }

                    else
                    {
                      v256 = v1069;
                      v109 = a1;
                      v255 = v1053;
                    }

LABEL_542:
                    if (v256 >= v227)
                    {
                      v220 = v227;
                    }

                    else
                    {
                      v220 = v256;
                    }

                    v1053 = v255;
                    if (v256 < v255)
                    {
                      v220 = v255;
                    }

                    HIDWORD(v1131) = v220;
LABEL_548:
                    v1058 = v227;
                    v198 = v220 == v171;
                    goto LABEL_549;
                  }

                  v256 = v1069;
                }

                v7 = v1019;
                v109 = a1;
                goto LABEL_542;
              }

LABEL_376:
              v215 = v1058;
              if (v1058 <= v188)
              {
                v215 = v188;
              }

              if (v214 < v211)
              {
                v216 = (v213 & 0xFD) == 0 || (*(v203 + *(v8 + 40) + 400) & 0xFE) == 2;
                v217 = *(v1029 + 1544);
                v218 = v216 && v217 == 1;
                v219 = v218;
                if (v217 != 2 && !v219)
                {
                  v220 = v171;
                  v7 = v1019;
LABEL_441:
                  v9 = v1029;
                  v109 = a1;
                  v227 = v1058;
                  goto LABEL_548;
                }
              }

              v221 = v214 > v212 && v171 < v215;
              v7 = v1019;
              if (!v221)
              {
                v222 = v214 >= v208 || v171 <= v189;
                if (v222 && (v204 != 2 || *(v97 + 2552) >= v171 || v214 >= (7 * *(v1029 + 1216)) >> 3))
                {
                  v220 = v171;
                  goto LABEL_441;
                }
              }

              if (v214 > *(v1029 + 1216))
              {
                v1120 = v189;
                if (v214 < v211)
                {
                  v227 = v1058;
                }

                else if (v171 == v1058)
                {
                  v223 = *(*(v97 + 1576) + 72);
                  v224 = sub_277A58CE0(v1058, v223);
                  v225 = *(v1029 + 1388);
                  if (*(v1029 + 1392) >= v225)
                  {
                    v227 = *(v1029 + 1392);
                  }

                  else
                  {
                    v226 = v224 * (v214 / v211);
                    v227 = *(v1029 + 1392);
                    do
                    {
                      if (sub_277A58CE0((v227 + v225) >> 1, v223) < v226)
                      {
                        v227 = ((v227 + v225) >> 1) + 1;
                      }

                      else
                      {
                        v225 = (v227 + v225) >> 1;
                      }
                    }

                    while (v227 < v225);
                  }
                }

                else
                {
                  v227 = v1058;
                }

                if (v1069 + 1 < v227)
                {
                  v267 = v1069 + 1;
                }

                else
                {
                  v267 = v227;
                }

                if (v1063 > 2 || v1131)
                {
                  v268 = *(v10 + 332);
                  v9 = v1029;
                  v109 = a1;
                  v8 = v1101;
                  goto LABEL_490;
                }

                v9 = v1029;
                v109 = a1;
                if (v1063 == 2)
                {
                  v268 = *(v10 + 332);
                  v8 = v1101;
                  if ((v213 & 0xFFFFFFFD) == 0)
                  {
                    sub_277A591C4(a1, 1, *(v10 + 328), v268);
                    if (v227 <= v188)
                    {
                      v269 = v188;
                    }

                    else
                    {
                      v269 = v227;
                    }

                    v270 = *(v10 + 328);
                    v271 = *(v10 + 332);
                    v272 = sub_277A5986C(a1, *(v1029 + 1216), v1120, v269, v270, v271);
                    if (v272 >= v267)
                    {
                      v255 = v267;
                    }

                    else
                    {
                      v273 = 0;
                      do
                      {
                        sub_277A591C4(a1, 1, v270, v271);
                        v270 = *(v10 + 328);
                        v271 = *(v10 + 332);
                        v272 = sub_277A5986C(a1, *(v1029 + 1216), v1120, v269, v270, v271);
                      }

                      while (v272 < v267 && v273++ < 9);
                      v255 = v267;
                      v8 = v1101;
                      v7 = v1019;
                    }

                    v256 = ((v227 + v255 + 1) / 2 + v272 + 1) / 2;
                    v257 = __dst;
                    v9 = v1029;
                    v97 = v1047;
                    v109 = a1;
LABEL_492:
                    v171 = v1069;
LABEL_541:
                    v257->i32[0] = 1;
                    goto LABEL_542;
                  }

LABEL_490:
                  sub_277A591C4(v109, 1, *(v10 + 328), v268);
                  v255 = v267;
                  v256 = (v227 + v267 + 1) / 2;
                  v257 = __dst;
LABEL_491:
                  v97 = v1047;
                  goto LABEL_492;
                }

                sub_277A591C4(a1, 1, *(v10 + 328), *(v10 + 332));
                if (v227 <= v188)
                {
                  v282 = v188;
                }

                else
                {
                  v282 = v227;
                }

                v283 = *(v10 + 328);
                v284 = *(v10 + 332);
                v256 = sub_277A5986C(a1, *(v1029 + 1216), v1120, v282, v283, v284);
                if (v256 >= v267)
                {
                  v255 = v267;
                  v257 = __dst;
                  v9 = v1029;
                  v97 = v1047;
                  v109 = a1;
                  v8 = v1101;
                  goto LABEL_492;
                }

                v285 = 0;
                do
                {
                  sub_277A591C4(a1, 1, v283, v284);
                  v283 = *(v10 + 328);
                  v284 = *(v10 + 332);
                  v256 = sub_277A5986C(a1, *(v1029 + 1216), v1120, v282, v283, v284);
                }

                while (v256 < v267 && v285++ < 9);
                v255 = v267;
                v257 = __dst;
                v9 = v1029;
                v97 = v1047;
                v109 = a1;
                v8 = v1101;
LABEL_540:
                v171 = v1069;
                v7 = v1019;
                goto LABEL_541;
              }

              if (v171 - 1 <= v1053)
              {
                v227 = v1053;
              }

              else
              {
                v227 = v171 - 1;
              }

              if (v1063 > 2 || __dst[0].i32[0])
              {
                v240 = *(v10 + 332);
                v9 = v1029;
                v109 = a1;
              }

              else
              {
                v9 = v1029;
                v109 = a1;
                if (v1063 != 2)
                {
                  v275 = v189;
                  sub_277A591C4(a1, 1, *(v10 + 328), *(v10 + 332));
                  v276 = *(v10 + 328);
                  v277 = *(v10 + 332);
                  v278 = v275;
                  v256 = sub_277A5986C(a1, *(v1029 + 1216), v275, v188, v276, v277);
                  if (v256 > v227)
                  {
                    v279 = 0;
                    do
                    {
                      sub_277A591C4(a1, 1, v276, v277);
                      v276 = *(v10 + 328);
                      v277 = *(v10 + 332);
                      v256 = sub_277A5986C(a1, *(v1029 + 1216), v278, v188, v276, v277);
                    }

                    while (v256 > v227 && v279++ < 9);
                    v8 = v1101;
                  }

                  v97 = v1047;
                  v255 = v1053;
                  if (v256 >= v1053)
                  {
                    v281 = v1053;
                  }

                  else
                  {
                    v281 = v256;
                  }

                  if (*(v1047 + 2556) == 2)
                  {
                    v255 = v281;
                  }

                  goto LABEL_539;
                }

                v240 = *(v10 + 332);
                if ((v213 & 0xFFFFFFFD) == 0)
                {
                  v241 = v189;
                  sub_277A591C4(a1, 1, *(v10 + 328), v240);
                  v242 = *(v10 + 328);
                  v243 = *(v10 + 332);
                  v244 = v241;
                  v245 = sub_277A5986C(a1, *(v1029 + 1216), v241, v188, v242, v243);
                  if (v245 <= v227)
                  {
                    v249 = v245;
                  }

                  else
                  {
                    v246 = 0;
                    do
                    {
                      sub_277A591C4(a1, 1, v242, v243);
                      v242 = *(v10 + 328);
                      v243 = *(v10 + 332);
                      v247 = sub_277A5986C(a1, *(v1029 + 1216), v244, v188, v242, v243);
                    }

                    while (v247 > v227 && v246++ < 9);
                    v249 = v247;
                    v8 = v1101;
                  }

                  v255 = v1053;
                  v256 = (v249 + (v227 + v1053) / 2) / 2;
                  v97 = v1047;
                  if (v249 < v1053 && *(v1047 + 2556) == 2)
                  {
                    v255 = (v249 + (v227 + v1053) / 2) / 2;
                  }

LABEL_539:
                  v257 = &v1131;
                  v9 = v1029;
                  v109 = a1;
                  goto LABEL_540;
                }
              }

              sub_277A591C4(v109, 1, *(v10 + 328), v240);
              v255 = v1053;
              v256 = (v227 + v1053) / 2;
              v257 = &v1131;
              goto LABEL_491;
            }

            *v94.i64 = *v93.i64 + (*(v262 + 4) + v266) / -90000.0;
            if (*(v262 + 1912) > *v94.i64)
            {
              v94.i64[0] = *(v262 + 1912);
            }

            v96.i64[0] = *(v262 + 56);
            *v95.i64 = (v265 + v264) / *v96.i64 + *v94.i64;
            v9 = v1029;
            v97 = v1047;
            v109 = a1;
            v8 = v1101;
            v171 = v1069;
            v189 = v263;
            v7 = v1019;
            if (*v95.i64 <= *v93.i64 || *(v262 + 2) == 1)
            {
              v291 = *(v262 + 356);
              v93.i64[0] = *(v262 + 360);
              v292 = *(v262 + 352);
              v293 = v262 + 368 + 24 * v292;
              v96.i64[0] = *(v293 + 16);
              if (*v96.i64 > *v95.i64 || v291 < 1)
              {
LABEL_574:
                *v94.i64 = *v95.i64 - *v94.i64;
                *v93.i64 = *v94.i64 + *v93.i64;
                if (*v93.i64 <= 1.0)
                {
                  goto LABEL_365;
                }
              }

              else
              {
                while (1)
                {
                  *v96.i64 = *v93.i64 + *v96.i64 - *v94.i64;
                  if (*v96.i64 > 1.0)
                  {
                    break;
                  }

                  v169.i64[0] = *v293;
                  *v93.i64 = *v93.i64 - (*(v293 + 8) - *v293);
                  v295 = v292 + 1;
                  v296 = -v295 < 0;
                  v297 = -v295 & 0x3F;
                  v292 = v295 & 0x3F;
                  if (!v296)
                  {
                    v292 = -v297;
                  }

                  v293 = v262 + 368 + 24 * v292;
                  v96.i64[0] = *(v293 + 16);
                  if (*v96.i64 > *v95.i64 || v291-- <= 1)
                  {
                    goto LABEL_574;
                  }
                }
              }
            }

            v299 = *(v1029 + 1388);
            if (v1069 >= v299)
            {
              goto LABEL_365;
            }

            v198 = 0;
            if (v1069 + 10 < v299)
            {
              v299 = v1069 + 10;
            }

            HIDWORD(v1131) = v299;
            v300 = v1053;
            if (v299 > v1053)
            {
              v300 = v299;
            }

            v1053 = v300;
            v301 = v1058;
            if (v299 > v1058)
            {
              v301 = v299;
            }

            v1058 = v301;
LABEL_549:
            if (*(v7 + 1232) || v198)
            {
              goto LABEL_943;
            }

            v111 = v1063 + 1;
            v289 = v1051[14];
            if (v289 < 9)
            {
              v290 = v289 + 1;
            }

            else
            {
              v290 = 9;
            }

            v1051[14] = v290;
            v110 = v1055;
            if (v1063 != -1)
            {
              v113 = *(v97 + 3528);
              if (v113)
              {
                if (*(v9 + 908) == 1 && (*(v113 + 16) != *(v10 + 328) || *(v113 + 24) != *(v10 + 332)))
                {
                  *(v9 + 908) = 0;
                }
              }
            }
          }
        }

        free(*(v104 - 8));
        *(v11 + 1768) = 0;
      }

      if (v102 == 12)
      {
        v105 = 43687;
      }

      else
      {
        v105 = 174679;
      }

      v106 = malloc_type_malloc(v105, 0x5F484EBFuLL);
      if (v106)
      {
        v107 = (v106 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v107 - 8) = v106;
        *(v11 + 1768) = v107;
        if (v107)
        {
LABEL_176:
          *(v11 + 1776) = v103;
          v97 = v1047;
          goto LABEL_177;
        }
      }

      else
      {
        *(v11 + 1768) = 0;
      }

      sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate cpi->td.vt64x64");
      goto LABEL_176;
    }

    v70 = v6 + 30754;
    for (j = 1; j != 8; ++j)
    {
      v72 = __dst[0].i32[j];
      v73 = *(v10 + 512 + 4 * (j - 1));
      for (k = 1468; k != 1480; k += 4)
      {
        if (v73 == -1)
        {
          LODWORD(v75) = 0;
        }

        else
        {
          v75 = v70[v73];
          if (v75)
          {
            LODWORD(v75) = *(v75 + k);
          }
        }

        v72 += v75;
      }

      __dst[0].i32[j] = v72;
    }

    v76 = *(v10 + 512);
    v18 = 511;
    v77 = 1468;
    while (v76 == -1)
    {
      LODWORD(v78) = 0;
      if (__dst[0].i32[1])
      {
        goto LABEL_101;
      }

LABEL_128:
      v77 += 4;
      if (v77 == 1480)
      {
        goto LABEL_129;
      }
    }

    v78 = v70[v76];
    if (v78)
    {
      LODWORD(v78) = 30 * *(v78 + v77);
    }

    if (!__dst[0].i32[1])
    {
      goto LABEL_128;
    }

LABEL_101:
    if (v78 <= __dst[0].i32[1])
    {
      v79 = *(v10 + 516);
      if (v79 == -1)
      {
        LODWORD(v80) = 0;
      }

      else
      {
        v80 = v70[v79];
        if (v80)
        {
          LODWORD(v80) = *(v80 + v77);
        }
      }

      v81 = *(v10 + 520);
      if (v81 == -1)
      {
        LODWORD(v82) = 0;
      }

      else
      {
        v82 = v70[v81];
        if (v82)
        {
          LODWORD(v82) = *(v82 + v77);
        }
      }

      v83 = *(v10 + 524);
      if (v83 == -1)
      {
        LODWORD(v84) = 0;
      }

      else
      {
        v84 = v70[v83];
        if (v84)
        {
          LODWORD(v84) = *(v84 + v77);
        }
      }

      v85 = *(v10 + 528);
      if (v85 == -1)
      {
        LODWORD(v86) = 0;
      }

      else
      {
        v86 = v70[v85];
        if (v86)
        {
          LODWORD(v86) = 10 * *(v86 + v77);
        }
      }

      v87 = *(v10 + 532);
      if (v87 == -1)
      {
        LODWORD(v88) = 0;
      }

      else
      {
        v88 = v70[v87];
        if (v88)
        {
          LODWORD(v88) = 10 * *(v88 + v77);
        }
      }

      v89 = *(v10 + 536);
      if (v89 == -1)
      {
        LODWORD(v90) = 0;
      }

      else
      {
        v90 = v70[v89];
        if (v90)
        {
          LODWORD(v90) = 10 * *(v90 + v77);
        }
      }

      if (v86 + 20 * (v82 + v80 + v84) + v88 + v90 < __dst[0].i32[3] + __dst[0].i32[2] + __dst[1].i32[0] + __dst[1].i32[1] + __dst[1].i32[2] + __dst[1].i32[3])
      {
        v18 &= (1 << (v77 + 68)) ^ 0x1FF;
      }
    }

    goto LABEL_128;
  }

  v19 = *(a1 + 463532);
  v21 = v19 && (v20 = *(a1 + 463536)) != 0 && (*(a1 + 245672) != v19 || *(a1 + 245676) != v20);
  LODWORD(v1136) = 0;
  v1131 = 0;
  v22 = *(a1 + 272280);
  if (*(*a1 + 51016))
  {
    v23 = *(a1 + 643792);
    v24 = *(a1 + v23 + 644148);
    v25 = *(a1 + 4 * v23 + 644152);
  }

  else
  {
    v25 = 0;
    v24 = 1;
  }

  if (*(a1 + 395232) && !*(a1 + 272180) && !*(*a1 + 23172) && *(a1 + 272208) == 1 && !*(a1 + 271408) && *(a1 + 271292) == 1 && *(a1 + 271268) >= 1 && !*(a1 + 395312) && (*(a1 + 245616) & 0xFD) != 0 && !*(a1 + 643792))
  {
    sub_277BA5710(a1);
  }

  for (m = 0; m != 252; m += 36)
  {
    v27 = v6 + m + 270056;
    *v27 = xmmword_277C3A208;
    *(v27 + 1) = unk_277C3A218;
    *(v27 + 8) = 0;
  }

  *(v9 + 908) = 0;
  sub_2779C44C0(v6, *(v9 + 1536));
  v28 = sub_277A8B744(v6);
  *(v10 + 777) = 4;
  *(v10 + 775) = *(v1047 + 3334) | *(v10 + 769);
  sub_2779F5008(v6, v28, v29, v30, v31);
  v32 = 0;
  v33 = *(v10 + 780);
  if (v33 != 7 && (v33 & 0xF8) == 0)
  {
    v34 = *(v6 + (v33 & 7) + 61464);
    if (v34 == -1)
    {
      v32 = 0;
    }

    else
    {
      v32 = v6[v34 + 30754];
    }
  }

  *(v10 + 496) = v32;
  sub_277BA3DF0(v6, &v1131, &v1131 + 1, &v1136);
  sub_277ACB424(v6);
  v39 = v1047;
  v1118 = v22;
  if (!*(v10 + 288) && (*(*v6 + 51016) || *(v1047 + 2532) >= 1) && !*(v1019 + 420))
  {
    v40 = *(v1047 + 1576);
    v41 = *(v1047 + 2392);
    v42 = v25;
    v43 = *(v1047 + 2396);
    v44 = *(v40 + 96);
    v1108 = *(v40 + 100);
    v1094 = *(v40 + 76);
    v45 = *(v1047 + 3396);
    v46 = *(v1128 + 784);
    v47 = sub_27797ABB4(a1 + 643920);
    v48 = v41;
    v6 = a1;
    v49 = v43;
    v25 = v42;
    v50 = v44;
    v9 = v1029;
    v51 = v45;
    v10 = v1128;
    v55 = sub_27797AC44(a1 + 643920, v48, v49, v50, v1108, v1094, v51, v46, v47, v52, v53, v54, 0, 0);
    v39 = v1047;
    if (v55)
    {
      sub_2779F5C10(*(v1128 + 320), 2, "Failed to allocate buffer for source_last_TL0");
      v39 = v1047;
    }
  }

  if (!*(*v6 + 51016))
  {
    v56 = *(v10 + 328);
    v57 = v22[4];
    if (v57 == 2 * v56 && (v58 = *(v10 + 332), v22[6] == 2 * v58))
    {
      if (v58 * v56 < 57601)
      {
        v24 = 1;
      }

      else
      {
        v24 = 3;
      }
    }

    else
    {
      v59 = 4 * v56;
      if (v59 == v57 && v22[6] == 4 * *(v10 + 332))
      {
        v24 = 1;
      }

      else if (v59 == 3 * v57 && 3 * v22[6] == 4 * *(v10 + 332))
      {
        v24 = 0;
      }
    }

    v25 = 8;
  }

  if ((*(v10 + 272) & 0xFD) == 0 && !*(v9 + 2532) && !*(v9 + 1676) && (*(v9 + 2244) || *(v9 + 2248)))
  {
    v60 = *v10;
    if (!*v10)
    {
      v60 = sub_277972454(2uLL >> *(*(v39 + 1576) + 77) << 16);
      if (!v60)
      {
        sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate pixel_gradient_info");
      }

      *v10 = v60;
      v39 = v1047;
    }

    *(a1 + 214760) = v60;
  }

  v1109 = v25;
  if (*(v39 + 3472) == 2)
  {
    if (!*(v9 + 1676) || (v36 = 1.0, v37 = -0.25, v35 = *(v39 + 3404) * -0.25 + 1.0, v35 > 0.0) && (!*(v9 + 2532) || *(v9 + 2580)))
    {
      v61 = *(v10 + 8);
      if (!v61)
      {
        v62 = *(*(v39 + 1576) + 28);
        v63 = malloc_type_malloc(16 * byte_277C3F990[v62] * byte_277C36D60[v62] + 23, 0x5F484EBFuLL);
        if (!v63 || (v61 = (v63 + 23) & 0xFFFFFFFFFFFFFFF0, *(v61 - 8) = v63, !v61))
        {
          sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate source_variance_info");
          v61 = 0;
        }

        *(v10 + 8) = v61;
        v39 = v1047;
      }

      *v11 = v61;
    }
  }

  if (*(v9 + 1676) == 2)
  {
    v64 = *(*(v39 + 1576) + 28);
    if (v64 == 12)
    {
      v65 = 1;
    }

    else
    {
      v65 = 4;
    }

    v66 = *(v11 + 1768);
    if (!v66)
    {
LABEL_80:
      if (v64 == 12)
      {
        v67 = 43687;
      }

      else
      {
        v67 = 174679;
      }

      v68 = malloc_type_malloc(v67, 0x5F484EBFuLL);
      if (v68)
      {
        v69 = (v68 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v69 - 8) = v68;
        *(v11 + 1768) = v69;
        if (v69)
        {
LABEL_585:
          *(v11 + 1776) = v65;
          v39 = v1047;
          goto LABEL_586;
        }
      }

      else
      {
        *(v11 + 1768) = 0;
      }

      sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate cpi->td.vt64x64");
      goto LABEL_585;
    }

    if (v65 != *(v11 + 1776))
    {
      free(*(v66 - 8));
      *(v11 + 1768) = 0;
      goto LABEL_80;
    }
  }

LABEL_586:
  v302 = v1109;
  if (!*(v10 + 272) || *(v9 + 2164) && *(v1043 + 912) == 1)
  {
    v303 = *a1;
    if (*(v9 + 2352))
    {
      memcpy(v303 + 75804, &unk_277C3D084, 0x2140uLL);
    }

    if ((*(v9 + 2076) - 0x7FFFFFFF) >= 0x80000002)
    {
      memcpy(v303 + 75160, &unk_277C3F1C4, 0x268uLL);
    }

    v39 = v1047;
    if (*(v9 + 2080) >= 1)
    {
      v303[4736] = xmmword_277C3F42C;
      *&v35 = 0x4000000040;
      *(v303 + 75788) = *(&xmmword_277C3F42C + 12);
    }

    if (*(v9 + 2192) == 2)
    {
      memcpy(v303 + 84316, &unk_277C3F448, 0x540uLL);
      v39 = v1047;
    }
  }

  v304 = v1019;
  v305 = a1;
  v306 = sub_2779F4BE8(v10 + 272, v1118, a1 + 272288, v24, v1109, 1, 0, *(v39 + 3396), v35, v36, v37, v38, *(v1019 + 1404));
  v311 = v1047;
  *(v1047 + 3528) = v306;
  if ((*(v10 + 272) & 0xFD) == 0 || v21)
  {
    v312 = (*(v10 + 808) * *(v10 + 804)) >> 2;
    v313 = *(v1019 + 888);
    if (!v313 || *(v1019 + 896) >= v312)
    {
      goto LABEL_607;
    }

    free(*(v313 - 1));
    *(v1019 + 896) = 0;
    if (v312 < 0 || (v314 = malloc_type_malloc((v312 + 23), 0x5F484EBFuLL)) == 0)
    {
      *(v1019 + 888) = 0;
    }

    else
    {
      v315 = v314;
      v313 = ((v314 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v313 - 1) = v315;
      *(v1019 + 888) = v313;
      if (v313)
      {
LABEL_606:
        *(v1019 + 896) = v312;
LABEL_607:
        bzero(v313, v312);
        v311 = v1047;
        v305 = a1;
        goto LABEL_608;
      }
    }

    sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate cpi->consec_zero_mv");
    v313 = *(v1019 + 888);
    goto LABEL_606;
  }

LABEL_608:
  if (*(v1019 + 1412))
  {
    *(v311 + 3536) = v305 + 34063;
    *(v1019 + 1412) = 0;
  }

  else
  {
    v316 = *(v311 + 3760);
    if (v316)
    {
      v317 = sub_2779F4BE8(v10 + 272, v316, (v305 + 34063), v24, v1109, 1, 0, *(v311 + 3396), v307.n128_f64[0], v308, v309, v310, *(v1019 + 1404));
      v311 = v1047;
      *(v1047 + 3536) = v317;
    }
  }

  if (!*(v9 + 2608))
  {
    goto LABEL_649;
  }

  v318 = *(v10 + 328);
  v319 = 40;
  if (v318 <= 352)
  {
    if (*(v10 + 332) >= 289)
    {
      v319 = 40;
    }

    else
    {
      v319 = 60;
    }
  }

  v320 = *(v10 + 288);
  v321 = *(v311 + 3536);
  v322 = *(v1101 + 116);
  v324 = !v322 || (v323 = *(v1101 + 120)) == 0 || v318 == v322 && *(v10 + 332) == v323;
  if (*(*(v311 + 1576) + 76) || *(v311 + 3444) || *(v311 + 2556) != 1 || *(v311 + 2592) != 3 || *(v311 + 3404) <= 4 || !v324 || *(*v305 + 51016) || *(v311 + 3260) == 1 || *(v10 + 332) * v318 <= 230399)
  {
    v326 = 0;
    v325 = 1;
  }

  else
  {
    v325 = 0;
    v326 = 1;
  }

  *(v1019 + 848) = v326;
  v327 = *(v1019 + 424);
  if (v327 >= 2)
  {
    v320 = *(v1019 + 456);
  }

  if ((v325 & 1) != 0 || (v320 & 7) != 0 || !v321)
  {
    if (!v321)
    {
      goto LABEL_649;
    }

    goto LABEL_648;
  }

  if (v327 == 1 && (*(v1019 + 872) != v318 || *(v1019 + 876) != *(v10 + 332)))
  {
LABEL_648:
    *(v1019 + 872) = v318;
    *(v1019 + 876) = *(v10 + 332);
    goto LABEL_649;
  }

  if (v320 >= 61 && *(v1019 + 536) > 1 && *(v9 + 1260) > v327 && *(v1019 + 416) == v327 - 1 && *(v9 + 1416) < v319)
  {
    *(v1019 + 852) = 0;
    *(v1019 + 868) = 0;
    *(v1019 + 880) = 10;
    goto LABEL_649;
  }

  v307.n128_u64[1] = 0;
  memset(__dst, 0, 80);
  v433 = *(v10 + 804);
  if (v433 >= 1)
  {
    v1096 = v24;
    v434 = 0;
    v435 = 0;
    v436 = 0;
    v437 = *(v311 + 3528);
    v438 = *(v437 + 40);
    v439 = *(v437 + 32);
    v440 = *(v321 + 40);
    v441 = *(v321 + 32);
    v442 = *(v10 + 808);
    do
    {
      if (v442 >= 1)
      {
        v443 = 0;
        v444 = (*(v1019 + 888) + v434);
        do
        {
          v445 = *v444++;
          if (v445 > 2)
          {
            ++v436;
          }

          v443 += 2;
        }

        while (v443 < v442);
      }

      v435 += 2;
      v434 += v442 >> 1;
    }

    while (v435 < v433);
    v446 = 0;
    v447 = (3 * v433 * v442) >> 5;
    while (1)
    {
      if (v442 < 1)
      {
        goto LABEL_853;
      }

      for (n = 0; n < v442; ++n)
      {
        if (((n | v446) & 7) == 0 && v446 < *(v1128 + 804) - 3 && n < v442 - 3)
        {
          v450 = (n >> 1) + ((v442 >> 1) * (v446 >> 1));
          v451 = v450 + (v442 >> 1);
          v452 = *(v1019 + 888);
          v453 = (v452 + v450);
          v454 = *v453;
          v455 = v453[1];
          v456 = (v452 + v451);
          v457 = *v456;
          v458 = v456[1];
          if (v457 < v458)
          {
            v458 = v457;
          }

          if (v455 < v458)
          {
            v458 = v455;
          }

          if (v458 >= v454)
          {
            v458 = v454;
          }

          if (v436 >= v447 && v458 >= 3 && !*(v1029 + 1276))
          {
            LODWORD(__src[0]) = 0;
            v459 = (*(*a1 + 52232))(v438, v439, v440, v441, __src);
            if (v459 <= 0x7CF)
            {
              v460 = &__dst[0].i8[4 * (v459 / 0x64u)];
              goto LABEL_849;
            }

            v460 = &__dst[4].i8[12];
            if (v459 <= 0xBB7)
            {
LABEL_849:
              ++*v460;
            }

            v442 = *(v1128 + 808);
            v311 = v1047;
          }
        }

        v438 += 4;
        v440 += 4;
      }

      LODWORD(v433) = *(v1128 + 804);
LABEL_853:
      v438 += 4 * (v439 - v442);
      v440 += 4 * (v441 - v442);
      if (++v446 >= v433)
      {
        v10 = v1128;
        v318 = *(v1128 + 328);
        v461 = __dst[0].i32[0];
        v462 = __dst[4].u32[3];
        v304 = v1019;
        v9 = v1029;
        v305 = a1;
        v24 = v1096;
        v302 = v1109;
        goto LABEL_872;
      }
    }
  }

  v462 = 0;
  v461 = 0;
LABEL_872:
  v304[218] = v318;
  v304[219] = *(v10 + 332);
  if (v461 < 0xB || v462 <= v461 >> 2)
  {
    v307.n128_u64[0] = *(__dst[0].u64 + 4);
  }

  else
  {
    v461 = 0;
    __dst[1].i32[1] = __dst[1].i32[1] >> 1;
    __dst[1].i32[2] = (3 * __dst[1].i32[2]) >> 1;
    __dst[0].i32[0] = 0;
    v308 = *(__dst[0].i64 + 4);
    v307 = vshlq_u32(*(__dst + 4), xmmword_277BB79A0);
    *(__dst + 4) = v307;
    v462 >>= 1;
    __dst[4].i32[3] = v462;
  }

  v470 = 0;
  v471 = 0;
  v472 = 0;
  v473 = (__dst[4].i32[1] + 2 * __dst[4].i32[2] + (v462 >> 1) + 2) >> 2;
  v474 = v462 >> 2;
  v475 = (v307.n128_u32[0] + v461 + v307.n128_u32[1]) / 3;
  v476 = __dst;
  do
  {
    if (v470 == 19)
    {
      v1134 = v474;
    }

    else if (v470 == 18)
    {
      v1133 = v473;
    }

    else if (v470)
    {
      *(__src + v470) = (v476[-1].i32[3] + 2 * v476->i32[0] + v476->i32[1] + 2) >> 2;
    }

    else
    {
      LODWORD(__src[0]) = v475;
    }

    if (*(__src + v470) > v472)
    {
      v472 = *(__src + v470);
      v471 = v470;
    }

    ++v470;
    v476 = (v476 + 4);
  }

  while (v470 != 20);
  v477 = (3 * v304[214] + 40 * v471) >> 2;
  v304[214] = v477;
  if (v304[213] <= 1u && v477 > v304[216] || (v478 = v304[217] + 1, v304[217] = v478, v478 == v304[220]))
  {
    v304[220] = 30;
    v304[217] = 0;
    v479 = v304[215];
    if (v477 <= 2 * v479)
    {
      if (v477 <= v479)
      {
        v480 = v477 > v479 >> 1;
      }

      else
      {
        v480 = 2;
      }
    }

    else
    {
      v480 = 3;
    }

    v304[213] = v480;
  }

LABEL_649:
  if (v304[106] == 1)
  {
    v328 = *(v9 + 1532);
    if ((*(v311 + 2620) & 1) == 0 && (v328 & 8) != 0)
    {
      v329 = *(v10 + 524);
      if (v329 == -1 || (v330 = v305[v329 + 30754]) == 0 || *(v330 + 1264) != *(v10 + 328) || *(v330 + 1272) != *(v10 + 332))
      {
        v328 &= ~8u;
        *(v9 + 1532) = v328;
      }
    }

    if ((v328 & 0x40) != 0)
    {
      v331 = *(v10 + 536);
      if (v331 == -1 || (v332 = v305[v331 + 30754]) == 0 || *(v332 + 1264) != *(v10 + 328) || *(v332 + 1272) != *(v10 + 332))
      {
        *(v9 + 1532) = v328 & 0xFFFFFFBF;
      }
    }
  }

  if (!*(*v305 + 4 * *(v1101 + 40) + 12668) && (*(v10 + 272) & 0xFD) != 0)
  {
    sub_277BA45FC(v305, v24, v302, 1, v307, v308, v309, v310);
    v311 = v1047;
  }

  v333 = v1131;
  v334 = v311;
  sub_277A80B98(v10 + 272, *(v311 + 2580), *(v311 + 2584), v1131, *(v311 + 2595), *(v311 + 2596));
  sub_2779C5D3C(a1, *(v334 + 3404));
  sub_277A7FF54((a1 + 16), (v10 + 888), *(*(v334 + 1576) + 72));
  sub_277991BD0(a1, v333);
  sub_277BA4F38(a1);
  if (*(v9 + 2592) == 1 && *(v9 + 1276))
  {
    v336 = *a1;
    v337 = *a1 + 44144;
    v338 = *(*a1 + 44288);
    v339 = *(v9 + 1332);
    v340 = *(v1047 + 3260);
    *(*(v1101 + 16) + 112) = 0;
    v341 = v304[104];
    if (v341 >= 1 && ((v342 = *(v1029 + 1532), (v342 & 1) != 0) && (v343 = v336[21429], v336[v343 + 21450] == v304[114]) && v341 > *(v336 + v343 + 85832) || (v342 & 8) != 0 && (v344 = v336[21432], v336[v344 + 21450] == v304[114]) && v341 > *(v336 + v344 + 85832) || (v342 & 0x40) != 0 && (v345 = v336[21435], v336[v345 + 21450] == v304[114]) && v341 > *(v336 + v345 + 85832)))
    {
      v346 = 0;
      v347 = (v333 + *(v1029 + 1388)) >> 1;
    }

    else
    {
      v347 = *(v1029 + 1388);
      v346 = 1;
      if (v340 != 1)
      {
        v347 = (3 * v347 + v333) >> 2;
      }
    }

    LODWORD(v1131) = v347;
    *(v337 + 72) = v347;
    v348 = *v337;
    *(v337 + 192) = *v337;
    *(v337 + 224) = v348;
    *(v1029 + 1396) = 0;
    v349 = (v339 << 9) / *(v10 + 800);
    v350 = sub_277A58CE0(v347, *(*(v1047 + 1576) + 72));
    if (v340 == 1)
    {
      v351 = 1000000;
    }

    else
    {
      v351 = 2000000;
    }

    v352 = v350 * v349 / v351;
    if (v352 > v338)
    {
      v353 = (v338 + v352) * 0.5;
      if (v353 <= 50.0)
      {
        v338 = v353;
      }

      else
      {
        v338 = 50.0;
      }

      *(v337 + 144) = v338;
    }

    v354 = *(v1019 + 428);
    v9 = v1029;
    if (v354 >= 2)
    {
      v355 = v346 ^ 1;
      if (!*(v1019 + 416))
      {
        v355 = 0;
      }

      if ((v355 & 1) == 0)
      {
        v356 = 0;
        v357 = *(v1019 + 760);
        do
        {
          v358 = v357 + 13176 * (v356 + *(v1019 + 416) * v354);
          *(v358 + 8904) = v347;
          v359 = *(v358 + 8832);
          *(v358 + 9024) = v359;
          *(v358 + 9056) = v359;
          *(v358 + 184) = 0;
          *(v358 + 8976) = v338;
          v354 = *(v1019 + 428);
          ++v356;
        }

        while (v356 < v354);
      }
    }

    sub_277A80B98(v10 + 272, *(v1047 + 2580), *(v1047 + 2584), v347, *(v1047 + 2595), *(v1047 + 2596));
    sub_2779C5D3C(a1, *(v1047 + 3404));
    sub_277A7FF54((a1 + 16), (v10 + 888), *(*(v1047 + 1576) + 72));
    sub_277991BD0(a1, v347);
    if ((*(v10 + 272) & 0xFD) == 0 || (*(v10 + 774) & 1) != 0 || *(v10 + 780) == 7)
    {
      sub_277BA4F38(a1);
    }
  }

  if ((*(v10 + 272) & 0xFD) == 0 || !*(v9 + 1428))
  {
    v8 = v1101;
    v360 = (v1101 + 28);
    v335 = 0x100000000;
    *(v1101 + 24) = 0x100000000;
    v362 = v1016;
LABEL_705:
    *(v362 + 160) &= 0xFFFFFFA1;
    if (*v362)
    {
      *(v362 + 1) = 257;
    }

    goto LABEL_707;
  }

  v8 = v1101;
  v360 = (v1101 + 28);
  v361 = v1047;
  v362 = v1016;
  if (!*(v1101 + 28))
  {
    goto LABEL_708;
  }

  if (!*(v1101 + 24))
  {
    goto LABEL_705;
  }

  memcpy(*v1101, *(v1101 + 32), *(v10 + 808) * *(v10 + 804));
  v362 = v1016;
  *v1016 = 65793;
  *(v1016 + 160) |= 0x5Eu;
  v335 = 0x3E003E003E003ELL;
  *(v1016 + 118) = 0x3E003E003E003ELL;
LABEL_707:
  v361 = v1047;
  *v360 = 0;
LABEL_708:
  v109 = a1;
  if (*(v361 + 2592) != 3)
  {
    goto LABEL_811;
  }

  v363 = *(v8 + 16);
  v364 = *(v9 + 1276);
  v365 = *(*a1 + 35636);
  if (v365 <= 1599)
  {
    v366 = v365 / 100;
  }

  else
  {
    v366 = 15;
  }

  if (*(*a1 + 4 * *(v8 + 40) + 1152) >= 6)
  {
    v367 = 6;
  }

  else
  {
    v367 = *(*a1 + 4 * *(v8 + 40) + 1152);
  }

  v368 = *(v10 + 272);
  v369 = *(v10 + 496);
  if (v369 && (*(v10 + 328) != *(v369 + 268) || *(v10 + 332) != *(v369 + 272)) && *(v1019 + 432) == *(v1019 + 424))
  {
    bzero(*(v363 + 40), *(v10 + 808) * *(v10 + 804));
    v362 = v1016;
    v361 = v1047;
    *(v363 + 12) = 0;
    *(v363 + 16) = 0;
    *(v1043 + 912) = 1;
    *(v363 + 104) = 0;
    *(v363 + 112) = 0;
    *(v363 + 4) = 5;
    *(v363 + 80) = 0x3FD0000000000000;
  }

  if (*(v363 + 104))
  {
    ++*(v363 + 112);
    v370 = *(v361 + 1576);
    v371 = sub_277A58CE0(*(v10 + 888), *(v370 + 72));
    *(v363 + 48) = *(v1029 + 1228) << 10;
    *(v363 + 56) = 4 * (v371 * v371);
    if (*(v1047 + 3404) < 8 || *(v10 + 332) * *(v10 + 328) < 230400)
    {
      *(v363 + 48) = xmmword_277BB7270;
    }

    *v1016 = 65793;
    if (*(v8 + 24))
    {
      LODWORD(v372) = *(v1016 + 132) & 0xFFFFFFFE;
      HIDWORD(v372) = (*(v1016 + 132) | 0x100000001uLL) >> 32;
      v373 = *(v1016 + 140) | 1;
      v374 = a1;
    }

    else
    {
      v374 = a1;
      *(a1 + 264740) = 0u;
      *(a1 + 264756) = 0u;
      *(a1 + 264708) = 0u;
      *(a1 + 264724) = 0u;
      *(a1 + 264676) = 0u;
      *(a1 + 264692) = 0u;
      *(a1 + 264644) = 0u;
      *(a1 + 264660) = 0u;
      *(a1 + 264612) = 0u;
      *(a1 + 264628) = 0u;
      v372 = 0x100000000;
      v373 = 1;
    }

    *(v1016 + 132) = v372;
    *(v1016 + 140) = v373;
    v375 = *(v363 + 72);
    v376 = sub_277A4C9EC(v374, *(v10 + 888), v375);
    v377 = v10;
    v378 = v376;
    *(v363 + 96) = v376;
    v379 = *(v377 + 888);
    v380 = v379 + *(v377 + 892) + v376;
    if (v380 >= 0xFF)
    {
      v381 = 255;
    }

    else
    {
      v381 = v380;
    }

    if (v380 >= 0)
    {
      v382 = v381;
    }

    else
    {
      v382 = 0;
    }

    v383 = *v374;
    v8 = v1101;
    v384 = *(v1047 + 3444);
    if (v384 > 1)
    {
      v385 = 1;
    }

    else
    {
      v385 = !v384 && !*(v1019 + 816) && *(v383 + 23172) != 0;
    }

    *(v363 + 36) = sub_277A8A0B8(v382, *(v370 + 72), *(v383 + *(v1101 + 40) + 400), v367, v366, v368, *(v1047 + 2576), v385);
    *(v1016 + 20) = v378;
    v386 = v375 * (*(v363 + 88) * 0.1);
    if (v386 > 4.0)
    {
      v386 = 4.0;
    }

    v387 = sub_277A4C9EC(a1, v379, v386);
    v362 = v1016;
    *(v363 + 100) = v387;
    *(v1016 + 36) = v387;
    v388 = *(v1101 + 16);
    v1095 = *v1101;
    v389 = *(v1101 + 32);
    v390 = *(v1128 + 804);
    v391 = *(v1128 + 808);
    v392 = v391 * v390;
    if (!*(v1101 + 24))
    {
      bzero(v1095, v392);
      v362 = v1016;
      v370 = *(v1047 + 1576);
    }

    v393 = *(v370 + 32);
    v394 = (v391 + v393 - 1) / v393;
    v395 = (v390 + v393 - 1) / v393 * v394;
    v396 = 1374389535 * *v388 * v392;
    v397 = HIDWORD(v396);
    v398 = v396 >> 63;
    v399 = *(v388 + 12);
    v361 = v1047;
    if (v399 >= v395)
    {
      v399 = 0;
      *(v388 + 12) = 0;
    }

    v400 = 0;
    v401 = 0;
    v402 = 0;
    *(v388 + 16) = v399;
    *(v388 + 24) = 0;
    v403 = 2 * v391;
    v404 = 0x7FFFFFFFFFFFFFFFLL;
    v405 = v398 + (v397 >> 5);
    v1086 = v390;
    v1081 = v394;
    v1077 = v395;
    v1073 = v405;
    while (1)
    {
      v406 = *(*(v361 + 1576) + 32);
      v407 = v406 * (v399 / v394);
      v408 = v399 % v394 * v406;
      v409 = v391 - v408;
      if (v391 - v408 >= v406)
      {
        v410 = *(*(v361 + 1576) + 32);
      }

      else
      {
        v410 = v391 - v408;
      }

      if (v390 - v407 >= v406)
      {
        v411 = v406;
      }

      else
      {
        v411 = (v390 - v407);
      }

      if (*(v388 + 116))
      {
        if (*(v1029 + 1260) >= 31 && *(v388 + 112) >= 31)
        {
          v412 = *(v1019 + 1216);
          if (v412)
          {
            if (*(v1019 + 416) == *(v1019 + 424) - 1)
            {
              v401 = *(v412 + 8 * v399);
              if (*(v1128 + 332) * *(v1128 + 328) >= 230400)
              {
                v404 = 0x8000;
              }

              else
              {
                v404 = 24576;
              }

              if (*(v1019 + 428) <= 1)
              {
                v402 = 0x2000;
              }

              else
              {
                if (*(v1019 + 420))
                {
                  v402 = 0x2000;
                }

                else
                {
                  v402 = 0x8000;
                }

                if (!*(v1019 + 420))
                {
                  v404 *= 16;
                }
              }
            }
          }
        }
      }

      if (v411 < 1)
      {
        break;
      }

      v413 = 0;
      v414 = 0;
      v415 = v410;
      v416 = v408 + v407 * v391;
      v417 = v389 + v416;
      v418 = v416;
      do
      {
        if (v409 >= 1)
        {
          v419 = 0;
          do
          {
            v420 = *(v388 + 40) + v418;
            v421 = *(v420 + v419);
            if (*(v420 + v419))
            {
              v422 = v401 >= v402;
            }

            else
            {
              v422 = 0;
            }

            if (v422 || *(v8 + 24) && *(v417 + v419))
            {
              if (v421 < 0)
              {
                *(v420 + v419) = v421 + 1;
              }
            }

            else
            {
              v414 += 4;
            }

            v419 += 2;
          }

          while (v419 < v410);
        }

        v413 += 2;
        v417 += v403;
        v418 += v403;
      }

      while (v413 < v411);
      v423 = v410 * v411;
      if (v414 >= (v410 * v411) >> 1 && v401 < v404)
      {
        v1111 = v404;
        v1121 = v399;
        v426 = v389;
        v427 = &v1095[v416];
        do
        {
          memset(v427, 1, v415);
          v427 += v391;
          --v411;
        }

        while (v411);
        v400 = *(v388 + 24);
        v361 = v1047;
        v362 = v1016;
        v389 = v426;
        v390 = v1086;
        v394 = v1081;
        v395 = v1077;
        v399 = v1121;
        v404 = v1111;
        v405 = v1073;
LABEL_803:
        v400 += v423;
        *(v388 + 24) = v400;
        goto LABEL_804;
      }

      v400 = *(v388 + 24);
LABEL_804:
      if (v399 + 1 == v395)
      {
        v399 = 0;
      }

      else
      {
        ++v399;
      }

      v8 = v1101;
      if (v400 >= v405 || v399 == *(v388 + 12))
      {
        *(v388 + 12) = v399;
        v9 = v1029;
        v10 = v1128;
        v109 = a1;
        if (v400 || *(v1101 + 24))
        {
          goto LABEL_811;
        }

        *v362 = 0;
        goto LABEL_856;
      }
    }

    v423 = v410 * v411;
    if (v410 * v411 > 1 || v401 >= v404)
    {
      goto LABEL_804;
    }

    goto LABEL_803;
  }

  v9 = v1029;
  if (!*(v8 + 24) || *(v1029 + 1428) == 100)
  {
    bzero(*v8, *(v10 + 808) * *(v10 + 804));
    v362 = v1016;
    v361 = v1047;
    *v1016 = 0;
  }

  v109 = a1;
  if ((*(v10 + 272) & 0xFD) == 0 || v364 || *(*a1 + 85841) == 1)
  {
    v335 = 0;
    *(v363 + 12) = 0;
    *(v363 + 112) = 0;
    *(v363 + 28) = 0;
  }

LABEL_811:
  if (*v362)
  {
    v7 = v1019;
    if (*(v362 + 2) || (v428 = *(v10 + 496)) == 0)
    {
      sub_277AFBBBC(v362);
      v362 = v1016;
      v361 = v1047;
    }

    else
    {
      v429 = 0;
      v430 = v428 + 92;
      v431 = &v109[16538].i8[4];
      do
      {
        v432 = 0;
        v109[16546].i32[v429 + 1] = *(v428 + 220 + 4 * v429);
        do
        {
          *&v431[v432] = *(v430 + v432);
          v432 += 2;
        }

        while (v432 != 16);
        ++v429;
        v431 += 16;
        v430 += 16;
      }

      while (v429 != 8);
      *(v362 + 168) = *(v428 + 256);
      *(v362 + 164) = *(v428 + 252);
      *v362 = *(v428 + 88);
    }
  }

  else
  {
LABEL_856:
    v335 = 0;
    *(v362 + 156) = 0u;
    *(v362 + 128) = 0u;
    *(v362 + 144) = 0u;
    *(v362 + 96) = 0u;
    *(v362 + 112) = 0u;
    *(v362 + 64) = 0u;
    *(v362 + 80) = 0u;
    *(v362 + 32) = 0u;
    *(v362 + 48) = 0u;
    *v362 = 0u;
    *(v362 + 16) = 0u;
    v7 = v1019;
  }

  v463 = 0;
  v464 = *(v10 + 504);
  v465 = &v109[16538].i8[4];
  v466 = v464 + 92;
  do
  {
    v467 = 0;
    *(v464 + 220 + 4 * v463) = v109[16546].i32[v463 + 1];
    do
    {
      *(v466 + v467) = *&v465[v467];
      v467 += 2;
    }

    while (v467 != 16);
    ++v463;
    v466 += 16;
    v465 += 16;
  }

  while (v463 != 8);
  *(v464 + 256) = *(v362 + 168);
  *(v464 + 252) = *(v362 + 164);
  *(v464 + 88) = *v362;
  if (*(v109->i64[0] + 23472) && *(v361 + 3444) != 1 && *(v7 + 816) != 1 && *(v10 + 752) && (*(v7 + 1152) & 1) == 0 && *(v9 + 2760))
  {
    v468 = *(v361 + 1576);
    if (*v1043)
    {
      v469 = *(v361 + 2392);
      if (*(v9 + 1504) == v469)
      {
        v469 = *(v9 + 1504);
        if (*(v9 + 1508) == *(v361 + 2396))
        {
LABEL_906:
          v109 = a1;
          sub_277A48DA4(*(v361 + 3528), a1 + 272720, 1);
          sub_277A48E78(*(v1047 + 3528), a1 + 272720, 1);
          sub_277A48F50(*(v1047 + 3528), a1 + 272720, 1);
          goto LABEL_907;
        }
      }
    }

    else
    {
      v469 = *(v361 + 2392);
    }

    v482 = *(v361 + 2396);
    v483 = *(v468 + 96);
    v484 = *(v468 + 100);
    v485 = *(v468 + 76);
    v486 = *(v361 + 3396);
    v487 = *(v1128 + 784);
    v488 = sub_27797ABB4(a1 + 272720);
    v8 = v1101;
    v489 = v484;
    v9 = v1029;
    v490 = v486;
    v10 = v1128;
    v494 = sub_27797AC44(a1 + 272720, v469, v482, v483, v489, v485, v490, v487, v488, v491, v492, v493, 0, 0);
    v361 = v1047;
    if (v494)
    {
      sub_2779F5C10(*(v1128 + 320), 2, "Failed to allocate scaled buffer");
      v361 = v1047;
    }

    goto LABEL_906;
  }

LABEL_907:
  if ((*(v10 + 272) & 0xFD) != 0)
  {
    sub_277AE8CB0(v109, v1131, *&v335);
  }

  sub_277A61248(v109);
  v495 = *(v9 + 1460);
  if (v495)
  {
    v97 = v1047;
    if ((*(v10 + 272) & 0xFD) != 0)
    {
LABEL_911:
      if (*(v97 + 2556) == 1 && *(v97 + 3472) == 1 && *(v7 + 424) == 1 && !v495 && *(v7 + 428) == 1 && !*(v109->i64[0] + 85776) && *(v9 + 2756))
      {
        sub_277A5C2A0(v109);
        v97 = v1047;
      }
    }
  }

  else
  {
    v97 = v1047;
    if ((*(v10 + 272) & 0xFD) != 0)
    {
      v496 = *(v109->i64[0] + 51016);
      if (!v496 || !*(*(v7 + 760) + 13176 * *(v7 + 420) + 13168) && *(v7 + 416) == *(v7 + 424) - 1)
      {
        v497 = 100 * *(v9 + 1420) / (*(v10 + 808) * *(v10 + 804));
        v498 = *(v9 + 1416);
        v499 = 3 * v498 + v497;
        if (v499 < 0 != __OFADD__(3 * v498, v497))
        {
          v499 += 3;
        }

        v500 = v499 >> 2;
        if (v498)
        {
          v497 = v500;
        }

        *(v9 + 1416) = v497;
        if (v496)
        {
          v501 = *(v7 + 424);
          if (v501 >= 2)
          {
            v502 = *(v7 + 416);
            if (v502 == v501 - 1)
            {
              v503 = *(v7 + 428);
              v504 = *(v7 + 420);
              v505 = (v502 + 3) & 0x1FFFFFFFCLL;
              v93 = vdupq_n_s64(v502 - 1);
              v506 = 13176 * v504;
              v507 = v506 + 39528 * v503;
              v508 = *(v7 + 760) + 204;
              v509 = 52704 * v503;
              v510 = v506 + 26352 * v503;
              v511 = 13176 * (v503 + v504);
              v94 = xmmword_277BB7090;
              v95 = xmmword_277BB70A0;
              v96 = vdupq_n_s64(4uLL);
              do
              {
                v512 = vmovn_s64(vcgeq_u64(v93, v95));
                if (vuzp1_s16(v512, *v93.i8).u8[0])
                {
                  *(v508 + 13176 * v504) = v497;
                }

                if (vuzp1_s16(v512, *&v93).i8[2])
                {
                  *(v508 + v511) = v497;
                }

                v169 = vcgeq_u64(v93, v94);
                *v169.i8 = vmovn_s64(v169);
                if (vuzp1_s16(*&v93, *&v169).i32[1])
                {
                  *(v508 + v510) = v497;
                }

                *v169.i8 = vuzp1_s16(*v93.i8, *v169.i8);
                if (v169.i8[6])
                {
                  *(v508 + v507) = v497;
                }

                v94 = vaddq_s64(v94, v96);
                v95 = vaddq_s64(v95, v96);
                v508 += v509;
                v505 -= 4;
              }

              while (v505);
            }
          }
        }
      }

      goto LABEL_911;
    }
  }

  if (*(v10 + 288) >= 2u && !*(v109->i64[0] + 51016))
  {
    if (*(v97 + 3592))
    {
      if (*(v97 + 3808))
      {
        if (*(v97 + 3568) == *(v97 + 3784) && *(v97 + 3576) == *(v97 + 3792))
        {
          v535 = *(v97 + 3544);
          if (*(v10 + 328) != *(v535 + 16) || *(v10 + 332) != *(v535 + 24))
          {
            *(v7 + 1412) = 1;
            sub_277A48DA4((a1 + 272288), a1 + 272504, 1);
            sub_277A48E78((a1 + 272288), a1 + 272504, 1);
            v109 = a1;
            sub_277A48F50((a1 + 272288), a1 + 272504, 1);
            v97 = v1047;
          }
        }
      }
    }
  }

LABEL_943:
  v513 = *(v97 + 1576);
  if (*(v109->i64[0] + 44132) && *(v9 + 1256) == 1)
  {
    v514 = *(v97 + 3528);
    v515 = *(v10 + 504);
    v516 = *(v514 + 40);
    v517 = *(v514 + 32);
    v518 = *(v515 + 1288);
    v519 = *(v515 + 1280);
    v520 = *(v514 + 16);
    v521 = *(v514 + 24);
    if (*(v513 + 76))
    {
      v522 = sub_277A2BAE0(v516, v517, v518, v519, v520, v521, *v93.i64, v94, v95, v96, v169);
    }

    else
    {
      v522 = sub_277A2B70C(v516, v517, v518, v519, v520, v521);
    }

    *(v1043 + 1352) = v522;
    v97 = v1047;
  }

  v1062 = (v10 + 272);
  v523 = *(v10 + 504);
  *(v523 + 1404) = *(v513 + 80);
  *(v523 + 1412) = *(v513 + 88);
  *(v523 + 1416) = *(v513 + 77);
  *(v523 + 1420) = *(v513 + 104);
  v999 = v513;
  *(v523 + 1424) = *(v513 + 92);
  v93.i64[0] = *(v10 + 336);
  *(v523 + 1428) = v93.i64[0];
  v524 = *(v7 + 88);
  v525 = v524 == 0;
  if (!v524)
  {
    *(v1016 + 4032) = 0;
    *(v97 + 600) = 0;
    v93 = 1uLL;
    *(v97 + 468) = 1;
    *(v97 + 536) = 0;
    *(v1016 + 4064) = 0;
    *v97 = 0;
    *(v97 + 64) = 0;
  }

  if (*(v10 + 768))
  {
    goto LABEL_1491;
  }

  v526 = *(v1017 + 32);
  v527 = *(v97 + 1576);
  if (v527[77])
  {
    v528 = 1;
  }

  else
  {
    v528 = 3;
  }

  *(a1 + 102984) = *v9;
  if (*(v10 + 771))
  {
    v525 = 0;
    v529 = 1;
    v530 = v1019;
    goto LABEL_960;
  }

  v530 = v1019;
  if (*(v97 + 2180))
  {
    v525 = 0;
LABEL_959:
    v529 = 1;
    goto LABEL_960;
  }

  if (!v527[67])
  {
    goto LABEL_959;
  }

  if (*(v8 + 24))
  {
    v529 = *(v9 + 1428) > *(v9 + 2780);
  }

  else
  {
    v529 = 0;
  }

LABEL_960:
  v531 = !v527[68] || (*(v10 + 772) & 1) != 0 || *(v97 + 2180) != 0;
  if (*(*a1 + 85780))
  {
    v532 = 12;
LABEL_966:
    HIDWORD(v1004) = v532;
    goto LABEL_980;
  }

  if (*(v97 + 2440) == 1)
  {
    v533 = *(*a1 + 23472) == 0;
    if (*(*a1 + 23472) == 0 && v531)
    {
      v533 = 2;
    }

    HIDWORD(v1004) = v533;
    if (*(*a1 + 23472) == 0 && v531 && *(v10 + 328) == *(v10 + 344))
    {
      if (v529)
      {
        if (v525)
        {
          v532 = 8;
        }

        else
        {
          v532 = 0;
        }
      }

      else if (v525 && *(v9 + 2456) == 6)
      {
        v532 = 12;
      }

      else
      {
        v532 = 4;
      }

      goto LABEL_966;
    }
  }

  else
  {
    HIDWORD(v1004) = 0;
  }

LABEL_980:
  if (!v525)
  {
    goto LABEL_1000;
  }

  v93 = sub_2779834A4(*(v97 + 3528), a1, *(v9 + 2448), v93, *v94.i64, *v95.i64, *v96.i8);
  if (*(v1016 + 4032))
  {
    v97 = v1047;
    if (HIDWORD(v1004) > 7)
    {
      goto LABEL_1000;
    }
  }

  else
  {
    v97 = v1047;
    if (!*(v1016 + 4036) || HIDWORD(v1004) >= 8)
    {
      goto LABEL_1000;
    }
  }

  if (*(v9 + 2308) < 1 || *(v9 + 2304) < 1)
  {
    v534 = 0;
  }

  else if (*(v9 + 2448) == 3)
  {
    v534 = 2;
  }

  else
  {
    v534 = 1;
  }

  sub_2779D132C(*(v10 + 504) + 1248, v1062, a1 + 86480, 0, v528, 0, *(v1017 + 64), v526, a1 + 634808, v534);
  v97 = v1047;
LABEL_1000:
  v1123 = a1 + 86480;
  if (!v531)
  {
    sub_2779F8D3C(*(v10 + 504) + 1248, v1062, 0);
    v97 = v1047;
  }

  if (!v529)
  {
    v1067 = *(v1017 + 40);
    if (*(v97 + 2652) == 2 && *(*a1 + 85780))
    {
      *(v97 + 600) = 0;
      v93.i64[0] = 1;
      *(v97 + 468) = 1;
      *(v97 + 536) = 0;
LABEL_1008:
      v536 = v1067;
      goto LABEL_1185;
    }

    if (*(v9 + 1460))
    {
      sub_2779A48DC(v1062, 0, 0, *v93.i64);
      v97 = v1047;
      goto LABEL_1008;
    }

    v537 = *(v9 + 2456);
    v538 = *(v10 + 888);
    if (v537 == 6)
    {
      v539 = *(v9 + 2808);
      if (v539 <= *(v9 + 1392) + 5)
      {
        v539 = *(v9 + 1392) + 5;
      }

      v540 = v538 > v539 && *(v97 + 3260) == 1;
      v536 = *(v1017 + 40);
      sub_2779A48DC(v1062, *(v9 + 2688), v540, *v93.i64);
      goto LABEL_1184;
    }

    v1059 = (v538 >> 6) + 3;
    v541 = *(*(v97 + 1576) + 77);
    v542 = *(v1043 + 576);
    if (!v542)
    {
      v543 = malloc_type_malloc(0x1F3FuLL, 0x5F484EBFuLL);
      if (v543)
      {
        v542 = (v543 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v542 - 8) = v543;
        *(v1043 + 576) = v542;
        v97 = v1047;
        if (v542)
        {
          goto LABEL_1026;
        }
      }

      else
      {
        *(v1043 + 576) = 0;
      }

      sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate cpi->cdef_search_ctx");
      v97 = v1047;
      v542 = *(v1043 + 576);
    }

LABEL_1026:
    v1113 = v541;
    v1070 = v531;
    v1083 = v537 - 1;
    v544 = *(v10 + 504);
    v545 = *(v97 + 1576);
    if (*(v545 + 77))
    {
      v546 = 1;
    }

    else
    {
      v546 = 3;
    }

    *v542 = *(v97 + 3528);
    *(v542 + 8) = a1 + 246136;
    v547 = *(v10 + 804);
    v548 = v547 + 15;
    v221 = v547 < -15;
    v549 = v547 + 30;
    if (!v221)
    {
      v549 = v548;
    }

    *(v542 + 7936) = v549 >> 4;
    v550 = *(v10 + 808);
    v551 = v550 + 15;
    v221 = v550 < -15;
    v552 = v550 + 30;
    if (!v221)
    {
      v552 = v551;
    }

    *(v542 + 7940) = v552 >> 4;
    *(v542 + 7860) = *(v545 + 72) - 8;
    *(v542 + 7864) = (*(v10 + 888) >> 6) + 3;
    v553 = 86496;
    v1102 = dword_277BC0DF0[v537];
    *(v542 + 7856) = v1102;
    *(v542 + 7872) = v546;
    *(v542 + 7868) = v537;
    *(v542 + 7968) = 0;
    *(v542 + 7972) = *(v545 + 76) != 0;
    v554 = v542;
    sub_27798E348(a1 + 86496, *(v545 + 28), v544 + 1248, 0, 0, 0, v546);
    v555 = 86504;
    v556 = 16;
    v557 = 7924;
    do
    {
      v558 = (a1 + v555);
      v559 = *(a1 + v555 - 4);
      v150 = v559 == 0;
      v560 = v559 == 0;
      v561 = (v554 + v557);
      *(v561 - 6) = v559;
      v562 = *(a1 + v555);
      *(v561 - 3) = v562;
      v563 = 2 * v560;
      if (v150)
      {
        v564 = 3;
      }

      else
      {
        v564 = 1;
      }

      if (v562)
      {
        v565 = v563;
      }

      else
      {
        v565 = v564;
      }

      *v561 = v565;
      *(v561 - 12) = 2 - *(v558 - 1);
      *(v561 - 9) = 2 - *v558;
      memcpy((v554 + v556), (a1 + v553), 0xA30uLL);
      v556 += 2608;
      v557 += 4;
      v555 += 2608;
      v553 += 2608;
      --v546;
    }

    while (v546);
    if (*(*(v1047 + 1576) + 76))
    {
      v566 = sub_277AA4008;
    }

    else
    {
      v566 = sub_277AA3FF0;
    }

    v567 = sub_2779A4F6C;
    if (!*(*(v1047 + 1576) + 76))
    {
      v567 = sub_2779A50FC;
    }

    *(v554 + 7840) = v566;
    *(v554 + 7848) = v567;
    v568 = *(v554 + 7936);
    v569 = *(v554 + 7940);
    v570 = 4 * v569 * v568;
    v571 = v554;
    if (v570 <= 0x1FFFFFFE9 && (v572 = malloc_type_malloc(v570 + 23, 0x5F484EBFuLL), v571 = v554, v572))
    {
      v1056 = (v554 + 7960);
      v573 = (v572 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v573 - 8) = v572;
      *(v554 + 7960) = v573;
      v574 = v1128;
      v575 = v1017;
      if (v573)
      {
LABEL_1052:
        *(v571 + 7968) = 0;
        v576 = (v568 * v569) << 9;
        if (v576 <= 0x1FFFFFFE9 && (v577 = v576 | 0x17, v578 = malloc_type_malloc(v576 | 0x17, 0x5F484EBFuLL), v571 = v554, v578))
        {
          v579 = (v578 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v579 - 8) = v578;
          *(v554 + 7944) = v579;
          if (v579)
          {
            goto LABEL_1058;
          }

          sub_2779F5C10(*(v574 + 320), 2, "Failed to allocate cdef_search_ctx->mse[0]");
        }

        else
        {
          *(v571 + 7944) = 0;
          sub_2779F5C10(*(v574 + 320), 2, "Failed to allocate cdef_search_ctx->mse[0]");
          if (v576 > 0x1FFFFFFE9)
          {
            goto LABEL_1061;
          }
        }

        v577 = v576 | 0x17;
LABEL_1058:
        v581 = malloc_type_malloc(v577, 0x5F484EBFuLL);
        if (v581)
        {
          v586 = (v581 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v586 - 8) = v581;
          v580 = v554;
          *(v554 + 7952) = v586;
          if (v586)
          {
LABEL_1063:
            if (*(v575 + 8) <= 1)
            {
              v603 = *(v580 + 7936);
              v602 = v1047;
              if (v603 >= 1)
              {
                v604 = 0;
                v605 = 0;
                v606 = *(v580 + 7940);
                do
                {
                  if (v606 >= 1)
                  {
                    v607 = 0;
                    v608 = 0;
                    v609 = 0;
                    v610 = 16 * v605;
                    do
                    {
                      v611 = *(v580 + 8);
                      v612 = *(v611 + 12) - v610;
                      if (v612 >= 16)
                      {
                        v613 = 16;
                      }

                      else
                      {
                        v613 = *(v611 + 12) - v610;
                      }

                      if (v612 >= 1)
                      {
                        v614 = 0;
                        v615 = 0;
                        v616 = *(v611 + 48);
                        v617 = *(v611 + 60);
                        v618 = *(v616 + (v609 << 7) + 8 * v617 * v610);
                        v619 = *(v611 + 16);
                        v620 = v619 - 16 * v609;
                        v621 = v616 + v607 + 8 * v604 * v617;
                        if (v613 <= 1)
                        {
                          v622 = 1;
                        }

                        else
                        {
                          v622 = v613;
                        }

                        v623 = v619 + v608;
                        if (v623 >= 16)
                        {
                          v623 = 16;
                        }

                        if (v623 <= 1)
                        {
                          v623 = 1;
                        }

                        v624 = 8 * v623;
                        v625 = 8 * v617;
                        while (v620 < 1)
                        {
LABEL_1105:
                          v614 = ++v615 >= v613;
                          v621 += v625;
                          if (v615 == v622)
                          {
                            goto LABEL_1106;
                          }
                        }

                        v626 = 0;
                        while (*(*(v621 + v626) + 144))
                        {
                          v626 += 8;
                          if (v624 == v626)
                          {
                            goto LABEL_1105;
                          }
                        }

LABEL_1106:
                        if (!v614 && ((v609 & 1) == 0 || (*v618 & 0xFE) != 0xE) && ((v605 & 1) == 0 || ((*v618 - 13) & 0xFD) != 0))
                        {
                          sub_2779A3CE0(v554, v605, v609, *(v554 + 7968), v582, v583, v584, v585, v988, v989, v990, v991, v992, v993, v994, v995, v997, v999, v1000, v1002, v1003, v1004, v1005, v1007, v1008, v1010, v1011, v1013, v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1022, v1023, v1024, v1025, v1027, v1029, v1030, v1032, SHIDWORD(v1032), v1034, SHIDWORD(v1034), v1035, v1036, v1037, v1039);
                          v580 = v554;
                          v602 = v1047;
                          ++*(v554 + 7968);
                          v606 = *(v554 + 7940);
                        }
                      }

                      ++v609;
                      v608 -= 16;
                      v607 += 128;
                    }

                    while (v609 < v606);
                    v603 = *(v580 + 7936);
                  }

                  v605 = (v605 + 1);
                  v604 += 16;
                }

                while (v605 < v603);
              }
            }

            else
            {
              v587 = *(v575 + 36);
              if (*v1019)
              {
                pthread_mutex_init(*v1019, 0);
              }

              *(a1 + 643397) = 0;
              *(a1 + 643392) = 0;
              if (v587 >= 1)
              {
                v588 = *(v575 + 64);
                v589 = v587 + 1;
                v590 = (*(v575 + 72) + 456 * v587 - 456);
                v591 = (v588 + 56 * v587 - 16);
                do
                {
                  *v590 = a1;
                  *(v591 - 2) = sub_277AFB354;
                  *(v591 - 1) = v590;
                  *v591 = v1019;
                  v591 -= 7;
                  --v589;
                  v590 -= 57;
                }

                while (v589 > 1);
                v592 = v587 - 1;
                v593 = v588 + 56 * (v587 - 1);
                *(v593 + 48) = 0;
                if (v587 != 1)
                {
                  v594 = 56 * v587 - 64;
                  do
                  {
                    sub_277985E48(v593, 2);
                    v595 = *(v575 + 64);
                    *(v595 + v594) = 0;
                    v594 -= 56;
                    --v592;
                    v593 = v595 + 56 * v592;
                  }

                  while (v592);
                  v593 = v595 + v594 + 8;
                }

                v596 = *(v593 + 24);
                if (v596)
                {
                  *(v593 + 48) |= v596(*(v593 + 32), *(v593 + 40)) == 0;
                }
              }

              v597 = *(v575 + 64);
              v598 = *(v597 + 48);
              memset(__dst, 0, 404);
              if (v598)
              {
                memcpy(__dst, (*(v597 + 32) + 24), 0x194uLL);
              }

              if (v587 >= 2)
              {
                v599 = v587 + 1;
                v600 = 56 * v587;
                do
                {
                  v601 = *(v575 + 64) + v600;
                  sub_277985E48((v601 - 56), 1);
                  if (*(v601 - 8))
                  {
                    memcpy(__dst, (*(v601 - 24) + 24), 0x194uLL);
                    v598 = 1;
                  }

                  --v599;
                  v600 -= 56;
                }

                while (v599 > 2);
              }

              if (v598)
              {
                sub_2779F5C78(*(v574 + 320), __dst);
              }

              *(*(*(v597 + 32) + 8) + 11152) = *(v574 + 320);
              v602 = v1047;
              v580 = v554;
            }

            v1074 = 0;
            v627 = 0;
            v628 = *(v580 + 7968);
            v629 = *(v580 + 7944);
            v630 = *(v580 + 7952);
            if (v1113)
            {
              v631 = 1;
            }

            else
            {
              v631 = v1102;
            }

            v632 = v631 * v1102 - 1;
            v150 = v632 == 0;
            v633 = __clz(v632) ^ 0x1F;
            if (v150)
            {
              v634 = 0;
            }

            else
            {
              v634 = v633 + 1;
            }

            if (v634 >= 3)
            {
              v634 = 3;
            }

            v1087 = v634;
            v1078 = (v602 + 472);
            v1064 = (v602 + 536);
            v1097 = *(a1 + 102984);
            v1103 = -1;
            do
            {
              memset(__dst, 0, 64);
              v635 = 1 << v627;
              memset(__src, 0, sizeof(__src));
              if (v1113)
              {
                v636 = 0;
                do
                {
                  v637 = sub_2779A4E00(__dst[0].i32, v636++, v629, v628, v537);
                }

                while (v635 != v636);
                if (v1083 >= 5)
                {
                  v638 = 4 << v627;
                  v639 = v635 - 1;
                  v640 = 4 * (v635 - 1);
                  do
                  {
                    if (v627)
                    {
                      memmove(__dst, __dst[0].i64 + 4, v640);
                    }

                    v637 = sub_2779A4E00(__dst[0].i32, v639, v629, v628, v537);
                    --v638;
                  }

                  while (v638);
                }

                v641 = 1;
              }

              else
              {
                v642 = 0;
                do
                {
                  sub_2779A4C30();
                  ++v642;
                }

                while (v635 != v642);
                v643 = 4 << v627;
                v644 = v635 - 1;
                do
                {
                  if (v627)
                  {
                    memmove(__dst, __dst[0].i64 + 4, 4 * v644);
                    memmove(__src, __src + 4, 4 * v644);
                  }

                  v637 = sub_2779A4C30();
                  --v643;
                }

                while (v643);
                v641 = 2;
              }

              v645 = ((v1097 * ((v627 * v628 + v641 * (6 << v627)) << 9)) >> 9) + (v637 << 11);
              if (v645 < v1103)
              {
                memcpy(v1078, __dst, (4 << v627));
                if (!v1113)
                {
                  memcpy(v1064, __src, (4 << v627));
                }

                v1103 = v645;
                v1074 = v627;
              }

              v150 = v627++ == v1087;
              v10 = v1128;
            }

            while (!v150);
            v646 = v554;
            *(v1047 + 600) = v1074;
            v647 = 1 << v1074;
            *(v1047 + 468) = 1 << v1074;
            v530 = v1019;
            if (v628 >= 1)
            {
              v648 = 0;
              while (1)
              {
                if (v647 < 1)
                {
                  v654 = 0;
                }

                else
                {
                  v649 = 0;
                  v650 = 0;
                  v651 = -1;
                  v652 = v1064;
                  do
                  {
                    v653 = v629[64 * v648 + *(v652 - 16)];
                    if (!v1113)
                    {
                      v653 += *(v630 + (v648 << 9) + 8 * *v652);
                    }

                    if (v653 < v651)
                    {
                      v651 = v653;
                      v650 = v649;
                    }

                    ++v649;
                    ++v652;
                  }

                  while (v647 != v649);
                  v654 = (v650 & 0xF) << 11;
                }

                v655 = *(*(v1128 + 840) + 8 * *(*v1056 + 4 * v648));
                *(v655 + 167) = *(v655 + 167) & 0x87FF | v654;
                if (++v648 == v628)
                {
                  break;
                }

                v647 = *(v1047 + 468);
              }
            }

            v9 = v1029;
            v531 = v1070;
            v536 = v1067;
            v656 = v1078;
            if (v1083 > 4 || (v657 = *(v1047 + 468), v657 < 1))
            {
LABEL_1183:
              *(v1047 + 464) = v1059;
              sub_2779A4878(v646);
LABEL_1184:
              v97 = v1047;
LABEL_1185:
              if ((v1004 & 0x400000000) == 0)
              {
                v668 = *(v97 + 1576);
                if (v536 <= 1)
                {
                  if (v668[77])
                  {
                    v672 = 1;
                  }

                  else
                  {
                    v672 = 3;
                  }

                  v673 = *(v10 + 804);
                  sub_27798E348(a1 + 86496, v668[28], *(v10 + 504) + 1248, 0, 0, 0, v672);
                  v97 = v1047;
                  if (v673 >= 1)
                  {
                    v674 = 0;
                    v675 = (v673 + 15) >> 4;
                    do
                    {
                      sub_277AA4334(v1062, v1123, a1 + 269112, a1 + 269088, *(v97 + 400), v674, sub_277AA4148, 0);
                      v97 = v1047;
                      ++v674;
                    }

                    while (v675 != v674);
                  }
                }

                else
                {
                  v669 = v531;
                  if (*(v1017 + 40) >= 2)
                  {
                    v671 = v1062;
                    v670 = v668[67] && (*(v10 + 771) & 1) == 0 && !*(v97 + 2180) && !*(*a1 + 85780) && (!v668[68] || *(v10 + 772) == 1) && *(v10 + 328) == *(v10 + 344);
                  }

                  else
                  {
                    v670 = 0;
                    v671 = v1062;
                  }

                  v676 = *(v530 + 32);
                  v677 = *(v1017 + 64);
                  if (v668[77])
                  {
                    v678 = 1;
                  }

                  else
                  {
                    v678 = 3;
                  }

                  sub_27798E348(a1 + 86496, v668[28], *(v10 + 504) + 1248, 0, 0, 0, v678);
                  *(a1 + 643397) = 0;
                  *(a1 + 643392) = 0;
                  v679 = *(*(v1047 + 1576) + 77);
                  v680 = (v1047 + 352);
                  *(v676 + 40) = *(v1047 + 400);
                  v681 = (v676 + 16);
                  if (v679)
                  {
                    v682 = 1;
                  }

                  else
                  {
                    v682 = 3;
                  }

                  v683 = v682;
                  do
                  {
                    v684 = *v680++;
                    *v681++ = v684;
                    --v683;
                  }

                  while (v683);
                  v685 = v676 + 488 * v536 - 440;
                  v686 = v536;
                  do
                  {
                    v687 = v676 + 488 * (v686 - 1);
                    *v687 = v671;
                    *(v687 + 8) = v1123;
                    *(v687 + 72) = sub_2779D240C;
                    *(v687 + 80) = v670;
                    v688 = (v1047 + 376);
                    v689 = v685;
                    v690 = v682;
                    do
                    {
                      v691 = *v688++;
                      *v689++ = v691;
                      --v690;
                    }

                    while (v690);
                    v692 = (v677 + 56 * (v686 - 1));
                    v692[3] = sub_2779D26C4;
                    v692[4] = a1 + 643376;
                    v692[5] = v687;
                    v685 -= 488;
                    v221 = v686-- <= 1;
                  }

                  while (!v221);
                  v693 = v536 - 1;
                  v694 = (v677 + 56 * (v536 - 1));
                  v694[12] = 0;
                  do
                  {
                    sub_277985E48(v694, 2);
                    *(v694 - 2) = 0;
                    v694 -= 14;
                    --v693;
                  }

                  while (v693);
                  v695 = *(v677 + 24);
                  v531 = v669;
                  if (v695)
                  {
                    v696 = *(v677 + 48) | (v695(*(v677 + 32), *(v677 + 40)) == 0);
                    *(v677 + 48) = v696;
                  }

                  else
                  {
                    v696 = *(v677 + 48);
                  }

                  v697 = v696 == 0;
                  memset(__dst, 0, 404);
                  if (v696)
                  {
                    memcpy(__dst, (*(v677 + 40) + 84), 0x194uLL);
                  }

                  v698 = v677 - 56;
LABEL_1222:
                  v699 = v698 + 56 * v536;
                  do
                  {
                    v700 = v536 - 1;
                    sub_277985E48(v699, 1);
                    if (*(v699 + 48))
                    {
                      memcpy(__dst, (*(v699 + 40) + 84), 0x194uLL);
                      v697 = 0;
                      v221 = v536-- > 2;
                      if (v221)
                      {
                        goto LABEL_1222;
                      }

                      goto LABEL_1229;
                    }

                    v699 -= 56;
                    --v536;
                  }

                  while (v700 + 1 > 2);
                  if (v697)
                  {
                    goto LABEL_1230;
                  }

LABEL_1229:
                  sub_2779F5C78(*(v10 + 320), __dst);
LABEL_1230:
                  v9 = v1029;
                  v97 = v1047;
                }
              }

              goto LABEL_1231;
            }

            if (v537 <= 2)
            {
              v658 = 4;
            }

            else
            {
              v658 = 2;
            }

            if (v537 == 5)
            {
              v658 = 1;
            }

            while (1)
            {
              v659 = v656[16];
              v660 = *v656 / v658;
              v661 = *v656 % v658;
              if (v537 <= 2)
              {
                if (v537 == 1)
                {
                  *v656 = v661 + 4 * dword_277BC0E0C[v660];
                  if (v659 >= 0)
                  {
                    v667 = v659;
                  }

                  else
                  {
                    v667 = v659 + 3;
                  }

                  v662 = v659 - (v667 & 0xFFFFFFFC);
                  v663 = dword_277BC0E0C[v667 >> 2];
                  goto LABEL_1182;
                }

                if (v537 != 2)
                {
LABEL_1181:
                  *v656 = v661 + 4 * v660;
                  v663 = v659 / v658;
                  v662 = v659 % v658;
                  goto LABEL_1182;
                }

                *v656 = v661 + 4 * dword_277BC0E2C[v660];
                v662 = v659 - (v661 & 0xFFFFFFFC);
                v663 = dword_277BC0E2C[v659 / 4];
              }

              else
              {
                if (v537 == 3)
                {
                  *v656 = dword_277BC0E40[v661] + 4 * dword_277BC0E2C[v660];
                  v664 = v659;
                  v665 = v659 % 2;
                  v663 = dword_277BC0E2C[v664 / 2];
LABEL_1176:
                  v662 = dword_277BC0E40[v665];
                  goto LABEL_1182;
                }

                if (v537 == 4)
                {
                  *v656 = dword_277BC0E40[v661] + 4 * dword_277BC0E48[v660];
                  v666 = v659 / 2;
                  v665 = v659 % 2;
                  v663 = dword_277BC0E48[v666];
                  goto LABEL_1176;
                }

                if (v537 != 5)
                {
                  goto LABEL_1181;
                }

                v662 = 0;
                *v656 = 4 * dword_277BC0E50[v660];
                v663 = dword_277BC0E50[v659];
              }

LABEL_1182:
              v656[16] = v662 + 4 * v663;
              ++v656;
              if (!--v657)
              {
                goto LABEL_1183;
              }
            }
          }

LABEL_1062:
          sub_2779F5C10(*(v574 + 320), 2, "Failed to allocate cdef_search_ctx->mse[1]", v580);
          v580 = v554;
          goto LABEL_1063;
        }

LABEL_1061:
        *(v554 + 7952) = 0;
        goto LABEL_1062;
      }
    }

    else
    {
      v1056 = (v571 + 7960);
      *(v571 + 7960) = 0;
      v574 = v1128;
      v575 = v1017;
    }

    sub_2779F5C10(*(v574 + 320), 2, "Failed to allocate cdef_search_ctx->sb_index");
    v571 = v554;
    goto LABEL_1052;
  }

LABEL_1231:
  if ((v1004 & 0x200000000) == 0)
  {
    v701 = *(v10 + 328);
    if (v701 != *(v10 + 344))
    {
      v1071 = v531;
      v1114 = *(v530 + 1404);
      v702 = *(v97 + 1576);
      if (*(v702 + 77))
      {
        v703 = 1;
      }

      else
      {
        v703 = 3;
      }

      v1104 = v703;
      v704 = *(v10 + 784);
      memset(__dst, 0, 208);
      v705 = *(v10 + 504);
      v706 = v10;
      v707 = (v705 + 1400);
      v708 = v701 + 7;
      v709 = *(v706 + 332);
      v710 = *(v702 + 96);
      v711 = *(v702 + 100);
      v712 = *(v702 + 76);
      v713 = sub_27797ABB4(__dst);
      v1124 = v704;
      if (sub_27797AC44(__dst, v708 & 0xFFFFFFF8, v709, v710, v711, v712, 288, v704, v713, v714, v715, v716, 0, 0))
      {
        sub_2779F5C10(*(v706 + 320), 2, "Failed to allocate copy buffer for superres upscaling");
      }

      sub_277A48B90(v705 + 1248, __dst, v1104);
      *(&__dst[9] + 8) = *v707;
      __dst[10].i8[8] = *(v705 + 1416);
      *(&__dst[10].i64[1] + 4) = *(v705 + 1420);
      v717 = *(v706 + 344);
      v718 = *(v706 + 348);
      v719 = *(v702 + 96);
      v720 = *(v702 + 100);
      v721 = *(v702 + 76);
      v722 = sub_27797ABB4(v705 + 1248);
      if (sub_27797AC44(v705 + 1248, v717, v718, v719, v720, v721, 288, v1124, v722, v723, v724, v725, v1114, 0))
      {
        sub_2779F5C10(*(v706 + 320), 2, "Failed to reallocate current frame buffer for superres upscaling");
      }

      v726 = 0;
      *v707 = *(&__dst[9] + 8);
      *(v705 + 1416) = __dst[10].i8[8];
      *(v705 + 1420) = *(&__dst[10].i64[1] + 4);
      if (*(*(v1047 + 1576) + 77))
      {
        v727 = 1;
      }

      else
      {
        v727 = 3;
      }

      do
      {
        sub_2779F445C(v1062, __dst[2].i64[v726 + 1], __dst[2].i32[v726 != 0], *(v705 + 1288 + 8 * v726), *(v705 + 1280 + 4 * (v726 != 0)), v726, __dst[1].i32[(v726 != 0) + 2]);
        ++v726;
      }

      while (v727 != v726);
      sub_277A48A28(v705 + 1248, v727);
      *v93.i64 = sub_27797ABB4(__dst);
      v10 = v1128;
      v731 = *(v1128 + 344);
      v732 = *(v1128 + 348);
      if (v731 == *(v1128 + 336) && v732 == *(v1128 + 340))
      {
        v97 = v1047;
        *(v1047 + 3528) = *(v1047 + 3544);
        v9 = v1029;
        v531 = v1071;
        if (*(v1047 + 3536))
        {
          *(v1047 + 3536) = *(v1047 + 3760);
        }
      }

      else
      {
        v97 = v1047;
        v733 = *(v1047 + 1576);
        if (*(v733 + 77))
        {
          v734 = 1;
        }

        else
        {
          v734 = 3;
        }

        v735 = *(v1047 + 3544);
        v9 = v1029;
        v531 = v1071;
        if (*(v735 + 16) != v731 || *(v735 + 24) != v732)
        {
          v735 = a1 + 272288;
          if (sub_27797AC44(a1 + 272288, v731, v732, *(v733 + 96), *(v733 + 100), *(v733 + 76), 288, *(v1128 + 784), *v93.i64, v728, v729, v730, *(v1019 + 1404), 0))
          {
            sub_2779F5C10(*(v1128 + 320), 2, "Failed to reallocate scaled source buffer");
          }

          if (!sub_2779F4074(*(v1047 + 3544), v735, *(*(v1047 + 1576) + 72), v734, v736, v737, v738, v739, v740))
          {
            sub_2779F5C10(*(v1128 + 320), 2, "Failed to reallocate buffers during resize");
          }

          v97 = v1047;
        }

        *(v97 + 3528) = v735;
      }
    }
  }

  if (v531)
  {
    goto LABEL_1491;
  }

  v996 = *(v1017 + 44);
  v741 = v1062;
  v742 = v97;
  sub_2779F8D3C(*(v10 + 504) + 1248, v1062, 1);
  v1026 = *(v742 + 3528);
  v743 = *(v742 + 1576);
  v744 = *(v743 + 77);
  v1105 = v743;
  v1125 = *(v743 + 76);
  v745 = *v1091;
  sub_2779F1B94(a1 + 133472, *v1091 + 12706, 0);
  sub_2779F1B94(a1 + 133484, v745 + 12714, 0);
  sub_2779F1B94(a1 + 133492, v745 + 12720, 0);
  v746 = 0;
  if (*(v9 + 2476) <= byte_277C3CAFE[*(*(v742 + 1576) + 28)])
  {
    v747 = byte_277C3CAFE[*(*(v742 + 1576) + 28)];
  }

  else
  {
    v747 = *(v9 + 2476);
  }

  v1042 = v1019 + 304;
  v1115 = v744;
  v748 = 3;
  v998 = *(v9 + 2480);
  if (v744)
  {
    v748 = 1;
  }

  v1012 = v748;
  v1014 = v747;
  v749 = v747 >> 1;
  v750 = (v1016 + 4088);
  do
  {
    if (v746)
    {
      v751 = vtst_s32(*(*(v1047 + 1576) + 96), *(*(v1047 + 1576) + 96));
    }

    else
    {
      v751 = 0;
    }

    if ((v749 + ((*(v1128 + 344) + ((1 << (v751.i8[0] & 1)) >> 1)) >> (v751.i8[0] & 1))) / v1014 <= 1)
    {
      v753 = 1;
    }

    else
    {
      v753 = (v749 + ((*(v1128 + 344) + ((1 << (v751.i8[0] & 1)) >> 1)) >> (v751.i8[0] & 1))) / v1014;
    }

    v752 = (*(v1128 + 332) + ((1 << (v751.i8[4] & 1)) >> 1)) >> (v751.i8[4] & 1);
    if ((v749 + v752) / v1014 <= 1)
    {
      v754 = 1;
    }

    else
    {
      v754 = (v749 + v752) / v1014;
    }

    if (*v750)
    {
      free(*(*v750 - 8));
    }

    v755 = v754 * v753;
    v756 = (v754 * v753) << 6;
    if (v755 >> 27)
    {
      *v750 = 0;
      sub_2779F5C10(*(v1128 + 320), 2, "Failed to allocate rsi->unit_info");
LABEL_1286:
      sub_2779F5C10(*(v1128 + 320), 2, "Failed to allocate rusi");
      v760 = 0;
      goto LABEL_1287;
    }

    v757 = malloc_type_malloc(v756 | 0x17, 0x5F484EBFuLL);
    if (!v757)
    {
      *v750 = 0;
LABEL_1283:
      sub_2779F5C10(*(v1128 + 320), 2, "Failed to allocate rsi->unit_info");
      goto LABEL_1284;
    }

    v758 = (v757 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v758 - 8) = v757;
    *v750 = v758;
    if (!v758)
    {
      goto LABEL_1283;
    }

LABEL_1284:
    v759 = malloc_type_malloc(v756 | 0x17, 0x5F484EBFuLL);
    if (!v759)
    {
      goto LABEL_1286;
    }

    v760 = ((v759 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v760 - 1) = v759;
    if (!v760)
    {
      goto LABEL_1286;
    }

LABEL_1287:
    bzero(v760, v756);
    *(v1042 + 8 * v746++) = v760;
    v750 += 8;
  }

  while (v1012 != v746);
  *(a1 + 102984) = *v1029;
  v10 = v1128;
  if (sub_27797AC44(a1 + 273984, *(v1128 + 344), *(v1128 + 348), *(v1105 + 96), *(v1105 + 100), v1125, 32, *(v1128 + 784), v761, v762, v763, v764, 0, 0))
  {
    sub_2779F5C10(*(v1128 + 320), 2, "Failed to allocate trial restored frame buffer");
  }

  memset(__dst, 0, 304);
  v765 = vdupq_n_s64(v1012 - 1);
  v766 = vmovn_s64(vcgeq_u64(v765, xmmword_277BB70A0));
  if (vuzp1_s16(v766, *v765.i8).u8[0])
  {
    *(v1016 + 4064) = 0;
  }

  v767 = v1047;
  if (vuzp1_s16(v766, *&v765).i8[2])
  {
    *v1047 = 0;
  }

  v768 = vmovn_s64(vcgeq_u64(v765, xmmword_277BB7090));
  if (vuzp1_s16(v768, v768).i32[1])
  {
    *(v1047 + 64) = 0;
    *(v1047 + 128) = 0;
  }

  v769 = *(v1029 + 2472);
  if (v1115)
  {
    v770 = 0;
  }

  else
  {
    v770 = 2 * (*(v1029 + 2468) == 0);
  }

  v771 = *(v1029 + 2496);
  v772 = *(v1029 + 2497);
  v1129[0] = v771 & v772;
  v1129[1] = v771;
  v1129[2] = v772;
  v1129[3] = (v771 | v772) & 1;
  if (v770)
  {
    v773 = 1;
  }

  else
  {
    v773 = v769 == 0;
  }

  v774 = !v773;
  v1009 = v774;
  if (v773)
  {
    if (v769)
    {
      v775 = 162;
    }

    else
    {
      v775 = 161;
    }

    v776 = v770 - (v769 != 0) + 1;
    do
    {
      if (v775 == 161)
      {
        v777 = 0;
      }

      else
      {
        v777 = vtst_s32(*(*(v767 + 1576) + 96), *(*(v767 + 1576) + 96));
      }

      sub_2779F6A74(*(*(v1128 + 504) + 8 * v775), (*(v1128 + 344) + ((1 << (v777.i8[0] & 1)) >> 1)) >> (v777.i8[0] & 1), (*(v1128 + 332) + ((1 << (v777.i8[4] & 1)) >> 1)) >> (v777.i8[4] & 1), *(*(v1128 + 504) + 4 * (v775 != 161) + 1280), v1125);
      ++v775;
      --v776;
      v767 = v1047;
    }

    while (v776);
  }

  v778 = v998;
  if (v998 >= v1014)
  {
    v780 = a1;
    v1006 = v769 != 0;
    v1052 = a1 + 270396;
    v1038 = (v770 | 1);
    v1040 = a1 + 270656;
    v781 = 1.79769313e308;
    v782 = v998;
    v783 = v998;
    v779 = (v1016 + 4064);
    while (1)
    {
      v778 = v782;
      v1137 = 0;
      v1136 = 0;
      if (v1009)
      {
        v784 = 0;
        v785 = 0.0;
      }

      else
      {
        v1001 = v783;
        v1028 = v782;
        v784 = 0;
        v786 = 0;
        v787 = v1006;
        do
        {
          v1031 = v786;
          v1033 = v784;
          v1126 = &v779[16 * v787];
          sub_277AA5C80(v741, v1126, v787 != 0, v1028);
          v767 = v1047;
          v788 = *(v1042 + 8 * v787);
          __dst[0].i64[0] = v1026;
          __dst[0].i64[1] = a1 + 273984;
          __dst[1].i64[0] = v741;
          __dst[1].i64[1] = a1 + 86064;
          __dst[2].i32[0] = v787;
          __dst[3].i64[0] = v788;
          __dst[3].i64[1] = a1 + 396300;
          v789 = *(v1047 + 1576);
          if (v787)
          {
            v790 = vbic_s8(0x100000001, vceqz_s32(v789[12]));
          }

          else
          {
            v790 = 0;
          }

          v791 = *(v10 + 504);
          v792 = *(v10 + 344);
          v793 = *(v10 + 332);
          *(__dst[2].i64 + 4) = vshl_s32(vsra_n_u32(__PAIR64__(v793, v792), vshl_u32(0x100000001, v790), 1uLL), vneg_s32(v790));
          __dst[5].i64[0] = *(v1026 + 40 + 8 * v787);
          __dst[5].i32[2] = *(v1026 + 32 + 4 * (v787 != 0));
          __dst[4].i64[0] = *(v791 + 8 * v787 + 1288);
          __dst[4].i32[2] = *(v791 + 4 * (v787 != 0) + 1280);
          v1068 = v789[3].u8[4];
          v1075 = v789[4].i32[1];
          if (v787)
          {
            v794 = v789[12].i32[1] != 0;
            v795 = vtst_s32(v789[12], v789[12]);
          }

          else
          {
            v794 = 0;
            v795 = 0;
          }

          v797 = v1126[1];
          v796 = v1126[2];
          if (v796 <= 1)
          {
            v798 = 3;
          }

          else
          {
            v798 = 4;
          }

          v1116 = v798;
          memset(&__dst[8], 0, 64);
          v799 = *(v1047 + 1604);
          if (v799 >= 1)
          {
            v800 = 0;
            v801 = (v792 + ((1 << (v795.i8[0] & 1)) >> 1)) >> (v795.i8[0] & 1);
            v802 = 3 * v797 / 2;
            v1088 = (v793 + ((1 << (v795.i8[4] & 1)) >> 1)) >> (v795.i8[4] & 1);
            v1106 = 8u >> v794;
            v803 = *(v1047 + 1600);
            v1065 = v787;
            do
            {
              v804 = v800 + 1;
              if (v803 >= 1)
              {
                v805 = 0;
                v806 = *(v1040 + 4 * v800);
                v1044 = v804;
                v1054 = *(v1040 + 4 * v804);
                v1046 = v806;
                do
                {
                  v1057 = *(v1052 + 4 * v805++);
                  v1079 = *(v1052 + 4 * v805);
                  __dst[13].i64[0] = 0xFFEA000FFFF90003;
                  __dst[12].i64[0] = 0xFFEA000FFFF90003;
                  __dst[13].i16[4] = 15;
                  __dst[12].i16[4] = 15;
                  *(&__dst[13].i32[2] + 2) = 262137;
                  *(&__dst[12].i32[2] + 2) = 262137;
                  *(__dst[14].i64 + 4) = 0x1FFFFFFFE0;
                  __dst[16].i64[0] = 0xFFEA000FFFF90003;
                  __dst[15].i64[0] = 0xFFEA000FFFF90003;
                  __dst[16].i16[4] = 15;
                  __dst[15].i32[2] = -458737;
                  *(&__dst[16].i32[2] + 2) = 262137;
                  __dst[15].i16[6] = 3;
                  *(__dst[17].i64 + 4) = 0x1FFFFFFFE0;
                  if (v806 < v1054)
                  {
                    v1050 = v805;
                    v1060 = v806;
                    do
                    {
                      if (v1057 < v1079)
                      {
                        v807 = v1057;
                        do
                        {
                          v1131 = 0;
                          v1130 = 0;
                          if (sub_2779F8C28(v741, v787, v1060 << v1075, v807 << v1075, v1068, &v1131 + 1, &v1131, &v1130 + 1, &v1130))
                          {
                            v1084 = v807;
                            v808 = HIDWORD(v1130);
                            v1098 = v1130;
                            if (SHIDWORD(v1130) < v1130)
                            {
                              v1092 = HIDWORD(v1131);
                              v809 = v1131;
                              do
                              {
                                v810 = v808 * v797;
                                v811 = v1088 - v808 * v797;
                                if (v811 >= v802)
                                {
                                  v811 = v797;
                                }

                                v812 = v811 + v810;
                                HIDWORD(__src[0]) = v812;
                                DWORD2(__src[0]) = (v810 - v1106) & ~((v810 - v1106) >> 31);
                                if (v812 < v1088)
                                {
                                  HIDWORD(__src[0]) = v812 - v1106;
                                }

                                v813 = v1092;
                                if (v1092 < v809)
                                {
                                  do
                                  {
                                    v814 = v801 - v813 * v797;
                                    if (v814 >= v802)
                                    {
                                      v814 = v797;
                                    }

                                    LODWORD(__src[0]) = v813 * v797;
                                    DWORD1(__src[0]) = v814 + v813 * v797;
                                    v815 = v1116;
                                    v816 = (v813 + v1126[4] * v808);
                                    __dst[7].i8[8] = 0;
                                    v817 = v1129;
                                    v818 = &off_28866EA30;
                                    do
                                    {
                                      v819 = *v817++;
                                      if ((v819 & 1) == 0)
                                      {
                                        (*v818)(__src, v816, __dst, *(__dst[1].i64[0] + 23248), 0, *(v1128 + 320));
                                      }

                                      ++v818;
                                      --v815;
                                    }

                                    while (v815);
                                    ++v813;
                                  }

                                  while (v813 != v809);
                                }

                                ++v808;
                              }

                              while (v808 < v1098);
                            }

                            v741 = v1062;
                            v787 = v1065;
                            v807 = v1084;
                          }

                          ++v807;
                        }

                        while (v807 != v1079);
                      }

                      ++v1060;
                    }

                    while (v1060 != v1054);
                    v767 = v1047;
                    v803 = *(v1047 + 1600);
                    v805 = v1050;
                    v806 = v1046;
                  }
                }

                while (v805 < v803);
                v799 = *(v767 + 1604);
                v804 = v1044;
              }

              v800 = v804;
            }

            while (v804 < v799);
            v796 = v1126[2];
            v779 = (v1016 + 4064);
          }

          v820 = 0;
          if (v796 <= 1)
          {
            v821 = 3;
          }

          else
          {
            v821 = 4;
          }

          v822 = v1129;
          v823 = 1.79769313e308;
          v824 = &__dst[10];
          v10 = v1128;
          v780 = a1;
          do
          {
            v825 = *v822++;
            if ((v825 & 1) == 0)
            {
              v826 = (v824->i64[0] >> 4) * *(a1 + 102984) * 0.001953125 + (v824[-2].i64[0] >> (2 * *(*(v767 + 1576) + 72) - 16)) * 128.0;
              if (v826 < v823)
              {
                *(&v1136 + v787) = v820;
                v823 = v826;
              }
            }

            ++v820;
            v824 = (v824 + 8);
            --v821;
          }

          while (v821);
          v827 = *(&v1136 + v787);
          v786 = __dst[10].i64[v827] + v1031;
          v784 = __dst[8].i64[v827] + v1033;
          v787 = v787 + 1;
        }

        while (v787 != v1038);
        v785 = (v786 >> 4);
        v778 = v1028;
        v783 = v1001;
      }

      v828 = v785 * *(v780 + 102984) * 0.001953125 + (v784 >> (2 * *(*(v767 + 1576) + 72) - 16)) * 128.0;
      if (v828 >= v781)
      {
        v778 = v783;
        goto LABEL_1388;
      }

      if (v1009)
      {
        break;
      }

      v829 = 1;
      v830 = v1006;
      do
      {
        v831 = *(&v1136 + v830);
        v832 = &v779[16 * v830];
        *v832 = v831;
        if (v831)
        {
          v833 = v832[2];
          if (v833 >= 1)
          {
            v834 = 0;
            v835 = v831 - 1;
            v836 = v833 << 6;
            v837 = 4 * v835 + 44;
            do
            {
              v838 = *(v1042 + 8 * v830) + v834;
              v839 = *(v832 + 3);
              v840 = *(v838 + v837);
              *(v839 + v834) = v840;
              v841 = v839 + v834;
              if (v840 == 1)
              {
                v842 = *(v838 + 16);
                *(v841 + 16) = *v838;
                *(v841 + 32) = v842;
              }

              else
              {
                v843 = *(v838 + 32);
                *(v841 + 56) = *(v838 + 40);
                *(v841 + 48) = v843;
              }

              v834 += 64;
            }

            while (v836 != v834);
          }

          v829 = 0;
        }

        v830 = v830 + 1;
      }

      while (v830 != v1038);
      v782 = v778 >> 1;
      v783 = v778;
      v781 = v828;
      if (v829 & 1 | (v778 >> 1 < v1014))
      {
        goto LABEL_1388;
      }
    }

    v778 = v998;
  }

  else
  {
    v779 = (v1016 + 4064);
  }

LABEL_1388:
  v844 = 0;
  v845 = v779;
  v846 = v1012;
  do
  {
    sub_277AA5C80(v741, v845, v844++ != 0, v778);
    v845 += 16;
  }

  while (v1012 != v844);
  v9 = v1029;
  v97 = v1047;
  v850 = v996;
  v851 = (v1019 + 304);
  do
  {
    if (*v851)
    {
      free(*(*v851 - 8));
      v97 = v1047;
    }

    *v851++ = 0;
    --v846;
  }

  while (v846);
  if ((v1004 & 0x100000000) == 0 && (*v779 || *v97 || *(v97 + 64)))
  {
    v852 = *(v10 + 504);
    if (v996 < 2)
    {
      if (*(*(v97 + 1576) + 77))
      {
        v905 = 1;
      }

      else
      {
        v905 = 3;
      }

      v906 = v1019;
      sub_2779F8860((v1019 + 112), v852 + 1248, v1062, v905, *v93.i64, v847, v848, v849);
      v907 = 0;
      v1089 = v905;
      do
      {
        v908 = &v779[16 * v907];
        if (*v908)
        {
          if (v907)
          {
            *v93.i8 = vtst_s32(*(*(v1047 + 1576) + 96), *(*(v1047 + 1576) + 96));
          }

          else
          {
            v93 = 0uLL;
          }

          v909 = (*(v1128 + 332) + ((1 << (v93.i8[4] & 1)) >> 1)) >> (v93.i8[4] & 1);
          if (v909 >= 1)
          {
            v910 = 0;
            v911 = *(v906 + 112);
            v912 = a1 + 643496 + 56 * v907;
            v914 = *(v1047 + 128);
            v913 = *(v1047 + 136);
            v915 = v908[3];
            v916 = v908[4];
            v917 = v908[1];
            v918 = v1128;
            v919 = 3 * v917 / 2;
            v920 = (*(v1128 + 344) + ((1 << (v93.i8[0] & 1)) >> 1)) >> (v93.i8[0] & 1);
            __dst[0].i64[0] = 0;
            if (v909 >= v919)
            {
              v921 = v917;
            }

            else
            {
              v921 = v909;
            }

            __dst[0].i32[3] = v921;
            __dst[0].i32[2] = 0;
            if (v921 < v909)
            {
              v910 = 0;
              v1093 = 8u >> (v93.i8[4] & 1);
              v1117 = v909;
              v1099 = v913;
              v1107 = v907;
              do
              {
                v1127 = v921 - v1093;
                __dst[0].i32[3] = v921 - v1093;
                v922 = v907;
                v923 = v912;
                sub_2779F8AA0(__dst, v920, v911, v910, v917, v916, v915, v922, v912, v914, v913, nullsub_2, nullsub_1, 0, *(v918 + 320));
                v918 = v1128;
                v912 = v923;
                v913 = v1099;
                v907 = v1107;
                v910 = (v910 + 1);
                v924 = v1117 - v921;
                if (v1117 - v921 >= v919)
                {
                  v924 = v917;
                }

                __dst[0].i64[0] = 0;
                v921 += v924;
                __dst[0].i32[3] = v921;
                __dst[0].i32[2] = v1127 & ~(v1127 >> 31);
              }

              while (v921 < v1117);
            }

            sub_2779F8AA0(__dst, v920, v911, v910, v917, v916, v915, v907, v912, v914, v913, nullsub_2, nullsub_1, 0, *(v918 + 320));
            v779 = (v1016 + 4064);
            v906 = v1019;
            v9 = v1029;
            v905 = v1089;
          }
        }

        ++v907;
      }

      while (v907 != v905);
      v925 = (v906 + 140);
      v926 = &off_28866DEC0;
      v10 = v1128;
      v97 = v1047;
      do
      {
        v927 = *v779;
        v779 += 16;
        if (v927)
        {
          (*v926)(*(v1019 + 296), *(v1019 + 288), 0, *(v925 - 1), 0, *v925);
          v97 = v1047;
        }

        ++v926;
        v925 += 14;
        --v905;
      }

      while (v905);
    }

    else
    {
      v853 = *(v1017 + 64);
      v854 = a1 + 643488;
      if (*(*(v97 + 1576) + 77))
      {
        v855 = 1;
      }

      else
      {
        v855 = 3;
      }

      sub_2779F8860((a1 + 643488), v852 + 1248, v1062, v855, *v93.i64, v847, v848, v849);
      v856 = 0;
      if (*(*(v1047 + 1576) + 77))
      {
        v857 = 1;
      }

      else
      {
        v857 = 3;
      }

      v858 = (v1019 + 140);
      v859 = (v1016 + 4068);
      v860 = v857;
      do
      {
        if (*(v859 - 1))
        {
          v861 = (*v858 + (*v859 >> 1)) / *v859;
          if (v861 <= v856)
          {
            v861 = v856;
          }

          if (v861 <= 1)
          {
            v856 = 1;
          }

          else
          {
            v856 = v861;
          }
        }

        v858 += 14;
        v859 += 16;
        --v860;
      }

      while (v860);
      v862 = a1 + 634936;
      if (!*(v1017 + 672) || v856 > *(v1017 + 676) || *(v1017 + 684) < v996 || v857 > *(v1017 + 680))
      {
        sub_2779D1E04(a1 + 634936);
        sub_2779D19B4(v862, v1062, v996, v856, v857);
      }

      *(v1017 + 720) = 0;
      v863 = (v1017 + 648);
      v864 = 4 * v856;
      do
      {
        v865 = *v863++;
        memset(v865, 255, v864);
        --v857;
      }

      while (v857);
      v866 = 0;
      v867 = *(v1047 + 1576);
      v868 = *(v867 + 77);
      v869 = v1016 + 4064;
      v870 = *(v1017 + 704);
      *(v1017 + 712) = 0;
      v150 = v868 == 0;
      v871 = 3;
      if (!v150)
      {
        v871 = 1;
      }

      v872 = (v1016 + 4064);
      v873 = v1019 + 120;
      v874 = v871;
      do
      {
        v875 = *v872;
        v872 += 16;
        if (v875)
        {
          v866 += (*(*v873 + 12) + 1) >> 1;
        }

        v873 += 56;
        --v874;
      }

      while (v874);
      v876 = 0;
      v877 = 0;
      __dst[0].i32[0] = 0;
      __dst[0].i32[1] = v866;
      do
      {
        if (*(v869 + (v877 << 6)))
        {
          v878 = v877 && *(v867 + 100) != 0;
          v879 = v1019 + 120 + 56 * v877;
          v880 = *(v879 + 20);
          if (v880 >= 1)
          {
            v881 = 0;
            v882 = 0;
            v883 = *v879;
            v884 = *(v883 + 4);
            v885 = 8u >> v878;
            do
            {
              v886 = v880 - v882;
              if (v880 - v882 >= 3 * v884 / 2)
              {
                v886 = v884;
              }

              v887 = v882 - v885;
              v882 += v886;
              v888 = v887 & ~(v887 >> 31);
              if (v882 >= v880)
              {
                v889 = 0;
              }

              else
              {
                v889 = v885;
              }

              v890 = __dst[0].i32[v881 & 1];
              v891 = (v870 + 28 * v890);
              v891[2] = v881;
              v891[3] = v877;
              v892 = v882 - v889;
              *v891 = v888;
              v891[1] = v892;
              v891[4] = v881 & 1;
              if (v881)
              {
                if (v887 <= 3)
                {
                  v887 = 3;
                }

                v895 = v887 - 3;
                v896 = v870 + 28 * v890;
                v897 = v892 + 3;
                if (v897 >= v880)
                {
                  v897 = v880;
                }

                *(v896 + 20) = v895;
                *(v896 + 24) = v897;
                v10 = v1128;
              }

              else
              {
                v893 = v870 + 28 * v890;
                *(v893 + 20) = v888 + 3;
                v894 = (v893 + 20);
                v894[1] = v892 - 3;
                if (!v881)
                {
                  *v894 = 0;
                }

                v10 = v1128;
                if (v881 == *(v883 + 12) - 1)
                {
                  v894[1] = v880;
                }
              }

              __dst[0].i32[v881 & 1] = v890 + 1;
              ++v876;
              ++v881;
            }

            while (v882 < v880);
            v869 = v1016 + 4064;
            *(v1017 + 712) = v876;
          }
        }

        ++v877;
      }

      while (v877 != v871);
      v898 = v996 - 1;
      v899 = v853 + 56 * (v996 - 1);
      v900 = *(v1017 + 696) + 432 * v996 - 432;
      *(v900 + 16) = v854;
      *(v900 + 24) = 1;
      *(v899 + 24) = sub_2779D1FB4;
      *(v899 + 32) = v862;
      *(v899 + 40) = v900;
      *(v899 + 48) = 0;
      v901 = 432 * v996;
      do
      {
        sub_277985E48(v899, 2);
        v902 = *(v1017 + 696) + v901;
        *(v902 - 848) = v854;
        *(v902 - 840) = 1;
        *(v899 - 32) = sub_2779D1FB4;
        *(v899 - 24) = v862;
        *(v899 - 16) = v902 - 864;
        *(v899 - 8) = 0;
        v899 -= 56;
        v901 -= 432;
        --v898;
      }

      while (v898);
      v903 = *(v853 + 24);
      if (v903)
      {
        v904 = *(v853 + 48) | (v903(*(v853 + 32), *(v853 + 40)) == 0);
        *(v853 + 48) = v904;
      }

      else
      {
        v904 = *(v853 + 48);
      }

      v928 = v904 == 0;
      memset(__dst, 0, 404);
      if (v904)
      {
        memcpy(__dst, (*(v853 + 40) + 28), 0x194uLL);
      }

LABEL_1482:
      v929 = v853 - 56 + 56 * v850;
      do
      {
        v930 = v850 - 1;
        sub_277985E48(v929, 1);
        if (*(v929 + 48))
        {
          memcpy(__dst, (*(v929 + 40) + 28), 0x194uLL);
          v928 = 0;
          v221 = v850-- > 2;
          if (v221)
          {
            goto LABEL_1482;
          }

          goto LABEL_1489;
        }

        v929 -= 56;
        --v850;
      }

      while (v930 + 1 > 2);
      if (v928)
      {
        goto LABEL_1490;
      }

LABEL_1489:
      sub_2779F5C78(*(v10 + 320), __dst);
LABEL_1490:
      v9 = v1029;
      v97 = v1047;
    }
  }

LABEL_1491:
  if (*(v97 + 3472) != 2 && !*(*a1 + 85780))
  {
    v932 = 0;
    v933 = 268672;
    do
    {
      if (*(v1017 + 40) < 2 || (v934 = *(v97 + 1576), !v934[67]) || (*(v10 + 771) & 1) != 0 || *(v97 + 2180) || *(*a1 + 85780) || v934[68] && *(v10 + 772) != 1 || *(v10 + 328) != *(v10 + 344))
      {
        if (*(v1017 + 44) < 2 || (v934 = *(v97 + 1576), !v934[68]) || (*(v10 + 772) & 1) != 0 || *(v97 + 2180) || !*(a1 + v933))
        {
          sub_277A4848C(*(v10 + 504) + 1248, v932, 0, *(*(v10 + 504) + 4 * (v932 != 0) + 1272));
          v97 = v1047;
          v934 = *(v1047 + 1576);
        }
      }

      if (v934[77])
      {
        v935 = 1;
      }

      else
      {
        v935 = v932 >= 2;
      }

      ++v932;
      v933 += 64;
    }

    while (!v935);
  }

  if (*(v97 + 3260) == 2)
  {
    *(v97 + 616) = 0x100000001;
    *(v1047 + 1260) = rand();
    *(v1047 + 736) = 1;
    *(v1047 + 624) = 0x6400000080;
    if (*(*(v1047 + 1576) + 77))
    {
      v931 = 0;
    }

    else
    {
      *(v1047 + 740) = 0x6400000080;
      *(v1047 + 824) = 0x6400000080;
      v931 = 1;
    }

    *(v1047 + 820) = v931;
    *(v1047 + 904) = v931;
    *(v1047 + 908) = 1;
    *(v1047 + 1212) = 1;
    *(v1047 + 1240) = 1;
    v93 = 0uLL;
    *(v1047 + 1252) = 0;
  }

  sub_277BA5128(a1, v93);
  *(v9 + 1224) = 0;
  if (sub_277A06350())
  {
    return 1;
  }

  v941 = v1047;
  if (*(v9 + 1380))
  {
    if (!*(v1047 + 3444) && !*(*a1 + 23172) && *(v1047 + 3472) == 1 && !*(v1047 + 2672) && *(v1047 + 2556) == 1 && *(v1047 + 2532) >= 1 && !*(v9 + 1460) && (v1062->i8[0] & 0xFD) != 0 && !*(v1019 + 416))
    {
      v987 = sub_277A5CD00(a1, v1015);
      v941 = v1047;
      if (v987)
      {
        return 0;
      }
    }
  }

  if (v1002)
  {
    v942 = *(v941 + 3528);
    v943 = *(v10 + 504);
    v944 = *(v942 + 40);
    v945 = *(v942 + 32);
    v946 = *(v943 + 1288);
    v947 = *(v943 + 1280);
    v948 = *(v942 + 16);
    v949 = *(v942 + 24);
    if (*(v999 + 76))
    {
      v950 = sub_277A2BAE0(v944, v945, v946, v947, v948, v949, v936, v937, v938, v939, v940);
    }

    else
    {
      v950 = sub_277A2B70C(v944, v945, v946, v947, v948, v949);
    }

    *v1002 = v950;
    v941 = v1047;
  }

  if (v1003)
  {
    *v1003 = *v1015 << 8;
  }

  if (!*(v1019 + 1232))
  {
    return 0;
  }

  memset(__dst, 0, 160);
  sub_277A2C130(*(v941 + 3528), *(v10 + 504) + 1248, __dst);
  result = 0;
  *(v1019 + 1280) = *(*(v10 + 504) + 36);
  *(v1019 + 1284) = *(v10 + 888);
  *(v1019 + 1288) = *v9;
  *(v1019 + 1292) = 8 * *v1015;
  *(v1019 + 1296) = __dst[2].i64[0];
  *(v1019 + 1304) = __dst[0].i64[0];
  return result;
}