@interface NSError(VisionCoreE5RT)
+ (id)VisionCoreErrorForE5RTErrorCode:()VisionCoreE5RT localizedDescription:;
+ (id)VisionCoreErrorForE5RTLastErrorMessageAndCode:()VisionCoreE5RT;
+ (id)VisionCoreErrorForUnsupportedE5RTIOPortType:()VisionCoreE5RT;
@end

@implementation NSError(VisionCoreE5RT)

+ (id)VisionCoreErrorForUnsupportedE5RTIOPortType:()VisionCoreE5RT
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = @"VisionCoreE5RTIOPortTypeUnknown";
  if (a3 == 1)
  {
    v5 = @"VisionCoreE5RTIOPortTypeTensor";
  }

  if (a3 == 2)
  {
    v5 = @"VisionCoreE5RTIOPortTypeSurface";
  }

  v6 = v5;
  v7 = [v4 initWithFormat:@"unsupported I/O port handle type %@", v6];

  v8 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:v7];

  return v8;
}

+ (id)VisionCoreErrorForE5RTErrorCode:()VisionCoreE5RT localizedDescription:
{
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E696AD60]);
  v8 = MEMORY[0x1E12C8250](a3);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  v10 = [v7 initWithFormat:@"%s (%@)", v8, v9];

  if ([v6 length])
  {
    [v10 appendString:@" - "];
    [v10 appendString:v6];
  }

  v11 = [self VisionCoreErrorForFailedOperationWithLocalizedDescription:v10];

  return v11;
}

+ (id)VisionCoreErrorForE5RTLastErrorMessageAndCode:()VisionCoreE5RT
{
  last_error_message = e5rt_get_last_error_message();
  if (last_error_message)
  {
    last_error_message = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:last_error_message];
  }

  v6 = [self VisionCoreErrorForE5RTErrorCode:a3 localizedDescription:last_error_message];

  return v6;
}

@end