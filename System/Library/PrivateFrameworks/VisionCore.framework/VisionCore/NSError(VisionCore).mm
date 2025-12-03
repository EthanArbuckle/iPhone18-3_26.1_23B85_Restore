@interface NSError(VisionCore)
+ (id)VisionCoreErrorForCVReturnCode:()VisionCore localizedDescription:;
+ (id)VisionCoreErrorForEspressoErrorInfo:()VisionCore localizedDescription:;
+ (id)VisionCoreErrorForEspressoReturnStatus:()VisionCore localizedDescription:;
+ (id)VisionCoreErrorForFailedEspressoPlan:()VisionCore localizedDescription:;
+ (id)VisionCoreErrorForKernelReturnCode:()VisionCore localizedDescription:;
+ (id)VisionCoreErrorForMemoryAllocationFailureOfElementCount:()VisionCore size:;
+ (id)VisionCoreErrorForMemoryAllocationFailureOfSize:()VisionCore;
+ (id)VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:()VisionCore;
+ (id)VisionCoreErrorForUnavailableDescriptorIdentifier:()VisionCore version:;
+ (id)VisionCoreErrorForUnknownProcessingDescriptorIdentifier:()VisionCore;
+ (id)VisionCoreErrorWithCode:()VisionCore localizedDescription:underlyingError:;
+ (id)VisionCoreErrorWithDomain:()VisionCore code:userInfo:;
+ (id)_VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:()VisionCore;
+ (void)VisionCoreAssert:()VisionCore log:;
+ (void)logInternalError:()VisionCore;
@end

@implementation NSError(VisionCore)

+ (void)logInternalError:()VisionCore
{
  if (a3)
  {
    v3 = a3;
    code = [v3 code];
    localizedDescription = [v3 localizedDescription];
    v5 = localizedDescription;
    [localizedDescription cStringUsingEncoding:1];
    localizedFailureReason = [v3 localizedFailureReason];

    [localizedFailureReason cStringUsingEncoding:1];
    VisionCoreValidatedLog(4, @"Error code: %llu; description: %s; reason: %s", v7, v8, v9, v10, v11, v12, code);
  }
}

+ (void)VisionCoreAssert:()VisionCore log:
{
  if ((a3 & 1) == 0)
  {
    uTF8String = [a4 UTF8String];
    VisionCoreValidatedLog(4, @"%s", v5, v6, v7, v8, v9, v10, uTF8String);
  }
}

+ (id)VisionCoreErrorForFailedEspressoPlan:()VisionCore localizedDescription:
{
  v5 = a4;
  error_info = espresso_plan_get_error_info();
  v8 = [self VisionCoreErrorForEspressoErrorInfo:error_info localizedDescription:{v7, v5}];

  return v8;
}

+ (id)VisionCoreErrorForEspressoErrorInfo:()VisionCore localizedDescription:
{
  v8 = a5;
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (a3 >= 3)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"plan phase %u", a3];
  }

  else
  {
    v10 = off_1E86987C0[a3 & 3];
  }

  v11 = [v9 initWithFormat:@"%s (%@)", a4, v10];

  if (v8)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ - %@", v8, v11];

    v11 = v12;
  }

  v13 = [self _VisionCoreEspressoErrorWithLocalizedDescription:v11];

  return v13;
}

+ (id)VisionCoreErrorForEspressoReturnStatus:()VisionCore localizedDescription:
{
  v6 = a4;
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"%d", a3];
  status_string = espresso_get_status_string();
  if (status_string)
  {
    [string appendFormat:@": %s", status_string];
  }

  if ([v6 length])
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ (%@)", v6, string];
  }

  else
  {
    v9 = string;
  }

  v10 = v9;

  v11 = [self _VisionCoreEspressoErrorWithLocalizedDescription:v10];

  return v11;
}

+ (id)VisionCoreErrorForKernelReturnCode:()VisionCore localizedDescription:
{
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a4, *MEMORY[0x1E696A578], 0}];
  v7 = [self VisionCoreErrorWithDomain:*MEMORY[0x1E696A5A0] code:a3 userInfo:v6];

  return v7;
}

+ (id)VisionCoreErrorForCVReturnCode:()VisionCore localizedDescription:
{
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a4, *MEMORY[0x1E696A578], 0}];
  v7 = [self VisionCoreErrorWithDomain:*MEMORY[0x1E696A768] code:a3 userInfo:v6];

  return v7;
}

+ (id)VisionCoreErrorForMemoryAllocationFailureOfElementCount:()VisionCore size:
{
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to allocate %lu bytes for %lu elements of size %lu", a4 * a3, a3, a4];
  v6 = [self _VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:v5];

  return v6;
}

+ (id)VisionCoreErrorForMemoryAllocationFailureOfSize:()VisionCore
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to allocate %lu bytes", a3];
  v5 = [self _VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:v4];

  return v5;
}

+ (id)VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:()VisionCore
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [@"Unable to allocate memory" stringByAppendingFormat:@" - %@", v4];
  }

  else
  {
    v5 = @"Unable to allocate memory";
  }

  v6 = [self _VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:v5];

  return v6;
}

+ (id)_VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:()VisionCore
{
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithObjectsAndKeys:{v5, *MEMORY[0x1E696A578], 0}];

  v8 = [self VisionCoreErrorWithDomain:*MEMORY[0x1E696A250] code:-108 userInfo:v7];

  return v8;
}

+ (id)VisionCoreErrorForUnknownProcessingDescriptorIdentifier:()VisionCore
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:@"unknown processing descriptor %@", v5];

  v7 = [self VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v6];

  return v7;
}

+ (id)VisionCoreErrorForUnavailableDescriptorIdentifier:()VisionCore version:
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%@ %@ is not available - ensure correct version specified.", v8, v7];

  v10 = [self VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v9];

  return v10;
}

+ (id)VisionCoreErrorWithCode:()VisionCore localizedDescription:underlyingError:
{
  v8 = MEMORY[0x1E695DF20];
  v9 = a5;
  v10 = a4;
  v11 = [v8 alloc];
  v12 = [v11 initWithObjectsAndKeys:{v10, *MEMORY[0x1E696A578], v9, *MEMORY[0x1E696AA08], 0}];

  v13 = [self VisionCoreErrorWithCode:a3 userInfo:v12];

  return v13;
}

+ (id)VisionCoreErrorWithDomain:()VisionCore code:userInfo:
{
  v2 = [self errorWithDomain:? code:? userInfo:?];
  [self logInternalError:v2];

  return v2;
}

@end