@interface PCSFPMasterKeyIDHintConflict
@end

@implementation PCSFPMasterKeyIDHintConflict

unint64_t ___PCSFPMasterKeyIDHintConflict_block_invoke(unint64_t result, CFDataRef theData)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v3 = result;
    result = CFDataGetLength(theData);
    if (result >= *(v3 + 40))
    {
      BytePtr = CFDataGetBytePtr(theData);
      v5 = CFDataGetBytePtr(*(v3 + 48));
      result = memcmp(BytePtr, v5, *(v3 + 40));
      *(*(*(v3 + 32) + 8) + 24) = result == 0;
    }
  }

  return result;
}

@end