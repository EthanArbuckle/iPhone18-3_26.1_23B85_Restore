@interface AWDBiometricKitDailyUpdate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)baseTemplateFeatureCountAtIndex:(unint64_t)a3;
- (unsigned)bioCheckInfoAtIndex:(unint64_t)a3;
- (unsigned)bioCheckResultAtIndex:(unint64_t)a3;
- (unsigned)matchingBinCountsAtIndex:(unint64_t)a3;
- (unsigned)matchingIdentityCountsAtIndex:(unint64_t)a3;
- (unsigned)matchingTemplateTypeCountsAtIndex:(unint64_t)a3;
- (unsigned)onlineUpdateTemplateFeatureCountAtIndex:(unint64_t)a3;
- (unsigned)passcodeUpdateAtIndex:(unint64_t)a3;
- (unsigned)passcodeUpdateTemplateFeatureCountAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasApplePayEnabled:(BOOL)a3;
- (void)setHasAttentionDetectionEnabled:(BOOL)a3;
- (void)setHasAutoRetryEnabled:(BOOL)a3;
- (void)setHasBaseTemplateFeatureCountType0Identity0:(BOOL)a3;
- (void)setHasBaseTemplateFeatureCountType0Identity1:(BOOL)a3;
- (void)setHasBaseTemplateFeatureCountType1Identity0:(BOOL)a3;
- (void)setHasBaseTemplateFeatureCountType1Identity1:(BOOL)a3;
- (void)setHasBioLockoutCount:(BOOL)a3;
- (void)setHasCameraInterlock:(BOOL)a3;
- (void)setHasCombinedSequenceEnabled:(BOOL)a3;
- (void)setHasEnrolledIdentityCount:(BOOL)a3;
- (void)setHasEnrolledTemplateCountTotal:(BOOL)a3;
- (void)setHasEnrolledTemplateCountType0:(BOOL)a3;
- (void)setHasEnrolledTemplateCountType1:(BOOL)a3;
- (void)setHasMatchAttemptsFaceDetectedType0:(BOOL)a3;
- (void)setHasMatchAttemptsFaceDetectedType1:(BOOL)a3;
- (void)setHasMatchAttemptsFailedType0:(BOOL)a3;
- (void)setHasMatchAttemptsFailedType1:(BOOL)a3;
- (void)setHasMatchAttemptsSuccessfulType0:(BOOL)a3;
- (void)setHasMatchAttemptsSuccessfulType1:(BOOL)a3;
- (void)setHasMatchAttemptsType0:(BOOL)a3;
- (void)setHasMatchAttemptsType1:(BOOL)a3;
- (void)setHasMatchingCountDouble01:(BOOL)a3;
- (void)setHasMatchingCountDouble02:(BOOL)a3;
- (void)setHasMatchingCountDouble03:(BOOL)a3;
- (void)setHasMatchingCountDouble04:(BOOL)a3;
- (void)setHasMatchingTemplateCountType0Identity0:(BOOL)a3;
- (void)setHasMatchingTemplateCountType0Identity1:(BOOL)a3;
- (void)setHasMatchingTemplateCountType1Identity0:(BOOL)a3;
- (void)setHasMatchingTemplateCountType1Identity1:(BOOL)a3;
- (void)setHasOnlineUnlockCount:(BOOL)a3;
- (void)setHasOnlineUnlockCountType0:(BOOL)a3;
- (void)setHasOnlineUnlockCountType1:(BOOL)a3;
- (void)setHasOnlineUpdateTemplateFeatureCountType0Identity0:(BOOL)a3;
- (void)setHasOnlineUpdateTemplateFeatureCountType0Identity1:(BOOL)a3;
- (void)setHasOnlineUpdateTemplateFeatureCountType1Identity0:(BOOL)a3;
- (void)setHasOnlineUpdateTemplateFeatureCountType1Identity1:(BOOL)a3;
- (void)setHasPasscodeUpdateTemplateFeatureCountType0Identity0:(BOOL)a3;
- (void)setHasPasscodeUpdateTemplateFeatureCountType0Identity1:(BOOL)a3;
- (void)setHasPasscodeUpdateTemplateFeatureCountType1Identity0:(BOOL)a3;
- (void)setHasPasscodeUpdateTemplateFeatureCountType1Identity1:(BOOL)a3;
- (void)setHasShortTermUnlockCount:(BOOL)a3;
- (void)setHasShortTermUnlockCountType0:(BOOL)a3;
- (void)setHasShortTermUnlockCountType1:(BOOL)a3;
- (void)setHasStaticUnlockCount:(BOOL)a3;
- (void)setHasStaticUnlockCountType0:(BOOL)a3;
- (void)setHasStaticUnlockCountType1:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTotalMatchAttempts:(BOOL)a3;
- (void)setHasTotalMatchAttemptsFaceDetected:(BOOL)a3;
- (void)setHasTotalMatchAttemptsFailed:(BOOL)a3;
- (void)setHasTotalMatchAttemptsSuccessful:(BOOL)a3;
- (void)setHasType1MatchEnabled:(BOOL)a3;
- (void)setHasUnlockEnabled:(BOOL)a3;
- (void)setHasYogiErrorDays:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDBiometricKitDailyUpdate

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDBiometricKitDailyUpdate;
  [(AWDBiometricKitDailyUpdate *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (unsigned)baseTemplateFeatureCountAtIndex:(unint64_t)a3
{
  p_baseTemplateFeatureCounts = &self->_baseTemplateFeatureCounts;
  count = self->_baseTemplateFeatureCounts.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x29EDB8DD0];
    v7 = *MEMORY[0x29EDB8D10];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_baseTemplateFeatureCounts->list[a3];
}

- (unsigned)onlineUpdateTemplateFeatureCountAtIndex:(unint64_t)a3
{
  p_onlineUpdateTemplateFeatureCounts = &self->_onlineUpdateTemplateFeatureCounts;
  count = self->_onlineUpdateTemplateFeatureCounts.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x29EDB8DD0];
    v7 = *MEMORY[0x29EDB8D10];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_onlineUpdateTemplateFeatureCounts->list[a3];
}

- (unsigned)passcodeUpdateTemplateFeatureCountAtIndex:(unint64_t)a3
{
  p_passcodeUpdateTemplateFeatureCounts = &self->_passcodeUpdateTemplateFeatureCounts;
  count = self->_passcodeUpdateTemplateFeatureCounts.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x29EDB8DD0];
    v7 = *MEMORY[0x29EDB8D10];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_passcodeUpdateTemplateFeatureCounts->list[a3];
}

- (void)setHasUnlockEnabled:(BOOL)a3
{
  v3 = 0x80000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3);
}

- (void)setHasApplePayEnabled:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (void)setHasAttentionDetectionEnabled:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (void)setHasMatchingCountDouble01:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasMatchingCountDouble02:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasMatchingCountDouble03:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasMatchingCountDouble04:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasStaticUnlockCount:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasOnlineUnlockCount:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasShortTermUnlockCount:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (unsigned)matchingBinCountsAtIndex:(unint64_t)a3
{
  p_matchingBinCounts = &self->_matchingBinCounts;
  count = self->_matchingBinCounts.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x29EDB8DD0];
    v7 = *MEMORY[0x29EDB8D10];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_matchingBinCounts->list[a3];
}

- (unsigned)matchingTemplateTypeCountsAtIndex:(unint64_t)a3
{
  p_matchingTemplateTypeCounts = &self->_matchingTemplateTypeCounts;
  count = self->_matchingTemplateTypeCounts.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x29EDB8DD0];
    v7 = *MEMORY[0x29EDB8D10];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_matchingTemplateTypeCounts->list[a3];
}

- (void)setHasCameraInterlock:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3);
}

- (unsigned)bioCheckInfoAtIndex:(unint64_t)a3
{
  p_bioCheckInfos = &self->_bioCheckInfos;
  count = self->_bioCheckInfos.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x29EDB8DD0];
    v7 = *MEMORY[0x29EDB8D10];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_bioCheckInfos->list[a3];
}

- (unsigned)bioCheckResultAtIndex:(unint64_t)a3
{
  p_bioCheckResults = &self->_bioCheckResults;
  count = self->_bioCheckResults.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x29EDB8DD0];
    v7 = *MEMORY[0x29EDB8D10];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_bioCheckResults->list[a3];
}

- (unsigned)passcodeUpdateAtIndex:(unint64_t)a3
{
  p_passcodeUpdates = &self->_passcodeUpdates;
  count = self->_passcodeUpdates.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x29EDB8DD0];
    v7 = *MEMORY[0x29EDB8D10];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_passcodeUpdates->list[a3];
}

- (void)setHasEnrolledIdentityCount:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (unsigned)matchingIdentityCountsAtIndex:(unint64_t)a3
{
  p_matchingIdentityCounts = &self->_matchingIdentityCounts;
  count = self->_matchingIdentityCounts.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x29EDB8DD0];
    v7 = *MEMORY[0x29EDB8D10];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_matchingIdentityCounts->list[a3];
}

- (void)setHasCombinedSequenceEnabled:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3);
}

- (void)setHasBioLockoutCount:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasAutoRetryEnabled:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3);
}

- (void)setHasYogiErrorDays:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (void)setHasTotalMatchAttempts:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasTotalMatchAttemptsSuccessful:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (void)setHasTotalMatchAttemptsFailed:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasTotalMatchAttemptsFaceDetected:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasMatchAttemptsType0:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasMatchAttemptsSuccessfulType0:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasMatchAttemptsFailedType0:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasMatchAttemptsFaceDetectedType0:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasMatchAttemptsType1:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasMatchAttemptsSuccessfulType1:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasMatchAttemptsFailedType1:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasMatchAttemptsFaceDetectedType1:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasStaticUnlockCountType0:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasOnlineUnlockCountType0:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasShortTermUnlockCountType0:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasStaticUnlockCountType1:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasOnlineUnlockCountType1:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasShortTermUnlockCountType1:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasBaseTemplateFeatureCountType0Identity0:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasOnlineUpdateTemplateFeatureCountType0Identity0:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasPasscodeUpdateTemplateFeatureCountType0Identity0:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasBaseTemplateFeatureCountType0Identity1:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasOnlineUpdateTemplateFeatureCountType0Identity1:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasPasscodeUpdateTemplateFeatureCountType0Identity1:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasBaseTemplateFeatureCountType1Identity0:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasOnlineUpdateTemplateFeatureCountType1Identity0:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasPasscodeUpdateTemplateFeatureCountType1Identity0:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasBaseTemplateFeatureCountType1Identity1:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasOnlineUpdateTemplateFeatureCountType1Identity1:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasPasscodeUpdateTemplateFeatureCountType1Identity1:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasType1MatchEnabled:(BOOL)a3
{
  v3 = 0x40000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3);
}

- (void)setHasEnrolledTemplateCountType0:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasEnrolledTemplateCountType1:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasEnrolledTemplateCountTotal:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasMatchingTemplateCountType0Identity0:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasMatchingTemplateCountType0Identity1:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasMatchingTemplateCountType1Identity0:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasMatchingTemplateCountType1Identity1:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v8.receiver = self;
  v8.super_class = AWDBiometricKitDailyUpdate;
  v4 = [(AWDBiometricKitDailyUpdate *)&v8 description];
  v5 = [(AWDBiometricKitDailyUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  v5 = PBRepeatedUInt32NSArray();
  [v3 setObject:v5 forKey:@"baseTemplateFeatureCount"];

  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"onlineUpdateTemplateFeatureCount"];

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"passcodeUpdateTemplateFeatureCount"];

  has = self->_has;
  if ((*&has & 0x80000000000000) != 0)
  {
    v22 = [MEMORY[0x29EDBA070] numberWithBool:self->_unlockEnabled];
    [v3 setObject:v22 forKey:@"unlockEnabled"];

    has = self->_has;
    if ((*&has & 0x2000000000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x4000000000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_65;
    }
  }

  else if ((*&has & 0x2000000000000) == 0)
  {
    goto LABEL_5;
  }

  v23 = [MEMORY[0x29EDBA070] numberWithBool:self->_applePayEnabled];
  [v3 setObject:v23 forKey:@"applePayEnabled"];

  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_66;
  }

LABEL_65:
  v24 = [MEMORY[0x29EDBA070] numberWithBool:self->_attentionDetectionEnabled];
  [v3 setObject:v24 forKey:@"attentionDetectionEnabled"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_7:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_67;
  }

LABEL_66:
  v25 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchingCountDouble01];
  [v3 setObject:v25 forKey:@"matchingCountDouble01"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_68;
  }

LABEL_67:
  v26 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchingCountDouble02];
  [v3 setObject:v26 forKey:@"matchingCountDouble02"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_69;
  }

LABEL_68:
  v27 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchingCountDouble03];
  [v3 setObject:v27 forKey:@"matchingCountDouble03"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

LABEL_69:
  v28 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchingCountDouble04];
  [v3 setObject:v28 forKey:@"matchingCountDouble04"];

  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_71;
  }

LABEL_70:
  v29 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_staticUnlockCount];
  [v3 setObject:v29 forKey:@"staticUnlockCount"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_71:
  v30 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_onlineUnlockCount];
  [v3 setObject:v30 forKey:@"onlineUnlockCount"];

  if ((*&self->_has & 0x4000000000) != 0)
  {
LABEL_13:
    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_shortTermUnlockCount];
    [v3 setObject:v9 forKey:@"shortTermUnlockCount"];
  }

LABEL_14:
  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"matchingBinCounts"];

  v11 = PBRepeatedUInt32NSArray();
  [v3 setObject:v11 forKey:@"matchingTemplateTypeCounts"];

  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    v12 = [MEMORY[0x29EDBA070] numberWithBool:self->_cameraInterlock];
    [v3 setObject:v12 forKey:@"cameraInterlock"];
  }

  v13 = PBRepeatedUInt32NSArray();
  [v3 setObject:v13 forKey:@"bioCheckInfo"];

  v14 = PBRepeatedUInt32NSArray();
  [v3 setObject:v14 forKey:@"bioCheckResult"];

  v15 = PBRepeatedUInt32NSArray();
  [v3 setObject:v15 forKey:@"passcodeUpdate"];

  if ((*&self->_has & 0x80) != 0)
  {
    v16 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_enrolledIdentityCount];
    [v3 setObject:v16 forKey:@"enrolledIdentityCount"];
  }

  v17 = PBRepeatedUInt32NSArray();
  [v3 setObject:v17 forKey:@"matchingIdentityCounts"];

  v18 = self->_has;
  if ((*&v18 & 0x20000000000000) != 0)
  {
    v31 = [MEMORY[0x29EDBA070] numberWithBool:self->_combinedSequenceEnabled];
    [v3 setObject:v31 forKey:@"combinedSequenceEnabled"];

    v18 = self->_has;
    if ((*&v18 & 1) == 0)
    {
LABEL_20:
      if ((*&v18 & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_75;
    }
  }

  else if ((*&v18 & 1) == 0)
  {
    goto LABEL_20;
  }

  v32 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_bioLockoutTime];
  [v3 setObject:v32 forKey:@"bioLockoutTime"];

  v18 = self->_has;
  if ((*&v18 & 0x40) == 0)
  {
LABEL_21:
    if ((*&v18 & 0x8000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_76;
  }

LABEL_75:
  v33 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioLockoutCount];
  [v3 setObject:v33 forKey:@"bioLockoutCount"];

  v18 = self->_has;
  if ((*&v18 & 0x8000000000000) == 0)
  {
LABEL_22:
    if ((*&v18 & 0x1000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

LABEL_76:
  v34 = [MEMORY[0x29EDBA070] numberWithBool:self->_autoRetryEnabled];
  [v3 setObject:v34 forKey:@"autoRetryEnabled"];

  v18 = self->_has;
  if ((*&v18 & 0x1000000000000) == 0)
  {
LABEL_23:
    if ((*&v18 & 0x100000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_78;
  }

LABEL_77:
  v35 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_yogiErrorDays];
  [v3 setObject:v35 forKey:@"yogiErrorDays"];

  v18 = self->_has;
  if ((*&v18 & 0x100000000000) == 0)
  {
LABEL_24:
    if ((*&v18 & 0x800000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_79;
  }

LABEL_78:
  v36 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_totalMatchAttempts];
  [v3 setObject:v36 forKey:@"totalMatchAttempts"];

  v18 = self->_has;
  if ((*&v18 & 0x800000000000) == 0)
  {
LABEL_25:
    if ((*&v18 & 0x400000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_80;
  }

LABEL_79:
  v37 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_totalMatchAttemptsSuccessful];
  [v3 setObject:v37 forKey:@"totalMatchAttemptsSuccessful"];

  v18 = self->_has;
  if ((*&v18 & 0x400000000000) == 0)
  {
LABEL_26:
    if ((*&v18 & 0x200000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_81;
  }

LABEL_80:
  v38 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_totalMatchAttemptsFailed];
  [v3 setObject:v38 forKey:@"totalMatchAttemptsFailed"];

  v18 = self->_has;
  if ((*&v18 & 0x200000000000) == 0)
  {
LABEL_27:
    if ((*&v18 & 0x20000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_82;
  }

LABEL_81:
  v39 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_totalMatchAttemptsFaceDetected];
  [v3 setObject:v39 forKey:@"totalMatchAttemptsFaceDetected"];

  v18 = self->_has;
  if ((*&v18 & 0x20000) == 0)
  {
LABEL_28:
    if ((*&v18 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_83;
  }

LABEL_82:
  v40 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchAttemptsType0];
  [v3 setObject:v40 forKey:@"matchAttemptsType0"];

  v18 = self->_has;
  if ((*&v18 & 0x8000) == 0)
  {
LABEL_29:
    if ((*&v18 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_84;
  }

LABEL_83:
  v41 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchAttemptsSuccessfulType0];
  [v3 setObject:v41 forKey:@"matchAttemptsSuccessfulType0"];

  v18 = self->_has;
  if ((*&v18 & 0x2000) == 0)
  {
LABEL_30:
    if ((*&v18 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_85;
  }

LABEL_84:
  v42 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchAttemptsFailedType0];
  [v3 setObject:v42 forKey:@"matchAttemptsFailedType0"];

  v18 = self->_has;
  if ((*&v18 & 0x800) == 0)
  {
LABEL_31:
    if ((*&v18 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_86;
  }

LABEL_85:
  v43 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchAttemptsFaceDetectedType0];
  [v3 setObject:v43 forKey:@"matchAttemptsFaceDetectedType0"];

  v18 = self->_has;
  if ((*&v18 & 0x40000) == 0)
  {
LABEL_32:
    if ((*&v18 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_87;
  }

LABEL_86:
  v44 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchAttemptsType1];
  [v3 setObject:v44 forKey:@"matchAttemptsType1"];

  v18 = self->_has;
  if ((*&v18 & 0x10000) == 0)
  {
LABEL_33:
    if ((*&v18 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_88;
  }

LABEL_87:
  v45 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchAttemptsSuccessfulType1];
  [v3 setObject:v45 forKey:@"matchAttemptsSuccessfulType1"];

  v18 = self->_has;
  if ((*&v18 & 0x4000) == 0)
  {
LABEL_34:
    if ((*&v18 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_89;
  }

LABEL_88:
  v46 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchAttemptsFailedType1];
  [v3 setObject:v46 forKey:@"matchAttemptsFailedType1"];

  v18 = self->_has;
  if ((*&v18 & 0x1000) == 0)
  {
LABEL_35:
    if ((*&v18 & 0x40000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_90;
  }

LABEL_89:
  v47 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchAttemptsFaceDetectedType1];
  [v3 setObject:v47 forKey:@"matchAttemptsFaceDetectedType1"];

  v18 = self->_has;
  if ((*&v18 & 0x40000000000) == 0)
  {
LABEL_36:
    if ((*&v18 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_91;
  }

LABEL_90:
  v48 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_staticUnlockCountType0];
  [v3 setObject:v48 forKey:@"staticUnlockCountType0"];

  v18 = self->_has;
  if ((*&v18 & 0x10000000) == 0)
  {
LABEL_37:
    if ((*&v18 & 0x8000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_92;
  }

LABEL_91:
  v49 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_onlineUnlockCountType0];
  [v3 setObject:v49 forKey:@"onlineUnlockCountType0"];

  v18 = self->_has;
  if ((*&v18 & 0x8000000000) == 0)
  {
LABEL_38:
    if ((*&v18 & 0x80000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_93;
  }

LABEL_92:
  v50 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_shortTermUnlockCountType0];
  [v3 setObject:v50 forKey:@"shortTermUnlockCountType0"];

  v18 = self->_has;
  if ((*&v18 & 0x80000000000) == 0)
  {
LABEL_39:
    if ((*&v18 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_94;
  }

LABEL_93:
  v51 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_staticUnlockCountType1];
  [v3 setObject:v51 forKey:@"staticUnlockCountType1"];

  v18 = self->_has;
  if ((*&v18 & 0x20000000) == 0)
  {
LABEL_40:
    if ((*&v18 & 0x10000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_95;
  }

LABEL_94:
  v52 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_onlineUnlockCountType1];
  [v3 setObject:v52 forKey:@"onlineUnlockCountType1"];

  v18 = self->_has;
  if ((*&v18 & 0x10000000000) == 0)
  {
LABEL_41:
    if ((*&v18 & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_96;
  }

LABEL_95:
  v53 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_shortTermUnlockCountType1];
  [v3 setObject:v53 forKey:@"shortTermUnlockCountType1"];

  v18 = self->_has;
  if ((*&v18 & 4) == 0)
  {
LABEL_42:
    if ((*&v18 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_97;
  }

LABEL_96:
  v54 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_baseTemplateFeatureCountType0Identity0];
  [v3 setObject:v54 forKey:@"baseTemplateFeatureCountType0Identity0"];

  v18 = self->_has;
  if ((*&v18 & 0x40000000) == 0)
  {
LABEL_43:
    if ((*&v18 & 0x400000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_98;
  }

LABEL_97:
  v55 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_onlineUpdateTemplateFeatureCountType0Identity0];
  [v3 setObject:v55 forKey:@"onlineUpdateTemplateFeatureCountType0Identity0"];

  v18 = self->_has;
  if ((*&v18 & 0x400000000) == 0)
  {
LABEL_44:
    if ((*&v18 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_99;
  }

LABEL_98:
  v56 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_passcodeUpdateTemplateFeatureCountType0Identity0];
  [v3 setObject:v56 forKey:@"passcodeUpdateTemplateFeatureCountType0Identity0"];

  v18 = self->_has;
  if ((*&v18 & 8) == 0)
  {
LABEL_45:
    if ((*&v18 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_100;
  }

LABEL_99:
  v57 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_baseTemplateFeatureCountType0Identity1];
  [v3 setObject:v57 forKey:@"baseTemplateFeatureCountType0Identity1"];

  v18 = self->_has;
  if ((*&v18 & 0x80000000) == 0)
  {
LABEL_46:
    if ((*&v18 & 0x800000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_101;
  }

LABEL_100:
  v58 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_onlineUpdateTemplateFeatureCountType0Identity1];
  [v3 setObject:v58 forKey:@"onlineUpdateTemplateFeatureCountType0Identity1"];

  v18 = self->_has;
  if ((*&v18 & 0x800000000) == 0)
  {
LABEL_47:
    if ((*&v18 & 0x10) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_102;
  }

LABEL_101:
  v59 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_passcodeUpdateTemplateFeatureCountType0Identity1];
  [v3 setObject:v59 forKey:@"passcodeUpdateTemplateFeatureCountType0Identity1"];

  v18 = self->_has;
  if ((*&v18 & 0x10) == 0)
  {
LABEL_48:
    if ((*&v18 & 0x100000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_103;
  }

LABEL_102:
  v60 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_baseTemplateFeatureCountType1Identity0];
  [v3 setObject:v60 forKey:@"baseTemplateFeatureCountType1Identity0"];

  v18 = self->_has;
  if ((*&v18 & 0x100000000) == 0)
  {
LABEL_49:
    if ((*&v18 & 0x1000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_104;
  }

LABEL_103:
  v61 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_onlineUpdateTemplateFeatureCountType1Identity0];
  [v3 setObject:v61 forKey:@"onlineUpdateTemplateFeatureCountType1Identity0"];

  v18 = self->_has;
  if ((*&v18 & 0x1000000000) == 0)
  {
LABEL_50:
    if ((*&v18 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_105;
  }

LABEL_104:
  v62 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_passcodeUpdateTemplateFeatureCountType1Identity0];
  [v3 setObject:v62 forKey:@"passcodeUpdateTemplateFeatureCountType1Identity0"];

  v18 = self->_has;
  if ((*&v18 & 0x20) == 0)
  {
LABEL_51:
    if ((*&v18 & 0x200000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_106;
  }

LABEL_105:
  v63 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_baseTemplateFeatureCountType1Identity1];
  [v3 setObject:v63 forKey:@"baseTemplateFeatureCountType1Identity1"];

  v18 = self->_has;
  if ((*&v18 & 0x200000000) == 0)
  {
LABEL_52:
    if ((*&v18 & 0x2000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_107;
  }

LABEL_106:
  v64 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_onlineUpdateTemplateFeatureCountType1Identity1];
  [v3 setObject:v64 forKey:@"onlineUpdateTemplateFeatureCountType1Identity1"];

  v18 = self->_has;
  if ((*&v18 & 0x2000000000) == 0)
  {
LABEL_53:
    if ((*&v18 & 0x40000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_108;
  }

LABEL_107:
  v65 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_passcodeUpdateTemplateFeatureCountType1Identity1];
  [v3 setObject:v65 forKey:@"passcodeUpdateTemplateFeatureCountType1Identity1"];

  v18 = self->_has;
  if ((*&v18 & 0x40000000000000) == 0)
  {
LABEL_54:
    if ((*&v18 & 0x200) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_109;
  }

LABEL_108:
  v66 = [MEMORY[0x29EDBA070] numberWithBool:self->_type1MatchEnabled];
  [v3 setObject:v66 forKey:@"type1MatchEnabled"];

  v18 = self->_has;
  if ((*&v18 & 0x200) == 0)
  {
LABEL_55:
    if ((*&v18 & 0x400) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_110;
  }

LABEL_109:
  v67 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_enrolledTemplateCountType0];
  [v3 setObject:v67 forKey:@"enrolledTemplateCountType0"];

  v18 = self->_has;
  if ((*&v18 & 0x400) == 0)
  {
LABEL_56:
    if ((*&v18 & 0x100) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_111;
  }

LABEL_110:
  v68 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_enrolledTemplateCountType1];
  [v3 setObject:v68 forKey:@"enrolledTemplateCountType1"];

  v18 = self->_has;
  if ((*&v18 & 0x100) == 0)
  {
LABEL_57:
    if ((*&v18 & 0x800000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_112;
  }

LABEL_111:
  v69 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_enrolledTemplateCountTotal];
  [v3 setObject:v69 forKey:@"enrolledTemplateCountTotal"];

  v18 = self->_has;
  if ((*&v18 & 0x800000) == 0)
  {
LABEL_58:
    if ((*&v18 & 0x1000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_113;
  }

LABEL_112:
  v70 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchingTemplateCountType0Identity0];
  [v3 setObject:v70 forKey:@"matchingTemplateCountType0Identity0"];

  v18 = self->_has;
  if ((*&v18 & 0x1000000) == 0)
  {
LABEL_59:
    if ((*&v18 & 0x2000000) == 0)
    {
      goto LABEL_60;
    }

LABEL_114:
    v72 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchingTemplateCountType1Identity0];
    [v3 setObject:v72 forKey:@"matchingTemplateCountType1Identity0"];

    if ((*&self->_has & 0x4000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_113:
  v71 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchingTemplateCountType0Identity1];
  [v3 setObject:v71 forKey:@"matchingTemplateCountType0Identity1"];

  v18 = self->_has;
  if ((*&v18 & 0x2000000) != 0)
  {
    goto LABEL_114;
  }

LABEL_60:
  if ((*&v18 & 0x4000000) != 0)
  {
LABEL_61:
    v19 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchingTemplateCountType1Identity1];
    [v3 setObject:v19 forKey:@"matchingTemplateCountType1Identity1"];
  }

LABEL_62:
  v20 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v81 = v4;
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v81;
  }

  if (self->_baseTemplateFeatureCounts.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_baseTemplateFeatureCounts.list[v6];
      PBDataWriterWriteUint32Field();
      v4 = v81;
      ++v6;
    }

    while (v6 < self->_baseTemplateFeatureCounts.count);
  }

  if (self->_onlineUpdateTemplateFeatureCounts.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_onlineUpdateTemplateFeatureCounts.list[v8];
      PBDataWriterWriteUint32Field();
      v4 = v81;
      ++v8;
    }

    while (v8 < self->_onlineUpdateTemplateFeatureCounts.count);
  }

  if (self->_passcodeUpdateTemplateFeatureCounts.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_passcodeUpdateTemplateFeatureCounts.list[v10];
      PBDataWriterWriteUint32Field();
      v4 = v81;
      ++v10;
    }

    while (v10 < self->_passcodeUpdateTemplateFeatureCounts.count);
  }

  has = self->_has;
  if ((*&has & 0x80000000000000) != 0)
  {
    unlockEnabled = self->_unlockEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v81;
    has = self->_has;
    if ((*&has & 0x2000000000000) == 0)
    {
LABEL_14:
      if ((*&has & 0x4000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_94;
    }
  }

  else if ((*&has & 0x2000000000000) == 0)
  {
    goto LABEL_14;
  }

  applePayEnabled = self->_applePayEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v81;
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_95;
  }

LABEL_94:
  attentionDetectionEnabled = self->_attentionDetectionEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v81;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_96;
  }

LABEL_95:
  matchingCountDouble01 = self->_matchingCountDouble01;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_97;
  }

LABEL_96:
  matchingCountDouble02 = self->_matchingCountDouble02;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_98;
  }

LABEL_97:
  matchingCountDouble03 = self->_matchingCountDouble03;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_99;
  }

LABEL_98:
  matchingCountDouble04 = self->_matchingCountDouble04;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_100;
  }

LABEL_99:
  staticUnlockCount = self->_staticUnlockCount;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_100:
  onlineUnlockCount = self->_onlineUnlockCount;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  if ((*&self->_has & 0x4000000000) != 0)
  {
LABEL_22:
    shortTermUnlockCount = self->_shortTermUnlockCount;
    PBDataWriterWriteUint32Field();
    v4 = v81;
  }

LABEL_23:
  if (self->_matchingBinCounts.count)
  {
    v14 = 0;
    do
    {
      v15 = self->_matchingBinCounts.list[v14];
      PBDataWriterWriteUint32Field();
      v4 = v81;
      ++v14;
    }

    while (v14 < self->_matchingBinCounts.count);
  }

  if (self->_matchingTemplateTypeCounts.count)
  {
    v16 = 0;
    do
    {
      v17 = self->_matchingTemplateTypeCounts.list[v16];
      PBDataWriterWriteUint32Field();
      v4 = v81;
      ++v16;
    }

    while (v16 < self->_matchingTemplateTypeCounts.count);
  }

  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    cameraInterlock = self->_cameraInterlock;
    PBDataWriterWriteBOOLField();
    v4 = v81;
  }

  if (self->_bioCheckInfos.count)
  {
    v19 = 0;
    do
    {
      v20 = self->_bioCheckInfos.list[v19];
      PBDataWriterWriteUint32Field();
      v4 = v81;
      ++v19;
    }

    while (v19 < self->_bioCheckInfos.count);
  }

  if (self->_bioCheckResults.count)
  {
    v21 = 0;
    do
    {
      v22 = self->_bioCheckResults.list[v21];
      PBDataWriterWriteUint32Field();
      v4 = v81;
      ++v21;
    }

    while (v21 < self->_bioCheckResults.count);
  }

  if (self->_passcodeUpdates.count)
  {
    v23 = 0;
    do
    {
      v24 = self->_passcodeUpdates.list[v23];
      PBDataWriterWriteUint32Field();
      v4 = v81;
      ++v23;
    }

    while (v23 < self->_passcodeUpdates.count);
  }

  if ((*&self->_has & 0x80) != 0)
  {
    enrolledIdentityCount = self->_enrolledIdentityCount;
    PBDataWriterWriteUint32Field();
    v4 = v81;
  }

  if (self->_matchingIdentityCounts.count)
  {
    v26 = 0;
    do
    {
      v27 = self->_matchingIdentityCounts.list[v26];
      PBDataWriterWriteUint32Field();
      v4 = v81;
      ++v26;
    }

    while (v26 < self->_matchingIdentityCounts.count);
  }

  v28 = self->_has;
  if ((*&v28 & 0x20000000000000) != 0)
  {
    combinedSequenceEnabled = self->_combinedSequenceEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v81;
    v28 = self->_has;
    if ((*&v28 & 1) == 0)
    {
LABEL_47:
      if ((*&v28 & 0x40) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_104;
    }
  }

  else if ((*&v28 & 1) == 0)
  {
    goto LABEL_47;
  }

  bioLockoutTime = self->_bioLockoutTime;
  PBDataWriterWriteUint64Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x40) == 0)
  {
LABEL_48:
    if ((*&v28 & 0x8000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_105;
  }

LABEL_104:
  bioLockoutCount = self->_bioLockoutCount;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x8000000000000) == 0)
  {
LABEL_49:
    if ((*&v28 & 0x1000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_106;
  }

LABEL_105:
  autoRetryEnabled = self->_autoRetryEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x1000000000000) == 0)
  {
LABEL_50:
    if ((*&v28 & 0x100000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_107;
  }

LABEL_106:
  yogiErrorDays = self->_yogiErrorDays;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x100000000000) == 0)
  {
LABEL_51:
    if ((*&v28 & 0x800000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_108;
  }

LABEL_107:
  totalMatchAttempts = self->_totalMatchAttempts;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x800000000000) == 0)
  {
LABEL_52:
    if ((*&v28 & 0x400000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_109;
  }

LABEL_108:
  totalMatchAttemptsSuccessful = self->_totalMatchAttemptsSuccessful;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x400000000000) == 0)
  {
LABEL_53:
    if ((*&v28 & 0x200000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_110;
  }

LABEL_109:
  totalMatchAttemptsFailed = self->_totalMatchAttemptsFailed;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x200000000000) == 0)
  {
LABEL_54:
    if ((*&v28 & 0x20000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_111;
  }

LABEL_110:
  totalMatchAttemptsFaceDetected = self->_totalMatchAttemptsFaceDetected;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x20000) == 0)
  {
LABEL_55:
    if ((*&v28 & 0x8000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_112;
  }

LABEL_111:
  matchAttemptsType0 = self->_matchAttemptsType0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x8000) == 0)
  {
LABEL_56:
    if ((*&v28 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_113;
  }

LABEL_112:
  matchAttemptsSuccessfulType0 = self->_matchAttemptsSuccessfulType0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x2000) == 0)
  {
LABEL_57:
    if ((*&v28 & 0x800) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_114;
  }

LABEL_113:
  matchAttemptsFailedType0 = self->_matchAttemptsFailedType0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x800) == 0)
  {
LABEL_58:
    if ((*&v28 & 0x40000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_115;
  }

LABEL_114:
  matchAttemptsFaceDetectedType0 = self->_matchAttemptsFaceDetectedType0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x40000) == 0)
  {
LABEL_59:
    if ((*&v28 & 0x10000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_116;
  }

LABEL_115:
  matchAttemptsType1 = self->_matchAttemptsType1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x10000) == 0)
  {
LABEL_60:
    if ((*&v28 & 0x4000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_117;
  }

LABEL_116:
  matchAttemptsSuccessfulType1 = self->_matchAttemptsSuccessfulType1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x4000) == 0)
  {
LABEL_61:
    if ((*&v28 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_118;
  }

LABEL_117:
  matchAttemptsFailedType1 = self->_matchAttemptsFailedType1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x1000) == 0)
  {
LABEL_62:
    if ((*&v28 & 0x40000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_119;
  }

LABEL_118:
  matchAttemptsFaceDetectedType1 = self->_matchAttemptsFaceDetectedType1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x40000000000) == 0)
  {
LABEL_63:
    if ((*&v28 & 0x10000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_120;
  }

LABEL_119:
  staticUnlockCountType0 = self->_staticUnlockCountType0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x10000000) == 0)
  {
LABEL_64:
    if ((*&v28 & 0x8000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_121;
  }

LABEL_120:
  onlineUnlockCountType0 = self->_onlineUnlockCountType0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x8000000000) == 0)
  {
LABEL_65:
    if ((*&v28 & 0x80000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_122;
  }

LABEL_121:
  shortTermUnlockCountType0 = self->_shortTermUnlockCountType0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x80000000000) == 0)
  {
LABEL_66:
    if ((*&v28 & 0x20000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_123;
  }

LABEL_122:
  staticUnlockCountType1 = self->_staticUnlockCountType1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x20000000) == 0)
  {
LABEL_67:
    if ((*&v28 & 0x10000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_124;
  }

LABEL_123:
  onlineUnlockCountType1 = self->_onlineUnlockCountType1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x10000000000) == 0)
  {
LABEL_68:
    if ((*&v28 & 4) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_125;
  }

LABEL_124:
  shortTermUnlockCountType1 = self->_shortTermUnlockCountType1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 4) == 0)
  {
LABEL_69:
    if ((*&v28 & 0x40000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_126;
  }

LABEL_125:
  baseTemplateFeatureCountType0Identity0 = self->_baseTemplateFeatureCountType0Identity0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x40000000) == 0)
  {
LABEL_70:
    if ((*&v28 & 0x400000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_127;
  }

LABEL_126:
  onlineUpdateTemplateFeatureCountType0Identity0 = self->_onlineUpdateTemplateFeatureCountType0Identity0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x400000000) == 0)
  {
LABEL_71:
    if ((*&v28 & 8) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_128;
  }

LABEL_127:
  passcodeUpdateTemplateFeatureCountType0Identity0 = self->_passcodeUpdateTemplateFeatureCountType0Identity0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 8) == 0)
  {
LABEL_72:
    if ((*&v28 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_129;
  }

LABEL_128:
  baseTemplateFeatureCountType0Identity1 = self->_baseTemplateFeatureCountType0Identity1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x80000000) == 0)
  {
LABEL_73:
    if ((*&v28 & 0x800000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_130;
  }

LABEL_129:
  onlineUpdateTemplateFeatureCountType0Identity1 = self->_onlineUpdateTemplateFeatureCountType0Identity1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x800000000) == 0)
  {
LABEL_74:
    if ((*&v28 & 0x10) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_131;
  }

LABEL_130:
  passcodeUpdateTemplateFeatureCountType0Identity1 = self->_passcodeUpdateTemplateFeatureCountType0Identity1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x10) == 0)
  {
LABEL_75:
    if ((*&v28 & 0x100000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_132;
  }

LABEL_131:
  baseTemplateFeatureCountType1Identity0 = self->_baseTemplateFeatureCountType1Identity0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x100000000) == 0)
  {
LABEL_76:
    if ((*&v28 & 0x1000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_133;
  }

LABEL_132:
  onlineUpdateTemplateFeatureCountType1Identity0 = self->_onlineUpdateTemplateFeatureCountType1Identity0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x1000000000) == 0)
  {
LABEL_77:
    if ((*&v28 & 0x20) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_134;
  }

LABEL_133:
  passcodeUpdateTemplateFeatureCountType1Identity0 = self->_passcodeUpdateTemplateFeatureCountType1Identity0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x20) == 0)
  {
LABEL_78:
    if ((*&v28 & 0x200000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_135;
  }

LABEL_134:
  baseTemplateFeatureCountType1Identity1 = self->_baseTemplateFeatureCountType1Identity1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x200000000) == 0)
  {
LABEL_79:
    if ((*&v28 & 0x2000000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_136;
  }

LABEL_135:
  onlineUpdateTemplateFeatureCountType1Identity1 = self->_onlineUpdateTemplateFeatureCountType1Identity1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x2000000000) == 0)
  {
LABEL_80:
    if ((*&v28 & 0x40000000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_137;
  }

LABEL_136:
  passcodeUpdateTemplateFeatureCountType1Identity1 = self->_passcodeUpdateTemplateFeatureCountType1Identity1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x40000000000000) == 0)
  {
LABEL_81:
    if ((*&v28 & 0x200) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_138;
  }

LABEL_137:
  type1MatchEnabled = self->_type1MatchEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x200) == 0)
  {
LABEL_82:
    if ((*&v28 & 0x400) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_139;
  }

LABEL_138:
  enrolledTemplateCountType0 = self->_enrolledTemplateCountType0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x400) == 0)
  {
LABEL_83:
    if ((*&v28 & 0x100) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_140;
  }

LABEL_139:
  enrolledTemplateCountType1 = self->_enrolledTemplateCountType1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x100) == 0)
  {
LABEL_84:
    if ((*&v28 & 0x800000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_141;
  }

LABEL_140:
  enrolledTemplateCountTotal = self->_enrolledTemplateCountTotal;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x800000) == 0)
  {
LABEL_85:
    if ((*&v28 & 0x1000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_142;
  }

LABEL_141:
  matchingTemplateCountType0Identity0 = self->_matchingTemplateCountType0Identity0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x1000000) == 0)
  {
LABEL_86:
    if ((*&v28 & 0x2000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_143;
  }

LABEL_142:
  matchingTemplateCountType0Identity1 = self->_matchingTemplateCountType0Identity1;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  v28 = self->_has;
  if ((*&v28 & 0x2000000) == 0)
  {
LABEL_87:
    if ((*&v28 & 0x4000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_143:
  matchingTemplateCountType1Identity0 = self->_matchingTemplateCountType1Identity0;
  PBDataWriterWriteUint32Field();
  v4 = v81;
  if ((*&self->_has & 0x4000000) != 0)
  {
LABEL_88:
    matchingTemplateCountType1Identity1 = self->_matchingTemplateCountType1Identity1;
    PBDataWriterWriteUint32Field();
    v4 = v81;
  }

LABEL_89:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[29] = self->_timestamp;
    *(v4 + 436) |= 2uLL;
  }

  v34 = v4;
  if ([(AWDBiometricKitDailyUpdate *)self baseTemplateFeatureCountsCount])
  {
    [v34 clearBaseTemplateFeatureCounts];
    v5 = [(AWDBiometricKitDailyUpdate *)self baseTemplateFeatureCountsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v34 addBaseTemplateFeatureCount:{-[AWDBiometricKitDailyUpdate baseTemplateFeatureCountAtIndex:](self, "baseTemplateFeatureCountAtIndex:", i)}];
      }
    }
  }

  if ([(AWDBiometricKitDailyUpdate *)self onlineUpdateTemplateFeatureCountsCount])
  {
    [v34 clearOnlineUpdateTemplateFeatureCounts];
    v8 = [(AWDBiometricKitDailyUpdate *)self onlineUpdateTemplateFeatureCountsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [v34 addOnlineUpdateTemplateFeatureCount:{-[AWDBiometricKitDailyUpdate onlineUpdateTemplateFeatureCountAtIndex:](self, "onlineUpdateTemplateFeatureCountAtIndex:", j)}];
      }
    }
  }

  if ([(AWDBiometricKitDailyUpdate *)self passcodeUpdateTemplateFeatureCountsCount])
  {
    [v34 clearPasscodeUpdateTemplateFeatureCounts];
    v11 = [(AWDBiometricKitDailyUpdate *)self passcodeUpdateTemplateFeatureCountsCount];
    if (v11)
    {
      v12 = v11;
      for (k = 0; k != v12; ++k)
      {
        [v34 addPasscodeUpdateTemplateFeatureCount:{-[AWDBiometricKitDailyUpdate passcodeUpdateTemplateFeatureCountAtIndex:](self, "passcodeUpdateTemplateFeatureCountAtIndex:", k)}];
      }
    }
  }

  has = self->_has;
  if ((*&has & 0x80000000000000) != 0)
  {
    v34[434] = self->_unlockEnabled;
    *(v34 + 436) |= 0x80000000000000uLL;
    has = self->_has;
    if ((*&has & 0x2000000000000) == 0)
    {
LABEL_17:
      if ((*&has & 0x4000000000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_103;
    }
  }

  else if ((*&has & 0x2000000000000) == 0)
  {
    goto LABEL_17;
  }

  v34[428] = self->_applePayEnabled;
  *(v34 + 436) |= 0x2000000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_104;
  }

LABEL_103:
  v34[429] = self->_attentionDetectionEnabled;
  *(v34 + 436) |= 0x4000000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v34 + 77) = self->_matchingCountDouble01;
  *(v34 + 436) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v34 + 78) = self->_matchingCountDouble02;
  *(v34 + 436) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v34 + 79) = self->_matchingCountDouble03;
  *(v34 + 436) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_22:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v34 + 80) = self->_matchingCountDouble04;
  *(v34 + 436) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_109:
    *(v34 + 85) = self->_onlineUnlockCount;
    *(v34 + 436) |= 0x8000000uLL;
    if ((*&self->_has & 0x4000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_108:
  *(v34 + 99) = self->_staticUnlockCount;
  *(v34 + 436) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    goto LABEL_109;
  }

LABEL_24:
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_25:
    *(v34 + 96) = self->_shortTermUnlockCount;
    *(v34 + 436) |= 0x4000000000uLL;
  }

LABEL_26:
  if ([(AWDBiometricKitDailyUpdate *)self matchingBinCountsCount])
  {
    [v34 clearMatchingBinCounts];
    v15 = [(AWDBiometricKitDailyUpdate *)self matchingBinCountsCount];
    if (v15)
    {
      v16 = v15;
      for (m = 0; m != v16; ++m)
      {
        [v34 addMatchingBinCounts:{-[AWDBiometricKitDailyUpdate matchingBinCountsAtIndex:](self, "matchingBinCountsAtIndex:", m)}];
      }
    }
  }

  if ([(AWDBiometricKitDailyUpdate *)self matchingTemplateTypeCountsCount])
  {
    [v34 clearMatchingTemplateTypeCounts];
    v18 = [(AWDBiometricKitDailyUpdate *)self matchingTemplateTypeCountsCount];
    if (v18)
    {
      v19 = v18;
      for (n = 0; n != v19; ++n)
      {
        [v34 addMatchingTemplateTypeCounts:{-[AWDBiometricKitDailyUpdate matchingTemplateTypeCountsAtIndex:](self, "matchingTemplateTypeCountsAtIndex:", n)}];
      }
    }
  }

  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    v34[431] = self->_cameraInterlock;
    *(v34 + 436) |= 0x10000000000000uLL;
  }

  if ([(AWDBiometricKitDailyUpdate *)self bioCheckInfosCount])
  {
    [v34 clearBioCheckInfos];
    v21 = [(AWDBiometricKitDailyUpdate *)self bioCheckInfosCount];
    if (v21)
    {
      v22 = v21;
      for (ii = 0; ii != v22; ++ii)
      {
        [v34 addBioCheckInfo:{-[AWDBiometricKitDailyUpdate bioCheckInfoAtIndex:](self, "bioCheckInfoAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDBiometricKitDailyUpdate *)self bioCheckResultsCount])
  {
    [v34 clearBioCheckResults];
    v24 = [(AWDBiometricKitDailyUpdate *)self bioCheckResultsCount];
    if (v24)
    {
      v25 = v24;
      for (jj = 0; jj != v25; ++jj)
      {
        [v34 addBioCheckResult:{-[AWDBiometricKitDailyUpdate bioCheckResultAtIndex:](self, "bioCheckResultAtIndex:", jj)}];
      }
    }
  }

  if ([(AWDBiometricKitDailyUpdate *)self passcodeUpdatesCount])
  {
    [v34 clearPasscodeUpdates];
    v27 = [(AWDBiometricKitDailyUpdate *)self passcodeUpdatesCount];
    if (v27)
    {
      v28 = v27;
      for (kk = 0; kk != v28; ++kk)
      {
        [v34 addPasscodeUpdate:{-[AWDBiometricKitDailyUpdate passcodeUpdateAtIndex:](self, "passcodeUpdateAtIndex:", kk)}];
      }
    }
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(v34 + 65) = self->_enrolledIdentityCount;
    *(v34 + 436) |= 0x80uLL;
  }

  if ([(AWDBiometricKitDailyUpdate *)self matchingIdentityCountsCount])
  {
    [v34 clearMatchingIdentityCounts];
    v30 = [(AWDBiometricKitDailyUpdate *)self matchingIdentityCountsCount];
    if (v30)
    {
      v31 = v30;
      for (mm = 0; mm != v31; ++mm)
      {
        [v34 addMatchingIdentityCounts:{-[AWDBiometricKitDailyUpdate matchingIdentityCountsAtIndex:](self, "matchingIdentityCountsAtIndex:", mm)}];
      }
    }
  }

  v33 = self->_has;
  if ((*&v33 & 0x20000000000000) != 0)
  {
    v34[432] = self->_combinedSequenceEnabled;
    *(v34 + 436) |= 0x20000000000000uLL;
    v33 = self->_has;
    if ((*&v33 & 1) == 0)
    {
LABEL_56:
      if ((*&v33 & 0x40) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_113;
    }
  }

  else if ((*&v33 & 1) == 0)
  {
    goto LABEL_56;
  }

  *(v34 + 28) = self->_bioLockoutTime;
  *(v34 + 436) |= 1uLL;
  v33 = self->_has;
  if ((*&v33 & 0x40) == 0)
  {
LABEL_57:
    if ((*&v33 & 0x8000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(v34 + 64) = self->_bioLockoutCount;
  *(v34 + 436) |= 0x40uLL;
  v33 = self->_has;
  if ((*&v33 & 0x8000000000000) == 0)
  {
LABEL_58:
    if ((*&v33 & 0x1000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_115;
  }

LABEL_114:
  v34[430] = self->_autoRetryEnabled;
  *(v34 + 436) |= 0x8000000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x1000000000000) == 0)
  {
LABEL_59:
    if ((*&v33 & 0x100000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(v34 + 106) = self->_yogiErrorDays;
  *(v34 + 436) |= 0x1000000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x100000000000) == 0)
  {
LABEL_60:
    if ((*&v33 & 0x800000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_117;
  }

LABEL_116:
  *(v34 + 102) = self->_totalMatchAttempts;
  *(v34 + 436) |= 0x100000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x800000000000) == 0)
  {
LABEL_61:
    if ((*&v33 & 0x400000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(v34 + 105) = self->_totalMatchAttemptsSuccessful;
  *(v34 + 436) |= 0x800000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x400000000000) == 0)
  {
LABEL_62:
    if ((*&v33 & 0x200000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_119;
  }

LABEL_118:
  *(v34 + 104) = self->_totalMatchAttemptsFailed;
  *(v34 + 436) |= 0x400000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x200000000000) == 0)
  {
LABEL_63:
    if ((*&v33 & 0x20000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_120;
  }

LABEL_119:
  *(v34 + 103) = self->_totalMatchAttemptsFaceDetected;
  *(v34 + 436) |= 0x200000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x20000) == 0)
  {
LABEL_64:
    if ((*&v33 & 0x8000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_121;
  }

LABEL_120:
  *(v34 + 75) = self->_matchAttemptsType0;
  *(v34 + 436) |= 0x20000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x8000) == 0)
  {
LABEL_65:
    if ((*&v33 & 0x2000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(v34 + 73) = self->_matchAttemptsSuccessfulType0;
  *(v34 + 436) |= 0x8000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x2000) == 0)
  {
LABEL_66:
    if ((*&v33 & 0x800) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(v34 + 71) = self->_matchAttemptsFailedType0;
  *(v34 + 436) |= 0x2000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x800) == 0)
  {
LABEL_67:
    if ((*&v33 & 0x40000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(v34 + 69) = self->_matchAttemptsFaceDetectedType0;
  *(v34 + 436) |= 0x800uLL;
  v33 = self->_has;
  if ((*&v33 & 0x40000) == 0)
  {
LABEL_68:
    if ((*&v33 & 0x10000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_125;
  }

LABEL_124:
  *(v34 + 76) = self->_matchAttemptsType1;
  *(v34 + 436) |= 0x40000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x10000) == 0)
  {
LABEL_69:
    if ((*&v33 & 0x4000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_126;
  }

LABEL_125:
  *(v34 + 74) = self->_matchAttemptsSuccessfulType1;
  *(v34 + 436) |= 0x10000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x4000) == 0)
  {
LABEL_70:
    if ((*&v33 & 0x1000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_127;
  }

LABEL_126:
  *(v34 + 72) = self->_matchAttemptsFailedType1;
  *(v34 + 436) |= 0x4000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x1000) == 0)
  {
LABEL_71:
    if ((*&v33 & 0x40000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_128;
  }

LABEL_127:
  *(v34 + 70) = self->_matchAttemptsFaceDetectedType1;
  *(v34 + 436) |= 0x1000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x40000000000) == 0)
  {
LABEL_72:
    if ((*&v33 & 0x10000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_129;
  }

LABEL_128:
  *(v34 + 100) = self->_staticUnlockCountType0;
  *(v34 + 436) |= 0x40000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x10000000) == 0)
  {
LABEL_73:
    if ((*&v33 & 0x8000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_130;
  }

LABEL_129:
  *(v34 + 86) = self->_onlineUnlockCountType0;
  *(v34 + 436) |= 0x10000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x8000000000) == 0)
  {
LABEL_74:
    if ((*&v33 & 0x80000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_131;
  }

LABEL_130:
  *(v34 + 97) = self->_shortTermUnlockCountType0;
  *(v34 + 436) |= 0x8000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x80000000000) == 0)
  {
LABEL_75:
    if ((*&v33 & 0x20000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_132;
  }

LABEL_131:
  *(v34 + 101) = self->_staticUnlockCountType1;
  *(v34 + 436) |= 0x80000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x20000000) == 0)
  {
LABEL_76:
    if ((*&v33 & 0x10000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_133;
  }

LABEL_132:
  *(v34 + 87) = self->_onlineUnlockCountType1;
  *(v34 + 436) |= 0x20000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x10000000000) == 0)
  {
LABEL_77:
    if ((*&v33 & 4) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_134;
  }

LABEL_133:
  *(v34 + 98) = self->_shortTermUnlockCountType1;
  *(v34 + 436) |= 0x10000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 4) == 0)
  {
LABEL_78:
    if ((*&v33 & 0x40000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_135;
  }

LABEL_134:
  *(v34 + 60) = self->_baseTemplateFeatureCountType0Identity0;
  *(v34 + 436) |= 4uLL;
  v33 = self->_has;
  if ((*&v33 & 0x40000000) == 0)
  {
LABEL_79:
    if ((*&v33 & 0x400000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_136;
  }

LABEL_135:
  *(v34 + 88) = self->_onlineUpdateTemplateFeatureCountType0Identity0;
  *(v34 + 436) |= 0x40000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x400000000) == 0)
  {
LABEL_80:
    if ((*&v33 & 8) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_137;
  }

LABEL_136:
  *(v34 + 92) = self->_passcodeUpdateTemplateFeatureCountType0Identity0;
  *(v34 + 436) |= 0x400000000uLL;
  v33 = self->_has;
  if ((*&v33 & 8) == 0)
  {
LABEL_81:
    if ((*&v33 & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_138;
  }

LABEL_137:
  *(v34 + 61) = self->_baseTemplateFeatureCountType0Identity1;
  *(v34 + 436) |= 8uLL;
  v33 = self->_has;
  if ((*&v33 & 0x80000000) == 0)
  {
LABEL_82:
    if ((*&v33 & 0x800000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(v34 + 89) = self->_onlineUpdateTemplateFeatureCountType0Identity1;
  *(v34 + 436) |= 0x80000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x800000000) == 0)
  {
LABEL_83:
    if ((*&v33 & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_140;
  }

LABEL_139:
  *(v34 + 93) = self->_passcodeUpdateTemplateFeatureCountType0Identity1;
  *(v34 + 436) |= 0x800000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x10) == 0)
  {
LABEL_84:
    if ((*&v33 & 0x100000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(v34 + 62) = self->_baseTemplateFeatureCountType1Identity0;
  *(v34 + 436) |= 0x10uLL;
  v33 = self->_has;
  if ((*&v33 & 0x100000000) == 0)
  {
LABEL_85:
    if ((*&v33 & 0x1000000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_142;
  }

LABEL_141:
  *(v34 + 90) = self->_onlineUpdateTemplateFeatureCountType1Identity0;
  *(v34 + 436) |= 0x100000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x1000000000) == 0)
  {
LABEL_86:
    if ((*&v33 & 0x20) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(v34 + 94) = self->_passcodeUpdateTemplateFeatureCountType1Identity0;
  *(v34 + 436) |= 0x1000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x20) == 0)
  {
LABEL_87:
    if ((*&v33 & 0x200000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(v34 + 63) = self->_baseTemplateFeatureCountType1Identity1;
  *(v34 + 436) |= 0x20uLL;
  v33 = self->_has;
  if ((*&v33 & 0x200000000) == 0)
  {
LABEL_88:
    if ((*&v33 & 0x2000000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(v34 + 91) = self->_onlineUpdateTemplateFeatureCountType1Identity1;
  *(v34 + 436) |= 0x200000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x2000000000) == 0)
  {
LABEL_89:
    if ((*&v33 & 0x40000000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(v34 + 95) = self->_passcodeUpdateTemplateFeatureCountType1Identity1;
  *(v34 + 436) |= 0x2000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x40000000000000) == 0)
  {
LABEL_90:
    if ((*&v33 & 0x200) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_147;
  }

LABEL_146:
  v34[433] = self->_type1MatchEnabled;
  *(v34 + 436) |= 0x40000000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x200) == 0)
  {
LABEL_91:
    if ((*&v33 & 0x400) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v34 + 67) = self->_enrolledTemplateCountType0;
  *(v34 + 436) |= 0x200uLL;
  v33 = self->_has;
  if ((*&v33 & 0x400) == 0)
  {
LABEL_92:
    if ((*&v33 & 0x100) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(v34 + 68) = self->_enrolledTemplateCountType1;
  *(v34 + 436) |= 0x400uLL;
  v33 = self->_has;
  if ((*&v33 & 0x100) == 0)
  {
LABEL_93:
    if ((*&v33 & 0x800000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(v34 + 66) = self->_enrolledTemplateCountTotal;
  *(v34 + 436) |= 0x100uLL;
  v33 = self->_has;
  if ((*&v33 & 0x800000) == 0)
  {
LABEL_94:
    if ((*&v33 & 0x1000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(v34 + 81) = self->_matchingTemplateCountType0Identity0;
  *(v34 + 436) |= 0x800000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x1000000) == 0)
  {
LABEL_95:
    if ((*&v33 & 0x2000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(v34 + 82) = self->_matchingTemplateCountType0Identity1;
  *(v34 + 436) |= 0x1000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x2000000) == 0)
  {
LABEL_96:
    if ((*&v33 & 0x4000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

LABEL_152:
  *(v34 + 83) = self->_matchingTemplateCountType1Identity0;
  *(v34 + 436) |= 0x2000000uLL;
  if ((*&self->_has & 0x4000000) != 0)
  {
LABEL_97:
    *(v34 + 84) = self->_matchingTemplateCountType1Identity1;
    *(v34 + 436) |= 0x4000000uLL;
  }

LABEL_98:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 232) = self->_timestamp;
    *(v4 + 436) |= 2uLL;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  has = self->_has;
  if ((*&has & 0x80000000000000) != 0)
  {
    *(v5 + 434) = self->_unlockEnabled;
    *(v5 + 436) |= 0x80000000000000uLL;
    has = self->_has;
    if ((*&has & 0x2000000000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x4000000000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_65;
    }
  }

  else if ((*&has & 0x2000000000000) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 428) = self->_applePayEnabled;
  *(v5 + 436) |= 0x2000000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 429) = self->_attentionDetectionEnabled;
  *(v5 + 436) |= 0x4000000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_7:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 308) = self->_matchingCountDouble01;
  *(v5 + 436) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 312) = self->_matchingCountDouble02;
  *(v5 + 436) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 316) = self->_matchingCountDouble03;
  *(v5 + 436) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 320) = self->_matchingCountDouble04;
  *(v5 + 436) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 396) = self->_staticUnlockCount;
  *(v5 + 436) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_71:
  *(v5 + 340) = self->_onlineUnlockCount;
  *(v5 + 436) |= 0x8000000uLL;
  if ((*&self->_has & 0x4000000000) != 0)
  {
LABEL_13:
    *(v5 + 384) = self->_shortTermUnlockCount;
    *(v5 + 436) |= 0x4000000000uLL;
  }

LABEL_14:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    *(v5 + 431) = self->_cameraInterlock;
    *(v5 + 436) |= 0x10000000000000uLL;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x80) != 0)
  {
    *(v5 + 260) = self->_enrolledIdentityCount;
    *(v5 + 436) |= 0x80uLL;
  }

  PBRepeatedUInt32Copy();
  v7 = self->_has;
  if ((*&v7 & 0x20000000000000) != 0)
  {
    *(v5 + 432) = self->_combinedSequenceEnabled;
    *(v5 + 436) |= 0x20000000000000uLL;
    v7 = self->_has;
    if ((*&v7 & 1) == 0)
    {
LABEL_20:
      if ((*&v7 & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_75;
    }
  }

  else if ((*&v7 & 1) == 0)
  {
    goto LABEL_20;
  }

  *(v5 + 224) = self->_bioLockoutTime;
  *(v5 + 436) |= 1uLL;
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x8000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 256) = self->_bioLockoutCount;
  *(v5 + 436) |= 0x40uLL;
  v7 = self->_has;
  if ((*&v7 & 0x8000000000000) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x1000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v5 + 430) = self->_autoRetryEnabled;
  *(v5 + 436) |= 0x8000000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x1000000000000) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x100000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 424) = self->_yogiErrorDays;
  *(v5 + 436) |= 0x1000000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x100000000000) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x800000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v5 + 408) = self->_totalMatchAttempts;
  *(v5 + 436) |= 0x100000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x800000000000) == 0)
  {
LABEL_25:
    if ((*&v7 & 0x400000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 420) = self->_totalMatchAttemptsSuccessful;
  *(v5 + 436) |= 0x800000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x400000000000) == 0)
  {
LABEL_26:
    if ((*&v7 & 0x200000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v5 + 416) = self->_totalMatchAttemptsFailed;
  *(v5 + 436) |= 0x400000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x200000000000) == 0)
  {
LABEL_27:
    if ((*&v7 & 0x20000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v5 + 412) = self->_totalMatchAttemptsFaceDetected;
  *(v5 + 436) |= 0x200000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x20000) == 0)
  {
LABEL_28:
    if ((*&v7 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v5 + 300) = self->_matchAttemptsType0;
  *(v5 + 436) |= 0x20000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x8000) == 0)
  {
LABEL_29:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v5 + 292) = self->_matchAttemptsSuccessfulType0;
  *(v5 + 436) |= 0x8000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_30:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v5 + 284) = self->_matchAttemptsFailedType0;
  *(v5 + 436) |= 0x2000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_31:
    if ((*&v7 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v5 + 276) = self->_matchAttemptsFaceDetectedType0;
  *(v5 + 436) |= 0x800uLL;
  v7 = self->_has;
  if ((*&v7 & 0x40000) == 0)
  {
LABEL_32:
    if ((*&v7 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v5 + 304) = self->_matchAttemptsType1;
  *(v5 + 436) |= 0x40000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x10000) == 0)
  {
LABEL_33:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v5 + 296) = self->_matchAttemptsSuccessfulType1;
  *(v5 + 436) |= 0x10000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_34:
    if ((*&v7 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v5 + 288) = self->_matchAttemptsFailedType1;
  *(v5 + 436) |= 0x4000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x1000) == 0)
  {
LABEL_35:
    if ((*&v7 & 0x40000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v5 + 280) = self->_matchAttemptsFaceDetectedType1;
  *(v5 + 436) |= 0x1000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x40000000000) == 0)
  {
LABEL_36:
    if ((*&v7 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v5 + 400) = self->_staticUnlockCountType0;
  *(v5 + 436) |= 0x40000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x10000000) == 0)
  {
LABEL_37:
    if ((*&v7 & 0x8000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v5 + 344) = self->_onlineUnlockCountType0;
  *(v5 + 436) |= 0x10000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x8000000000) == 0)
  {
LABEL_38:
    if ((*&v7 & 0x80000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v5 + 388) = self->_shortTermUnlockCountType0;
  *(v5 + 436) |= 0x8000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x80000000000) == 0)
  {
LABEL_39:
    if ((*&v7 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v5 + 404) = self->_staticUnlockCountType1;
  *(v5 + 436) |= 0x80000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x20000000) == 0)
  {
LABEL_40:
    if ((*&v7 & 0x10000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v5 + 348) = self->_onlineUnlockCountType1;
  *(v5 + 436) |= 0x20000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x10000000000) == 0)
  {
LABEL_41:
    if ((*&v7 & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v5 + 392) = self->_shortTermUnlockCountType1;
  *(v5 + 436) |= 0x10000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 4) == 0)
  {
LABEL_42:
    if ((*&v7 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v5 + 240) = self->_baseTemplateFeatureCountType0Identity0;
  *(v5 + 436) |= 4uLL;
  v7 = self->_has;
  if ((*&v7 & 0x40000000) == 0)
  {
LABEL_43:
    if ((*&v7 & 0x400000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v5 + 352) = self->_onlineUpdateTemplateFeatureCountType0Identity0;
  *(v5 + 436) |= 0x40000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x400000000) == 0)
  {
LABEL_44:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v5 + 368) = self->_passcodeUpdateTemplateFeatureCountType0Identity0;
  *(v5 + 436) |= 0x400000000uLL;
  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_45:
    if ((*&v7 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v5 + 244) = self->_baseTemplateFeatureCountType0Identity1;
  *(v5 + 436) |= 8uLL;
  v7 = self->_has;
  if ((*&v7 & 0x80000000) == 0)
  {
LABEL_46:
    if ((*&v7 & 0x800000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v5 + 356) = self->_onlineUpdateTemplateFeatureCountType0Identity1;
  *(v5 + 436) |= 0x80000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x800000000) == 0)
  {
LABEL_47:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v5 + 372) = self->_passcodeUpdateTemplateFeatureCountType0Identity1;
  *(v5 + 436) |= 0x800000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_48:
    if ((*&v7 & 0x100000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v5 + 248) = self->_baseTemplateFeatureCountType1Identity0;
  *(v5 + 436) |= 0x10uLL;
  v7 = self->_has;
  if ((*&v7 & 0x100000000) == 0)
  {
LABEL_49:
    if ((*&v7 & 0x1000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v5 + 360) = self->_onlineUpdateTemplateFeatureCountType1Identity0;
  *(v5 + 436) |= 0x100000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x1000000000) == 0)
  {
LABEL_50:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v5 + 376) = self->_passcodeUpdateTemplateFeatureCountType1Identity0;
  *(v5 + 436) |= 0x1000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x20) == 0)
  {
LABEL_51:
    if ((*&v7 & 0x200000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v5 + 252) = self->_baseTemplateFeatureCountType1Identity1;
  *(v5 + 436) |= 0x20uLL;
  v7 = self->_has;
  if ((*&v7 & 0x200000000) == 0)
  {
LABEL_52:
    if ((*&v7 & 0x2000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v5 + 364) = self->_onlineUpdateTemplateFeatureCountType1Identity1;
  *(v5 + 436) |= 0x200000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x2000000000) == 0)
  {
LABEL_53:
    if ((*&v7 & 0x40000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v5 + 380) = self->_passcodeUpdateTemplateFeatureCountType1Identity1;
  *(v5 + 436) |= 0x2000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x40000000000000) == 0)
  {
LABEL_54:
    if ((*&v7 & 0x200) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v5 + 433) = self->_type1MatchEnabled;
  *(v5 + 436) |= 0x40000000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_55:
    if ((*&v7 & 0x400) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v5 + 268) = self->_enrolledTemplateCountType0;
  *(v5 + 436) |= 0x200uLL;
  v7 = self->_has;
  if ((*&v7 & 0x400) == 0)
  {
LABEL_56:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(v5 + 272) = self->_enrolledTemplateCountType1;
  *(v5 + 436) |= 0x400uLL;
  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_57:
    if ((*&v7 & 0x800000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(v5 + 264) = self->_enrolledTemplateCountTotal;
  *(v5 + 436) |= 0x100uLL;
  v7 = self->_has;
  if ((*&v7 & 0x800000) == 0)
  {
LABEL_58:
    if ((*&v7 & 0x1000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(v5 + 324) = self->_matchingTemplateCountType0Identity0;
  *(v5 + 436) |= 0x800000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x1000000) == 0)
  {
LABEL_59:
    if ((*&v7 & 0x2000000) == 0)
    {
      goto LABEL_60;
    }

LABEL_114:
    *(v5 + 332) = self->_matchingTemplateCountType1Identity0;
    *(v5 + 436) |= 0x2000000uLL;
    if ((*&self->_has & 0x4000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_113:
  *(v5 + 328) = self->_matchingTemplateCountType0Identity1;
  *(v5 + 436) |= 0x1000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x2000000) != 0)
  {
    goto LABEL_114;
  }

LABEL_60:
  if ((*&v7 & 0x4000000) != 0)
  {
LABEL_61:
    *(v5 + 336) = self->_matchingTemplateCountType1Identity1;
    *(v5 + 436) |= 0x4000000uLL;
  }

LABEL_62:
  v8 = v5;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_80;
  }

  v5 = *(v4 + 436);
  if ((*&self->_has & 2) != 0)
  {
    if ((v5 & 2) == 0 || self->_timestamp != *(v4 + 29))
    {
      goto LABEL_80;
    }
  }

  else if ((v5 & 2) != 0)
  {
    goto LABEL_80;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_80;
  }

  has = self->_has;
  v7 = *(v4 + 436);
  if ((*&has & 0x80000000000000) != 0)
  {
    if ((v7 & 0x80000000000000) == 0)
    {
      goto LABEL_80;
    }

    v8 = v4[434];
    if (self->_unlockEnabled)
    {
      if ((v4[434] & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else if (v4[434])
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x80000000000000) != 0)
  {
    goto LABEL_80;
  }

  if ((*&has & 0x2000000000000) != 0)
  {
    if ((v7 & 0x2000000000000) == 0)
    {
      goto LABEL_80;
    }

    v9 = v4[428];
    if (self->_applePayEnabled)
    {
      if ((v4[428] & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else if (v4[428])
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x2000000000000) != 0)
  {
    goto LABEL_80;
  }

  if ((*&has & 0x4000000000000) != 0)
  {
    if ((v7 & 0x4000000000000) == 0)
    {
      goto LABEL_80;
    }

    v10 = v4[429];
    if (self->_attentionDetectionEnabled)
    {
      if ((v4[429] & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else if (v4[429])
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x4000000000000) != 0)
  {
    goto LABEL_80;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_matchingCountDouble01 != *(v4 + 77))
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_80;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_matchingCountDouble02 != *(v4 + 78))
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_80;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_matchingCountDouble03 != *(v4 + 79))
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_80;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_matchingCountDouble04 != *(v4 + 80))
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_80;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    if ((v7 & 0x20000000000) == 0 || self->_staticUnlockCount != *(v4 + 99))
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x20000000000) != 0)
  {
    goto LABEL_80;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0 || self->_onlineUnlockCount != *(v4 + 85))
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_80;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v7 & 0x4000000000) == 0 || self->_shortTermUnlockCount != *(v4 + 96))
    {
      goto LABEL_80;
    }
  }

  else if ((v7 & 0x4000000000) != 0)
  {
    goto LABEL_80;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_80;
  }

  v11 = *(v4 + 436);
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    if ((v11 & 0x10000000000000) == 0)
    {
      goto LABEL_80;
    }

    v15 = v4[431];
    if (self->_cameraInterlock)
    {
      if ((v4[431] & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else if (v4[431])
    {
      goto LABEL_80;
    }
  }

  else if ((v11 & 0x10000000000000) != 0)
  {
    goto LABEL_80;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_80;
  }

  v12 = *(v4 + 436);
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v12 & 0x80) == 0 || self->_enrolledIdentityCount != *(v4 + 65))
    {
      goto LABEL_80;
    }
  }

  else if ((v12 & 0x80) != 0)
  {
    goto LABEL_80;
  }

  if (PBRepeatedUInt32IsEqual())
  {
    v16 = self->_has;
    v17 = *(v4 + 436);
    if ((*&v16 & 0x20000000000000) != 0)
    {
      if ((v17 & 0x20000000000000) == 0)
      {
        goto LABEL_80;
      }

      v18 = v4[432];
      if (self->_combinedSequenceEnabled)
      {
        if ((v4[432] & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      else if (v4[432])
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x20000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (*&v16)
    {
      if ((v17 & 1) == 0 || self->_bioLockoutTime != *(v4 + 28))
      {
        goto LABEL_80;
      }
    }

    else if (v17)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x40) != 0)
    {
      if ((v17 & 0x40) == 0 || self->_bioLockoutCount != *(v4 + 64))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x40) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x8000000000000) != 0)
    {
      if ((v17 & 0x8000000000000) == 0)
      {
        goto LABEL_80;
      }

      v19 = v4[430];
      if (self->_autoRetryEnabled)
      {
        if ((v4[430] & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      else if (v4[430])
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x8000000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x1000000000000) != 0)
    {
      if ((v17 & 0x1000000000000) == 0 || self->_yogiErrorDays != *(v4 + 106))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x1000000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x100000000000) != 0)
    {
      if ((v17 & 0x100000000000) == 0 || self->_totalMatchAttempts != *(v4 + 102))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x100000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x800000000000) != 0)
    {
      if ((v17 & 0x800000000000) == 0 || self->_totalMatchAttemptsSuccessful != *(v4 + 105))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x800000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x400000000000) != 0)
    {
      if ((v17 & 0x400000000000) == 0 || self->_totalMatchAttemptsFailed != *(v4 + 104))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x400000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x200000000000) != 0)
    {
      if ((v17 & 0x200000000000) == 0 || self->_totalMatchAttemptsFaceDetected != *(v4 + 103))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x200000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x20000) != 0)
    {
      if ((v17 & 0x20000) == 0 || self->_matchAttemptsType0 != *(v4 + 75))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x20000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x8000) != 0)
    {
      if ((v17 & 0x8000) == 0 || self->_matchAttemptsSuccessfulType0 != *(v4 + 73))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x8000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x2000) != 0)
    {
      if ((v17 & 0x2000) == 0 || self->_matchAttemptsFailedType0 != *(v4 + 71))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x2000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x800) != 0)
    {
      if ((v17 & 0x800) == 0 || self->_matchAttemptsFaceDetectedType0 != *(v4 + 69))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x800) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x40000) != 0)
    {
      if ((v17 & 0x40000) == 0 || self->_matchAttemptsType1 != *(v4 + 76))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x40000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x10000) != 0)
    {
      if ((v17 & 0x10000) == 0 || self->_matchAttemptsSuccessfulType1 != *(v4 + 74))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x10000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x4000) != 0)
    {
      if ((v17 & 0x4000) == 0 || self->_matchAttemptsFailedType1 != *(v4 + 72))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x4000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x1000) != 0)
    {
      if ((v17 & 0x1000) == 0 || self->_matchAttemptsFaceDetectedType1 != *(v4 + 70))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x1000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x40000000000) != 0)
    {
      if ((v17 & 0x40000000000) == 0 || self->_staticUnlockCountType0 != *(v4 + 100))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x40000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x10000000) != 0)
    {
      if ((v17 & 0x10000000) == 0 || self->_onlineUnlockCountType0 != *(v4 + 86))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x10000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x8000000000) != 0)
    {
      if ((v17 & 0x8000000000) == 0 || self->_shortTermUnlockCountType0 != *(v4 + 97))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x8000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x80000000000) != 0)
    {
      if ((v17 & 0x80000000000) == 0 || self->_staticUnlockCountType1 != *(v4 + 101))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x80000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x20000000) != 0)
    {
      if ((v17 & 0x20000000) == 0 || self->_onlineUnlockCountType1 != *(v4 + 87))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x20000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x10000000000) != 0)
    {
      if ((v17 & 0x10000000000) == 0 || self->_shortTermUnlockCountType1 != *(v4 + 98))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x10000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 4) != 0)
    {
      if ((v17 & 4) == 0 || self->_baseTemplateFeatureCountType0Identity0 != *(v4 + 60))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 4) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x40000000) != 0)
    {
      if ((v17 & 0x40000000) == 0 || self->_onlineUpdateTemplateFeatureCountType0Identity0 != *(v4 + 88))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x40000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x400000000) != 0)
    {
      if ((v17 & 0x400000000) == 0 || self->_passcodeUpdateTemplateFeatureCountType0Identity0 != *(v4 + 92))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x400000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 8) != 0)
    {
      if ((v17 & 8) == 0 || self->_baseTemplateFeatureCountType0Identity1 != *(v4 + 61))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 8) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x80000000) != 0)
    {
      if ((v17 & 0x80000000) == 0 || self->_onlineUpdateTemplateFeatureCountType0Identity1 != *(v4 + 89))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x800000000) != 0)
    {
      if ((v17 & 0x800000000) == 0 || self->_passcodeUpdateTemplateFeatureCountType0Identity1 != *(v4 + 93))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x800000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x10) != 0)
    {
      if ((v17 & 0x10) == 0 || self->_baseTemplateFeatureCountType1Identity0 != *(v4 + 62))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x10) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x100000000) != 0)
    {
      if ((v17 & 0x100000000) == 0 || self->_onlineUpdateTemplateFeatureCountType1Identity0 != *(v4 + 90))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x1000000000) != 0)
    {
      if ((v17 & 0x1000000000) == 0 || self->_passcodeUpdateTemplateFeatureCountType1Identity0 != *(v4 + 94))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x1000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x20) != 0)
    {
      if ((v17 & 0x20) == 0 || self->_baseTemplateFeatureCountType1Identity1 != *(v4 + 63))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x20) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x200000000) != 0)
    {
      if ((v17 & 0x200000000) == 0 || self->_onlineUpdateTemplateFeatureCountType1Identity1 != *(v4 + 91))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x200000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x2000000000) != 0)
    {
      if ((v17 & 0x2000000000) == 0 || self->_passcodeUpdateTemplateFeatureCountType1Identity1 != *(v4 + 95))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x2000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x40000000000000) != 0)
    {
      if ((v17 & 0x40000000000000) == 0)
      {
        goto LABEL_80;
      }

      v20 = v4[433];
      if (self->_type1MatchEnabled)
      {
        if ((v4[433] & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      else if (v4[433])
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x40000000000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x200) != 0)
    {
      if ((v17 & 0x200) == 0 || self->_enrolledTemplateCountType0 != *(v4 + 67))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x200) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x400) != 0)
    {
      if ((v17 & 0x400) == 0 || self->_enrolledTemplateCountType1 != *(v4 + 68))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x400) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x100) != 0)
    {
      if ((v17 & 0x100) == 0 || self->_enrolledTemplateCountTotal != *(v4 + 66))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x100) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x800000) != 0)
    {
      if ((v17 & 0x800000) == 0 || self->_matchingTemplateCountType0Identity0 != *(v4 + 81))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x800000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x1000000) != 0)
    {
      if ((v17 & 0x1000000) == 0 || self->_matchingTemplateCountType0Identity1 != *(v4 + 82))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x1000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x2000000) != 0)
    {
      if ((v17 & 0x2000000) == 0 || self->_matchingTemplateCountType1Identity0 != *(v4 + 83))
      {
        goto LABEL_80;
      }
    }

    else if ((v17 & 0x2000000) != 0)
    {
      goto LABEL_80;
    }

    if ((*&v16 & 0x4000000) == 0)
    {
      v13 = (*(v4 + 436) & 0x4000000) == 0;
      goto LABEL_81;
    }

    if ((v17 & 0x4000000) != 0 && self->_matchingTemplateCountType1Identity1 == *(v4 + 84))
    {
      v13 = 1;
      goto LABEL_81;
    }
  }

LABEL_80:
  v13 = 0;
LABEL_81:

  return v13;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v70 = 2654435761u * self->_timestamp;
  }

  else
  {
    v70 = 0;
  }

  v69 = PBRepeatedUInt32Hash();
  v68 = PBRepeatedUInt32Hash();
  v67 = PBRepeatedUInt32Hash();
  has = self->_has;
  if ((*&has & 0x80000000000000) != 0)
  {
    v66 = 2654435761 * self->_unlockEnabled;
    if ((*&has & 0x2000000000000) != 0)
    {
LABEL_6:
      v65 = 2654435761 * self->_applePayEnabled;
      if ((*&has & 0x4000000000000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v66 = 0;
    if ((*&has & 0x2000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  v65 = 0;
  if ((*&has & 0x4000000000000) != 0)
  {
LABEL_7:
    v64 = 2654435761 * self->_attentionDetectionEnabled;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v64 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_8:
    v63 = 2654435761 * self->_matchingCountDouble01;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v63 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_9:
    v62 = 2654435761 * self->_matchingCountDouble02;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v62 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_10:
    v61 = 2654435761 * self->_matchingCountDouble03;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v61 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_11:
    v60 = 2654435761 * self->_matchingCountDouble04;
    if ((*&has & 0x20000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v60 = 0;
  if ((*&has & 0x20000000000) != 0)
  {
LABEL_12:
    v59 = 2654435761 * self->_staticUnlockCount;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v58 = 0;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_22:
  v59 = 0;
  if ((*&has & 0x8000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v58 = 2654435761 * self->_onlineUnlockCount;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_14:
    v57 = 2654435761 * self->_shortTermUnlockCount;
    goto LABEL_25;
  }

LABEL_24:
  v57 = 0;
LABEL_25:
  v56 = PBRepeatedUInt32Hash();
  v55 = PBRepeatedUInt32Hash();
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    v54 = 2654435761 * self->_cameraInterlock;
  }

  else
  {
    v54 = 0;
  }

  v53 = PBRepeatedUInt32Hash();
  v52 = PBRepeatedUInt32Hash();
  v51 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x80) != 0)
  {
    v50 = 2654435761 * self->_enrolledIdentityCount;
  }

  else
  {
    v50 = 0;
  }

  v49 = PBRepeatedUInt32Hash();
  v4 = self->_has;
  if ((*&v4 & 0x20000000000000) != 0)
  {
    v48 = 2654435761 * self->_combinedSequenceEnabled;
    if (*&v4)
    {
LABEL_33:
      v47 = 2654435761u * self->_bioLockoutTime;
      if ((*&v4 & 0x40) != 0)
      {
        goto LABEL_34;
      }

      goto LABEL_77;
    }
  }

  else
  {
    v48 = 0;
    if (*&v4)
    {
      goto LABEL_33;
    }
  }

  v47 = 0;
  if ((*&v4 & 0x40) != 0)
  {
LABEL_34:
    v46 = 2654435761 * self->_bioLockoutCount;
    if ((*&v4 & 0x8000000000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  v46 = 0;
  if ((*&v4 & 0x8000000000000) != 0)
  {
LABEL_35:
    v45 = 2654435761 * self->_autoRetryEnabled;
    if ((*&v4 & 0x1000000000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  v45 = 0;
  if ((*&v4 & 0x1000000000000) != 0)
  {
LABEL_36:
    v44 = 2654435761 * self->_yogiErrorDays;
    if ((*&v4 & 0x100000000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  v44 = 0;
  if ((*&v4 & 0x100000000000) != 0)
  {
LABEL_37:
    v43 = 2654435761 * self->_totalMatchAttempts;
    if ((*&v4 & 0x800000000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  v43 = 0;
  if ((*&v4 & 0x800000000000) != 0)
  {
LABEL_38:
    v42 = 2654435761 * self->_totalMatchAttemptsSuccessful;
    if ((*&v4 & 0x400000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  v42 = 0;
  if ((*&v4 & 0x400000000000) != 0)
  {
LABEL_39:
    v41 = 2654435761 * self->_totalMatchAttemptsFailed;
    if ((*&v4 & 0x200000000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  v41 = 0;
  if ((*&v4 & 0x200000000000) != 0)
  {
LABEL_40:
    v40 = 2654435761 * self->_totalMatchAttemptsFaceDetected;
    if ((*&v4 & 0x20000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  v40 = 0;
  if ((*&v4 & 0x20000) != 0)
  {
LABEL_41:
    v39 = 2654435761 * self->_matchAttemptsType0;
    if ((*&v4 & 0x8000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  v39 = 0;
  if ((*&v4 & 0x8000) != 0)
  {
LABEL_42:
    v38 = 2654435761 * self->_matchAttemptsSuccessfulType0;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_85:
  v38 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_43:
    v37 = 2654435761 * self->_matchAttemptsFailedType0;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_87;
  }

LABEL_86:
  v37 = 0;
  if ((*&v4 & 0x800) != 0)
  {
LABEL_44:
    v36 = 2654435761 * self->_matchAttemptsFaceDetectedType0;
    if ((*&v4 & 0x40000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_88;
  }

LABEL_87:
  v36 = 0;
  if ((*&v4 & 0x40000) != 0)
  {
LABEL_45:
    v35 = 2654435761 * self->_matchAttemptsType1;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_89;
  }

LABEL_88:
  v35 = 0;
  if ((*&v4 & 0x10000) != 0)
  {
LABEL_46:
    v34 = 2654435761 * self->_matchAttemptsSuccessfulType1;
    if ((*&v4 & 0x4000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_90;
  }

LABEL_89:
  v34 = 0;
  if ((*&v4 & 0x4000) != 0)
  {
LABEL_47:
    v33 = 2654435761 * self->_matchAttemptsFailedType1;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_91;
  }

LABEL_90:
  v33 = 0;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_48:
    v32 = 2654435761 * self->_matchAttemptsFaceDetectedType1;
    if ((*&v4 & 0x40000000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_92;
  }

LABEL_91:
  v32 = 0;
  if ((*&v4 & 0x40000000000) != 0)
  {
LABEL_49:
    v5 = 2654435761 * self->_staticUnlockCountType0;
    if ((*&v4 & 0x10000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_93;
  }

LABEL_92:
  v5 = 0;
  if ((*&v4 & 0x10000000) != 0)
  {
LABEL_50:
    v6 = 2654435761 * self->_onlineUnlockCountType0;
    if ((*&v4 & 0x8000000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_94;
  }

LABEL_93:
  v6 = 0;
  if ((*&v4 & 0x8000000000) != 0)
  {
LABEL_51:
    v7 = 2654435761 * self->_shortTermUnlockCountType0;
    if ((*&v4 & 0x80000000000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_95;
  }

LABEL_94:
  v7 = 0;
  if ((*&v4 & 0x80000000000) != 0)
  {
LABEL_52:
    v8 = 2654435761 * self->_staticUnlockCountType1;
    if ((*&v4 & 0x20000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_96;
  }

LABEL_95:
  v8 = 0;
  if ((*&v4 & 0x20000000) != 0)
  {
LABEL_53:
    v9 = 2654435761 * self->_onlineUnlockCountType1;
    if ((*&v4 & 0x10000000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_97;
  }

LABEL_96:
  v9 = 0;
  if ((*&v4 & 0x10000000000) != 0)
  {
LABEL_54:
    v10 = 2654435761 * self->_shortTermUnlockCountType1;
    if ((*&v4 & 4) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_98;
  }

LABEL_97:
  v10 = 0;
  if ((*&v4 & 4) != 0)
  {
LABEL_55:
    v11 = 2654435761 * self->_baseTemplateFeatureCountType0Identity0;
    if ((*&v4 & 0x40000000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_99;
  }

LABEL_98:
  v11 = 0;
  if ((*&v4 & 0x40000000) != 0)
  {
LABEL_56:
    v12 = 2654435761 * self->_onlineUpdateTemplateFeatureCountType0Identity0;
    if ((*&v4 & 0x400000000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_100;
  }

LABEL_99:
  v12 = 0;
  if ((*&v4 & 0x400000000) != 0)
  {
LABEL_57:
    v13 = 2654435761 * self->_passcodeUpdateTemplateFeatureCountType0Identity0;
    if ((*&v4 & 8) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_101;
  }

LABEL_100:
  v13 = 0;
  if ((*&v4 & 8) != 0)
  {
LABEL_58:
    v14 = 2654435761 * self->_baseTemplateFeatureCountType0Identity1;
    if ((*&v4 & 0x80000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_102;
  }

LABEL_101:
  v14 = 0;
  if ((*&v4 & 0x80000000) != 0)
  {
LABEL_59:
    v15 = 2654435761 * self->_onlineUpdateTemplateFeatureCountType0Identity1;
    if ((*&v4 & 0x800000000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_103;
  }

LABEL_102:
  v15 = 0;
  if ((*&v4 & 0x800000000) != 0)
  {
LABEL_60:
    v16 = 2654435761 * self->_passcodeUpdateTemplateFeatureCountType0Identity1;
    if ((*&v4 & 0x10) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_104;
  }

LABEL_103:
  v16 = 0;
  if ((*&v4 & 0x10) != 0)
  {
LABEL_61:
    v17 = 2654435761 * self->_baseTemplateFeatureCountType1Identity0;
    if ((*&v4 & 0x100000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_105;
  }

LABEL_104:
  v17 = 0;
  if ((*&v4 & 0x100000000) != 0)
  {
LABEL_62:
    v18 = 2654435761 * self->_onlineUpdateTemplateFeatureCountType1Identity0;
    if ((*&v4 & 0x1000000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_106;
  }

LABEL_105:
  v18 = 0;
  if ((*&v4 & 0x1000000000) != 0)
  {
LABEL_63:
    v19 = 2654435761 * self->_passcodeUpdateTemplateFeatureCountType1Identity0;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_107;
  }

LABEL_106:
  v19 = 0;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_64:
    v20 = 2654435761 * self->_baseTemplateFeatureCountType1Identity1;
    if ((*&v4 & 0x200000000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_108;
  }

LABEL_107:
  v20 = 0;
  if ((*&v4 & 0x200000000) != 0)
  {
LABEL_65:
    v21 = 2654435761 * self->_onlineUpdateTemplateFeatureCountType1Identity1;
    if ((*&v4 & 0x2000000000) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_109;
  }

LABEL_108:
  v21 = 0;
  if ((*&v4 & 0x2000000000) != 0)
  {
LABEL_66:
    v22 = 2654435761 * self->_passcodeUpdateTemplateFeatureCountType1Identity1;
    if ((*&v4 & 0x40000000000000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_110;
  }

LABEL_109:
  v22 = 0;
  if ((*&v4 & 0x40000000000000) != 0)
  {
LABEL_67:
    v23 = 2654435761 * self->_type1MatchEnabled;
    if ((*&v4 & 0x200) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_111;
  }

LABEL_110:
  v23 = 0;
  if ((*&v4 & 0x200) != 0)
  {
LABEL_68:
    v24 = 2654435761 * self->_enrolledTemplateCountType0;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_112;
  }

LABEL_111:
  v24 = 0;
  if ((*&v4 & 0x400) != 0)
  {
LABEL_69:
    v25 = 2654435761 * self->_enrolledTemplateCountType1;
    if ((*&v4 & 0x100) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_113;
  }

LABEL_112:
  v25 = 0;
  if ((*&v4 & 0x100) != 0)
  {
LABEL_70:
    v26 = 2654435761 * self->_enrolledTemplateCountTotal;
    if ((*&v4 & 0x800000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_114;
  }

LABEL_113:
  v26 = 0;
  if ((*&v4 & 0x800000) != 0)
  {
LABEL_71:
    v27 = 2654435761 * self->_matchingTemplateCountType0Identity0;
    if ((*&v4 & 0x1000000) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_115;
  }

LABEL_114:
  v27 = 0;
  if ((*&v4 & 0x1000000) != 0)
  {
LABEL_72:
    v28 = 2654435761 * self->_matchingTemplateCountType0Identity1;
    if ((*&v4 & 0x2000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_116:
    v29 = 0;
    if ((*&v4 & 0x4000000) != 0)
    {
      goto LABEL_74;
    }

LABEL_117:
    v30 = 0;
    return v69 ^ v70 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  }

LABEL_115:
  v28 = 0;
  if ((*&v4 & 0x2000000) == 0)
  {
    goto LABEL_116;
  }

LABEL_73:
  v29 = 2654435761 * self->_matchingTemplateCountType1Identity0;
  if ((*&v4 & 0x4000000) == 0)
  {
    goto LABEL_117;
  }

LABEL_74:
  v30 = 2654435761 * self->_matchingTemplateCountType1Identity1;
  return v69 ^ v70 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 436) & 2) != 0)
  {
    self->_timestamp = v4[29];
    *&self->_has |= 2uLL;
  }

  v34 = v4;
  v5 = [v4 baseTemplateFeatureCountsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDBiometricKitDailyUpdate addBaseTemplateFeatureCount:](self, "addBaseTemplateFeatureCount:", [v34 baseTemplateFeatureCountAtIndex:i]);
    }
  }

  v8 = [v34 onlineUpdateTemplateFeatureCountsCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[AWDBiometricKitDailyUpdate addOnlineUpdateTemplateFeatureCount:](self, "addOnlineUpdateTemplateFeatureCount:", [v34 onlineUpdateTemplateFeatureCountAtIndex:j]);
    }
  }

  v11 = [v34 passcodeUpdateTemplateFeatureCountsCount];
  if (v11)
  {
    v12 = v11;
    for (k = 0; k != v12; ++k)
    {
      -[AWDBiometricKitDailyUpdate addPasscodeUpdateTemplateFeatureCount:](self, "addPasscodeUpdateTemplateFeatureCount:", [v34 passcodeUpdateTemplateFeatureCountAtIndex:k]);
    }
  }

  v14 = *(v34 + 436);
  if ((v14 & 0x80000000000000) != 0)
  {
    self->_unlockEnabled = v34[434];
    *&self->_has |= 0x80000000000000uLL;
    v14 = *(v34 + 436);
    if ((v14 & 0x2000000000000) == 0)
    {
LABEL_14:
      if ((v14 & 0x4000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_94;
    }
  }

  else if ((v14 & 0x2000000000000) == 0)
  {
    goto LABEL_14;
  }

  self->_applePayEnabled = v34[428];
  *&self->_has |= 0x2000000000000uLL;
  v14 = *(v34 + 436);
  if ((v14 & 0x4000000000000) == 0)
  {
LABEL_15:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_attentionDetectionEnabled = v34[429];
  *&self->_has |= 0x4000000000000uLL;
  v14 = *(v34 + 436);
  if ((v14 & 0x80000) == 0)
  {
LABEL_16:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_matchingCountDouble01 = *(v34 + 77);
  *&self->_has |= 0x80000uLL;
  v14 = *(v34 + 436);
  if ((v14 & 0x100000) == 0)
  {
LABEL_17:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_matchingCountDouble02 = *(v34 + 78);
  *&self->_has |= 0x100000uLL;
  v14 = *(v34 + 436);
  if ((v14 & 0x200000) == 0)
  {
LABEL_18:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_matchingCountDouble03 = *(v34 + 79);
  *&self->_has |= 0x200000uLL;
  v14 = *(v34 + 436);
  if ((v14 & 0x400000) == 0)
  {
LABEL_19:
    if ((v14 & 0x20000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_matchingCountDouble04 = *(v34 + 80);
  *&self->_has |= 0x400000uLL;
  v14 = *(v34 + 436);
  if ((v14 & 0x20000000000) == 0)
  {
LABEL_20:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_staticUnlockCount = *(v34 + 99);
  *&self->_has |= 0x20000000000uLL;
  v14 = *(v34 + 436);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_21:
    if ((v14 & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_100:
  self->_onlineUnlockCount = *(v34 + 85);
  *&self->_has |= 0x8000000uLL;
  if ((*(v34 + 436) & 0x4000000000) != 0)
  {
LABEL_22:
    self->_shortTermUnlockCount = *(v34 + 96);
    *&self->_has |= 0x4000000000uLL;
  }

LABEL_23:
  v15 = [v34 matchingBinCountsCount];
  if (v15)
  {
    v16 = v15;
    for (m = 0; m != v16; ++m)
    {
      -[AWDBiometricKitDailyUpdate addMatchingBinCounts:](self, "addMatchingBinCounts:", [v34 matchingBinCountsAtIndex:m]);
    }
  }

  v18 = [v34 matchingTemplateTypeCountsCount];
  if (v18)
  {
    v19 = v18;
    for (n = 0; n != v19; ++n)
    {
      -[AWDBiometricKitDailyUpdate addMatchingTemplateTypeCounts:](self, "addMatchingTemplateTypeCounts:", [v34 matchingTemplateTypeCountsAtIndex:n]);
    }
  }

  if ((v34[442] & 0x10) != 0)
  {
    self->_cameraInterlock = v34[431];
    *&self->_has |= 0x10000000000000uLL;
  }

  v21 = [v34 bioCheckInfosCount];
  if (v21)
  {
    v22 = v21;
    for (ii = 0; ii != v22; ++ii)
    {
      -[AWDBiometricKitDailyUpdate addBioCheckInfo:](self, "addBioCheckInfo:", [v34 bioCheckInfoAtIndex:ii]);
    }
  }

  v24 = [v34 bioCheckResultsCount];
  if (v24)
  {
    v25 = v24;
    for (jj = 0; jj != v25; ++jj)
    {
      -[AWDBiometricKitDailyUpdate addBioCheckResult:](self, "addBioCheckResult:", [v34 bioCheckResultAtIndex:jj]);
    }
  }

  v27 = [v34 passcodeUpdatesCount];
  if (v27)
  {
    v28 = v27;
    for (kk = 0; kk != v28; ++kk)
    {
      -[AWDBiometricKitDailyUpdate addPasscodeUpdate:](self, "addPasscodeUpdate:", [v34 passcodeUpdateAtIndex:kk]);
    }
  }

  if (v34[436] < 0)
  {
    self->_enrolledIdentityCount = *(v34 + 65);
    *&self->_has |= 0x80uLL;
  }

  v30 = [v34 matchingIdentityCountsCount];
  if (v30)
  {
    v31 = v30;
    for (mm = 0; mm != v31; ++mm)
    {
      -[AWDBiometricKitDailyUpdate addMatchingIdentityCounts:](self, "addMatchingIdentityCounts:", [v34 matchingIdentityCountsAtIndex:mm]);
    }
  }

  v33 = *(v34 + 436);
  if ((v33 & 0x20000000000000) != 0)
  {
    self->_combinedSequenceEnabled = v34[432];
    *&self->_has |= 0x20000000000000uLL;
    v33 = *(v34 + 436);
    if ((v33 & 1) == 0)
    {
LABEL_47:
      if ((v33 & 0x40) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_104;
    }
  }

  else if ((v33 & 1) == 0)
  {
    goto LABEL_47;
  }

  self->_bioLockoutTime = *(v34 + 28);
  *&self->_has |= 1uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x40) == 0)
  {
LABEL_48:
    if ((v33 & 0x8000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_bioLockoutCount = *(v34 + 64);
  *&self->_has |= 0x40uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x8000000000000) == 0)
  {
LABEL_49:
    if ((v33 & 0x1000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_autoRetryEnabled = v34[430];
  *&self->_has |= 0x8000000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x1000000000000) == 0)
  {
LABEL_50:
    if ((v33 & 0x100000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_107;
  }

LABEL_106:
  self->_yogiErrorDays = *(v34 + 106);
  *&self->_has |= 0x1000000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x100000000000) == 0)
  {
LABEL_51:
    if ((v33 & 0x800000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_108;
  }

LABEL_107:
  self->_totalMatchAttempts = *(v34 + 102);
  *&self->_has |= 0x100000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x800000000000) == 0)
  {
LABEL_52:
    if ((v33 & 0x400000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_109;
  }

LABEL_108:
  self->_totalMatchAttemptsSuccessful = *(v34 + 105);
  *&self->_has |= 0x800000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x400000000000) == 0)
  {
LABEL_53:
    if ((v33 & 0x200000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_110;
  }

LABEL_109:
  self->_totalMatchAttemptsFailed = *(v34 + 104);
  *&self->_has |= 0x400000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x200000000000) == 0)
  {
LABEL_54:
    if ((v33 & 0x20000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_111;
  }

LABEL_110:
  self->_totalMatchAttemptsFaceDetected = *(v34 + 103);
  *&self->_has |= 0x200000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x20000) == 0)
  {
LABEL_55:
    if ((v33 & 0x8000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_112;
  }

LABEL_111:
  self->_matchAttemptsType0 = *(v34 + 75);
  *&self->_has |= 0x20000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x8000) == 0)
  {
LABEL_56:
    if ((v33 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_113;
  }

LABEL_112:
  self->_matchAttemptsSuccessfulType0 = *(v34 + 73);
  *&self->_has |= 0x8000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x2000) == 0)
  {
LABEL_57:
    if ((v33 & 0x800) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_114;
  }

LABEL_113:
  self->_matchAttemptsFailedType0 = *(v34 + 71);
  *&self->_has |= 0x2000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x800) == 0)
  {
LABEL_58:
    if ((v33 & 0x40000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_115;
  }

LABEL_114:
  self->_matchAttemptsFaceDetectedType0 = *(v34 + 69);
  *&self->_has |= 0x800uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x40000) == 0)
  {
LABEL_59:
    if ((v33 & 0x10000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_116;
  }

LABEL_115:
  self->_matchAttemptsType1 = *(v34 + 76);
  *&self->_has |= 0x40000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x10000) == 0)
  {
LABEL_60:
    if ((v33 & 0x4000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_117;
  }

LABEL_116:
  self->_matchAttemptsSuccessfulType1 = *(v34 + 74);
  *&self->_has |= 0x10000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x4000) == 0)
  {
LABEL_61:
    if ((v33 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_118;
  }

LABEL_117:
  self->_matchAttemptsFailedType1 = *(v34 + 72);
  *&self->_has |= 0x4000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x1000) == 0)
  {
LABEL_62:
    if ((v33 & 0x40000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_119;
  }

LABEL_118:
  self->_matchAttemptsFaceDetectedType1 = *(v34 + 70);
  *&self->_has |= 0x1000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x40000000000) == 0)
  {
LABEL_63:
    if ((v33 & 0x10000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_120;
  }

LABEL_119:
  self->_staticUnlockCountType0 = *(v34 + 100);
  *&self->_has |= 0x40000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x10000000) == 0)
  {
LABEL_64:
    if ((v33 & 0x8000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_121;
  }

LABEL_120:
  self->_onlineUnlockCountType0 = *(v34 + 86);
  *&self->_has |= 0x10000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x8000000000) == 0)
  {
LABEL_65:
    if ((v33 & 0x80000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_122;
  }

LABEL_121:
  self->_shortTermUnlockCountType0 = *(v34 + 97);
  *&self->_has |= 0x8000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x80000000000) == 0)
  {
LABEL_66:
    if ((v33 & 0x20000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_123;
  }

LABEL_122:
  self->_staticUnlockCountType1 = *(v34 + 101);
  *&self->_has |= 0x80000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x20000000) == 0)
  {
LABEL_67:
    if ((v33 & 0x10000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_124;
  }

LABEL_123:
  self->_onlineUnlockCountType1 = *(v34 + 87);
  *&self->_has |= 0x20000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x10000000000) == 0)
  {
LABEL_68:
    if ((v33 & 4) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_125;
  }

LABEL_124:
  self->_shortTermUnlockCountType1 = *(v34 + 98);
  *&self->_has |= 0x10000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 4) == 0)
  {
LABEL_69:
    if ((v33 & 0x40000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_126;
  }

LABEL_125:
  self->_baseTemplateFeatureCountType0Identity0 = *(v34 + 60);
  *&self->_has |= 4uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x40000000) == 0)
  {
LABEL_70:
    if ((v33 & 0x400000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_127;
  }

LABEL_126:
  self->_onlineUpdateTemplateFeatureCountType0Identity0 = *(v34 + 88);
  *&self->_has |= 0x40000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x400000000) == 0)
  {
LABEL_71:
    if ((v33 & 8) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_128;
  }

LABEL_127:
  self->_passcodeUpdateTemplateFeatureCountType0Identity0 = *(v34 + 92);
  *&self->_has |= 0x400000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 8) == 0)
  {
LABEL_72:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_129;
  }

LABEL_128:
  self->_baseTemplateFeatureCountType0Identity1 = *(v34 + 61);
  *&self->_has |= 8uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_73:
    if ((v33 & 0x800000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_130;
  }

LABEL_129:
  self->_onlineUpdateTemplateFeatureCountType0Identity1 = *(v34 + 89);
  *&self->_has |= 0x80000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x800000000) == 0)
  {
LABEL_74:
    if ((v33 & 0x10) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_131;
  }

LABEL_130:
  self->_passcodeUpdateTemplateFeatureCountType0Identity1 = *(v34 + 93);
  *&self->_has |= 0x800000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x10) == 0)
  {
LABEL_75:
    if ((v33 & 0x100000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_132;
  }

LABEL_131:
  self->_baseTemplateFeatureCountType1Identity0 = *(v34 + 62);
  *&self->_has |= 0x10uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x100000000) == 0)
  {
LABEL_76:
    if ((v33 & 0x1000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_133;
  }

LABEL_132:
  self->_onlineUpdateTemplateFeatureCountType1Identity0 = *(v34 + 90);
  *&self->_has |= 0x100000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x1000000000) == 0)
  {
LABEL_77:
    if ((v33 & 0x20) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_134;
  }

LABEL_133:
  self->_passcodeUpdateTemplateFeatureCountType1Identity0 = *(v34 + 94);
  *&self->_has |= 0x1000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x20) == 0)
  {
LABEL_78:
    if ((v33 & 0x200000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_135;
  }

LABEL_134:
  self->_baseTemplateFeatureCountType1Identity1 = *(v34 + 63);
  *&self->_has |= 0x20uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x200000000) == 0)
  {
LABEL_79:
    if ((v33 & 0x2000000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_136;
  }

LABEL_135:
  self->_onlineUpdateTemplateFeatureCountType1Identity1 = *(v34 + 91);
  *&self->_has |= 0x200000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x2000000000) == 0)
  {
LABEL_80:
    if ((v33 & 0x40000000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_137;
  }

LABEL_136:
  self->_passcodeUpdateTemplateFeatureCountType1Identity1 = *(v34 + 95);
  *&self->_has |= 0x2000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x40000000000000) == 0)
  {
LABEL_81:
    if ((v33 & 0x200) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_138;
  }

LABEL_137:
  self->_type1MatchEnabled = v34[433];
  *&self->_has |= 0x40000000000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x200) == 0)
  {
LABEL_82:
    if ((v33 & 0x400) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_139;
  }

LABEL_138:
  self->_enrolledTemplateCountType0 = *(v34 + 67);
  *&self->_has |= 0x200uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x400) == 0)
  {
LABEL_83:
    if ((v33 & 0x100) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_140;
  }

LABEL_139:
  self->_enrolledTemplateCountType1 = *(v34 + 68);
  *&self->_has |= 0x400uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x100) == 0)
  {
LABEL_84:
    if ((v33 & 0x800000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_141;
  }

LABEL_140:
  self->_enrolledTemplateCountTotal = *(v34 + 66);
  *&self->_has |= 0x100uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x800000) == 0)
  {
LABEL_85:
    if ((v33 & 0x1000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_142;
  }

LABEL_141:
  self->_matchingTemplateCountType0Identity0 = *(v34 + 81);
  *&self->_has |= 0x800000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x1000000) == 0)
  {
LABEL_86:
    if ((v33 & 0x2000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_143;
  }

LABEL_142:
  self->_matchingTemplateCountType0Identity1 = *(v34 + 82);
  *&self->_has |= 0x1000000uLL;
  v33 = *(v34 + 436);
  if ((v33 & 0x2000000) == 0)
  {
LABEL_87:
    if ((v33 & 0x4000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_143:
  self->_matchingTemplateCountType1Identity0 = *(v34 + 83);
  *&self->_has |= 0x2000000uLL;
  if ((*(v34 + 436) & 0x4000000) != 0)
  {
LABEL_88:
    self->_matchingTemplateCountType1Identity1 = *(v34 + 84);
    *&self->_has |= 0x4000000uLL;
  }

LABEL_89:
}

@end