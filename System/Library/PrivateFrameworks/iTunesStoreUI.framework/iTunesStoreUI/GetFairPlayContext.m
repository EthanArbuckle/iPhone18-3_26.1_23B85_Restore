@interface GetFairPlayContext
@end

@implementation GetFairPlayContext

void ____GetFairPlayContext_block_invoke()
{
  v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"iTunes_Control", @"iTunes", 0}];
  v0 = [MEMORY[0x1E696AEC0] pathWithComponents:?];
  v1 = __GetFairPlayContext_sFolderPath;
  __GetFairPlayContext_sFolderPath = v0;

  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    SystemEncoding = CFStringGetSystemEncoding();
    ExternalRepresentation = CFStringCreateExternalRepresentation(0, v3, SystemEncoding, 0);
    if (ExternalRepresentation)
    {
      v6 = ExternalRepresentation;
      BytePtr = CFDataGetBytePtr(ExternalRepresentation);
      Length = CFDataGetLength(v6);
      zxcm2Qme0x(BytePtr, Length, &__GetFairPlayContext_sHardwareInfo);
      CFRelease(v6);
    }

    else
    {
      zxcm2Qme0x(0, 0, &__GetFairPlayContext_sHardwareInfo);
    }

    CFRelease(v3);
  }
}

@end