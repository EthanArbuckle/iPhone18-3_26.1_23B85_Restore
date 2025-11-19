uint64_t SPXPCGetNextClientID()
{
  if (SPXPCGetNextClientID_sOnce != -1)
  {
    SPXPCGetNextClientID_cold_1();
  }

  return atomic_fetch_add(&SPXPCGetNextClientID_sNext, 1u) + 1;
}

uint64_t __SPXPCGetNextClientID_block_invoke()
{
  result = RandomBytes();
  SPXPCGetNextClientID_sNext = word_280018102 << 16;
  return result;
}