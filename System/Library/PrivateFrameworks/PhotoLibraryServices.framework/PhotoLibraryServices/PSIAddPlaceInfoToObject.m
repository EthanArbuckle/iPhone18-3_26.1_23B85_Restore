@interface PSIAddPlaceInfoToObject
@end

@implementation PSIAddPlaceInfoToObject

void ___PSIAddPlaceInfoToObject_block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([v5 length])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___PSIAddPlaceInfoToObject_block_invoke_2;
    aBlock[3] = &unk_1E756F2F0;
    v6 = v5;
    v9 = v6;
    v7 = _Block_copy(aBlock);
    if (a3 <= 0xC && ((1 << a3) & 0x1420) != 0 || [*(a1 + 32) indexOfObjectPassingTest:v7] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 40) addContentString:v6 category:a3 owningCategory:0];
    }
  }
}

uint64_t ___PSIAddPlaceInfoToObject_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 text];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end