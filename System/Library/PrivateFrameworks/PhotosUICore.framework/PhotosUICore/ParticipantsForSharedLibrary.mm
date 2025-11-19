@interface ParticipantsForSharedLibrary
@end

@implementation ParticipantsForSharedLibrary

void ___ParticipantsForSharedLibrary_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 48) != 1 || (v4 = _PXSharedLibraryParticipantsAreEqual(*(a1 + 32), v3), v3 = v6, (v4 & 1) == 0))
  {
    if (*(a1 + 49) != 1 || (v5 = [v3 isCurrentUser], v3 = v6, (v5 & 1) == 0))
    {
      [*(a1 + 40) addObject:v6];
      v3 = v6;
    }
  }
}

@end