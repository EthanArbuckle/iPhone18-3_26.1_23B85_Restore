uint64_t sub_3444(uint64_t a1, _BYTE *a2, float a3)
{
  v5 = a3 * 0.1 + 0.0;
  v6 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))(v5);
  *a2 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_34AC(uint64_t a1, _BYTE *a2, float a3)
{
  v5 = a3 * 0.1 + 0.0;
  v6 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))(v5);
  *a2 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_3514(uint64_t a1, _BYTE *a2, float a3)
{
  v5 = a3 * 0.1 + 0.0;
  v6 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))(v5);
  *a2 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_37E4(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 40);
  v5.n128_f32[0] = a3 / [*(a1 + 32) count];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}