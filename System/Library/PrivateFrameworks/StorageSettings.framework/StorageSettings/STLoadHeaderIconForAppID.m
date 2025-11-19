@interface STLoadHeaderIconForAppID
@end

@implementation STLoadHeaderIconForAppID

uint64_t ___STLoadHeaderIconForAppID_block_invoke()
{
  _gHeaderIconsByID = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

void ___STLoadHeaderIconForAppID_block_invoke_2(uint64_t a1)
{
  v2 = _LoadIconForAppID(_gHeaderIconsByID, *(a1 + 32), 2, *(a1 + 48));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___STLoadHeaderIconForAppID_block_invoke_3;
  v4[3] = &unk_2782E28B8;
  v5 = v2;
  v6 = *(a1 + 40);
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void ___STLoadHeaderIconForAppID_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3);
  }

  else
  {
    v4 = PSBlankIconImage();
    (*(v1 + 16))(v1, v4);
  }
}

@end