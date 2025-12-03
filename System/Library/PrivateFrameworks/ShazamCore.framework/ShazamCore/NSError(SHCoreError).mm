@interface NSError(SHCoreError)
- (uint64_t)sh_isCoreCompressionError;
- (uint64_t)sh_isCoreDaemonExit;
- (uint64_t)sh_isCoreDecompressionError;
- (uint64_t)sh_isCoreFailedToStartAudioRecording;
- (uint64_t)sh_isCoreJSONLFileParsingError;
- (uint64_t)sh_isCoreMatchAttemptRejectedError;
- (uint64_t)sh_isCoreMediaItemMissingRequiredProperties;
- (uint64_t)sh_isCoreMissingEntitlementsError;
- (uint64_t)sh_isCoreServerResponseMissingRequiredProperties;
- (uint64_t)sh_isCoreServerResponseWorkerAlreadyRegistered;
- (uint64_t)sh_isCoreToldNotToResumeAudioRecordingAfterInterruption;
- (uint64_t)sh_isShazamCoreError;
@end

@implementation NSError(SHCoreError)

- (uint64_t)sh_isShazamCoreError
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"com.apple.ShazamCore"];

  return v2;
}

- (uint64_t)sh_isCoreJSONLFileParsingError
{
  result = [self sh_isShazamCoreError];
  if (result)
  {
    return [self code] == 300;
  }

  return result;
}

- (uint64_t)sh_isCoreCompressionError
{
  result = [self sh_isShazamCoreError];
  if (result)
  {
    return [self code] == 301;
  }

  return result;
}

- (uint64_t)sh_isCoreDecompressionError
{
  result = [self sh_isShazamCoreError];
  if (result)
  {
    return [self code] == 302;
  }

  return result;
}

- (uint64_t)sh_isCoreDaemonExit
{
  result = [self sh_isShazamCoreError];
  if (result)
  {
    return [self code] == 100;
  }

  return result;
}

- (uint64_t)sh_isCoreMatchAttemptRejectedError
{
  result = [self sh_isShazamCoreError];
  if (result)
  {
    return [self code] == 101;
  }

  return result;
}

- (uint64_t)sh_isCoreMissingEntitlementsError
{
  result = [self sh_isShazamCoreError];
  if (result)
  {
    return [self code] == 102;
  }

  return result;
}

- (uint64_t)sh_isCoreMediaItemMissingRequiredProperties
{
  result = [self sh_isShazamCoreError];
  if (result)
  {
    return [self code] == 400;
  }

  return result;
}

- (uint64_t)sh_isCoreServerResponseMissingRequiredProperties
{
  result = [self sh_isShazamCoreError];
  if (result)
  {
    return [self code] == 401;
  }

  return result;
}

- (uint64_t)sh_isCoreFailedToStartAudioRecording
{
  result = [self sh_isShazamCoreError];
  if (result)
  {
    return [self code] == 104;
  }

  return result;
}

- (uint64_t)sh_isCoreToldNotToResumeAudioRecordingAfterInterruption
{
  result = [self sh_isShazamCoreError];
  if (result)
  {
    return [self code] == 105;
  }

  return result;
}

- (uint64_t)sh_isCoreServerResponseWorkerAlreadyRegistered
{
  result = [self sh_isShazamCoreError];
  if (result)
  {
    return [self code] == 106;
  }

  return result;
}

@end