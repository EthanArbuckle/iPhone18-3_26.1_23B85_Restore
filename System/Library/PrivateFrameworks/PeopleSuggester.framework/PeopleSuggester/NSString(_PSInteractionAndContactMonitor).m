@interface NSString(_PSInteractionAndContactMonitor)
- (uint64_t)_ps_pointerSizedHash;
@end

@implementation NSString(_PSInteractionAndContactMonitor)

- (uint64_t)_ps_pointerSizedHash
{
  v0 = objc_autoreleasePoolPush();
  if (_ps_pointerSizedHash__pasOnceToken1 != -1)
  {
    [NSString(_PSInteractionAndContactMonitor) _ps_pointerSizedHash];
  }

  v1 = _PASRepairString();
  v4 = 0;
  if (![v1 _pas_fastUTF8StringPtrWithOptions:0 encodedLength:&v4])
  {
    [v1 UTF8String];
    v4 = [v1 lengthOfBytesUsingEncoding:4];
  }

  v2 = _PASMurmur3_x64_128();

  objc_autoreleasePoolPop(v0);
  return v2;
}

@end