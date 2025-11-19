@interface UIDynamicValueAnimation
@end

@implementation UIDynamicValueAnimation

uint64_t __48___UIDynamicValueAnimation__animateForInterval___block_invoke(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, *(a1 + 40), *(v5 + 40));
    v5 = *(a1 + 32);
  }

  result = *(v5 + 32);
  if (result)
  {
    a3.n128_u64[0] = *(a1 + 40);
    a4.n128_u64[0] = *(v5 + 40);
    v8 = *(result + 16);

    return v8(a3, a4);
  }

  return result;
}

uint64_t __48___UIDynamicValueAnimation__animateForInterval___block_invoke_2(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, *(v5 + 40), *(v5 + 40));
    v5 = *(a1 + 32);
  }

  result = *(v5 + 32);
  if (result)
  {
    a3.n128_u64[0] = *(v5 + 40);
    v8 = *(result + 16);
    a4.n128_u64[0] = a3.n128_u64[0];

    return v8(a3, a4);
  }

  return result;
}

@end