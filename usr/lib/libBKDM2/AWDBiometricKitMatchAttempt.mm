@interface AWDBiometricKitMatchAttempt
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)identityCreationTimeAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAmbientLux:(BOOL)lux;
- (void)setHasAsDepthFailure:(BOOL)failure;
- (void)setHasAsFailure:(BOOL)failure;
- (void)setHasAsFloodFailure:(BOOL)failure;
- (void)setHasAutoRetry:(BOOL)retry;
- (void)setHasAutoRetryAllowed:(BOOL)allowed;
- (void)setHasAutoRetryEnabled:(BOOL)enabled;
- (void)setHasBioCheckCamRectH:(BOOL)h;
- (void)setHasBioCheckCamRectW:(BOOL)w;
- (void)setHasBioCheckCamRectX:(BOOL)x;
- (void)setHasBioCheckCamRectY:(BOOL)y;
- (void)setHasBioCheckFaceDistance:(BOOL)distance;
- (void)setHasBioCheckFrameCount:(BOOL)count;
- (void)setHasBioCheckFrameDenseCount:(BOOL)count;
- (void)setHasBioCheckFrameFloodCount:(BOOL)count;
- (void)setHasBioCheckFrameSparseCount:(BOOL)count;
- (void)setHasBioCheckPPMAllocatedBudget:(BOOL)budget;
- (void)setHasBioCheckPPMRequestedBudget:(BOOL)budget;
- (void)setHasBioCheckResult:(BOOL)result;
- (void)setHasBioLockout:(BOOL)lockout;
- (void)setHasBioLockoutReason:(BOOL)reason;
- (void)setHasCamRectH:(BOOL)h;
- (void)setHasCamRectW:(BOOL)w;
- (void)setHasCamRectX:(BOOL)x;
- (void)setHasCamRectY:(BOOL)y;
- (void)setHasCameraErr:(BOOL)err;
- (void)setHasCaptureMethod:(BOOL)method;
- (void)setHasCombinedSequenceEnabled:(BOOL)enabled;
- (void)setHasDeviceOrientation:(BOOL)orientation;
- (void)setHasEngagementInfoFeedbackCameraObstructed:(BOOL)obstructed;
- (void)setHasEngagementInfoFeedbackFaceOccluded:(BOOL)occluded;
- (void)setHasEngagementInfoFeedbackFaceTooClose:(BOOL)close;
- (void)setHasEngagementInfoFeedbackFaceTooFar:(BOOL)far;
- (void)setHasEngagementInfoFeedbackNoAttention:(BOOL)attention;
- (void)setHasEngagementInfoFeedbackNoFaceDetected:(BOOL)detected;
- (void)setHasEngagementInfoFeedbackNoseAndMouthOccluded:(BOOL)occluded;
- (void)setHasEngagementInfoFeedbackPartialOutOfFOV:(BOOL)v;
- (void)setHasEngagementInfoFeedbackPoseMarginal:(BOOL)marginal;
- (void)setHasEngagementInfoFeedbackPoseOutOfRange:(BOOL)range;
- (void)setHasFaceDetectCamRectH:(BOOL)h;
- (void)setHasFaceDetectCamRectW:(BOOL)w;
- (void)setHasFaceDetectCamRectX:(BOOL)x;
- (void)setHasFaceDetectCamRectY:(BOOL)y;
- (void)setHasFaceDetectEndTime:(BOOL)time;
- (void)setHasFaceDetectFaceDistance:(BOOL)distance;
- (void)setHasFaceDetectFrameCount:(BOOL)count;
- (void)setHasFaceDetectFrameDenseCount:(BOOL)count;
- (void)setHasFaceDetectFrameFloodCount:(BOOL)count;
- (void)setHasFaceDetectFrameSparseCount:(BOOL)count;
- (void)setHasFaceDetectPPMAllocatedBudget:(BOOL)budget;
- (void)setHasFaceDetectPPMRequestedBudget:(BOOL)budget;
- (void)setHasFaceDetectResult:(BOOL)result;
- (void)setHasFaceDistance:(BOOL)distance;
- (void)setHasFaceOrientation:(BOOL)orientation;
- (void)setHasFacePitch:(BOOL)pitch;
- (void)setHasFaceRoll:(BOOL)roll;
- (void)setHasFaceYaw:(BOOL)yaw;
- (void)setHasFailedMatchAttemptsFromBiocheck:(BOOL)biocheck;
- (void)setHasFailedMatchAttemptsFromFD:(BOOL)d;
- (void)setHasFailedUnlockAttemptsFromBiocheck:(BOOL)biocheck;
- (void)setHasFailedUnlockAttemptsFromFD:(BOOL)d;
- (void)setHasFeatureGenerationError:(BOOL)error;
- (void)setHasHasOcclusion:(BOOL)occlusion;
- (void)setHasMatchCancelled:(BOOL)cancelled;
- (void)setHasMatchDepthFailure:(BOOL)failure;
- (void)setHasMatchFeatureVectorError:(BOOL)error;
- (void)setHasMatchFloodFailure:(BOOL)failure;
- (void)setHasMatchForUnlock:(BOOL)unlock;
- (void)setHasMatchIdentityCount:(BOOL)count;
- (void)setHasMatchType:(BOOL)type;
- (void)setHasMatcherFailure:(BOOL)failure;
- (void)setHasOnlineTemplateAge:(BOOL)age;
- (void)setHasOnlineTemplateUpdated:(BOOL)updated;
- (void)setHasOverallResult:(BOOL)result;
- (void)setHasOverallTime:(BOOL)time;
- (void)setHasOverallTimeWithRetries:(BOOL)retries;
- (void)setHasPasscodeChallengeAllowed:(BOOL)allowed;
- (void)setHasProbingPatternCamRectH:(BOOL)h;
- (void)setHasProbingPatternCamRectW:(BOOL)w;
- (void)setHasProbingPatternCamRectX:(BOOL)x;
- (void)setHasProbingPatternCamRectY:(BOOL)y;
- (void)setHasProbingPatternEndTime:(BOOL)time;
- (void)setHasProbingPatternFaceDistance:(BOOL)distance;
- (void)setHasProbingPatternFailure:(BOOL)failure;
- (void)setHasProbingPatternFrameCount:(BOOL)count;
- (void)setHasProbingPatternFrameDenseCount:(BOOL)count;
- (void)setHasProbingPatternFrameFloodCount:(BOOL)count;
- (void)setHasProbingPatternResult:(BOOL)result;
- (void)setHasRfcFrameIndex:(BOOL)index;
- (void)setHasRfcSetIndex:(BOOL)index;
- (void)setHasSensorTemperature:(BOOL)temperature;
- (void)setHasShortTermTemplateAge:(BOOL)age;
- (void)setHasTimeSinceSleep:(BOOL)sleep;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDBiometricKitMatchAttempt

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = AWDBiometricKitMatchAttempt;
  [(AWDBiometricKitMatchAttempt *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  v3 = 256;
  if (!timestamp)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasOverallResult:(BOOL)result
{
  if (result)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xDFFFFFFF | v3;
}

- (void)setHasOverallTime:(BOOL)time
{
  v3 = 4;
  if (!time)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasFaceDetectEndTime:(BOOL)time
{
  v3 = 2;
  if (!time)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasFaceDetectResult:(BOOL)result
{
  v3 = 0x20000000000;
  if (!result)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectFrameCount:(BOOL)count
{
  v3 = 0x800000000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasFaceDetectFrameFloodCount:(BOOL)count
{
  v3 = 0x2000000000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectFrameSparseCount:(BOOL)count
{
  v3 = 0x4000000000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectFrameDenseCount:(BOOL)count
{
  v3 = 0x1000000000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasBioCheckResult:(BOOL)result
{
  v3 = 0x200000;
  if (!result)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasBioCheckFrameCount:(BOOL)count
{
  v3 = 0x8000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasBioCheckFrameFloodCount:(BOOL)count
{
  v3 = 0x20000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasBioCheckFrameSparseCount:(BOOL)count
{
  v3 = 0x40000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasBioCheckFrameDenseCount:(BOOL)count
{
  v3 = 0x10000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasProbingPatternEndTime:(BOOL)time
{
  v3 = 16;
  if (!time)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasProbingPatternResult:(BOOL)result
{
  if (result)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFFD | v3;
}

- (void)setHasProbingPatternFrameCount:(BOOL)count
{
  v3 = 0x2000000000000000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProbingPatternFrameFloodCount:(BOOL)count
{
  v3 = 0x8000000000000000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasProbingPatternFrameDenseCount:(BOOL)count
{
  v3 = 0x4000000000000000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAmbientLux:(BOOL)lux
{
  v3 = 512;
  if (!lux)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasProbingPatternFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = v3 & 0x80000000 | *(&self->_has + 2) & 0x7FFFFFFF;
}

- (void)setHasMatcherFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xF7FFFFFF | v3;
}

- (void)setHasMatchDepthFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFEFFFFFF | v3;
}

- (void)setHasMatchFloodFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFDFFFFFF | v3;
}

- (void)setHasAsFloodFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFBF | v3;
}

- (void)setHasAsDepthFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFEF | v3;
}

- (void)setHasOnlineTemplateUpdated:(BOOL)updated
{
  if (updated)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xEFFFFFFF | v3;
}

- (void)setHasPasscodeChallengeAllowed:(BOOL)allowed
{
  if (allowed)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xBFFFFFFF | v3;
}

- (void)setHasFeatureGenerationError:(BOOL)error
{
  v3 = 0x8000000000000;
  if (!error)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasSensorTemperature:(BOOL)temperature
{
  if (temperature)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFFB | v3;
}

- (void)setHasFaceDistance:(BOOL)distance
{
  v3 = 0x40000000000;
  if (!distance)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasHasOcclusion:(BOOL)occlusion
{
  if (occlusion)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFBFFFFF | v3;
}

- (void)setHasCamRectX:(BOOL)x
{
  v3 = 0x2000000;
  if (!x)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasCamRectY:(BOOL)y
{
  v3 = 0x4000000;
  if (!y)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasCamRectW:(BOOL)w
{
  v3 = 0x1000000;
  if (!w)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasCamRectH:(BOOL)h
{
  v3 = 0x800000;
  if (!h)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasFaceDetectPPMRequestedBudget:(BOOL)budget
{
  v3 = 0x10000000000;
  if (!budget)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectPPMAllocatedBudget:(BOOL)budget
{
  v3 = 0x8000000000;
  if (!budget)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasBioCheckPPMRequestedBudget:(BOOL)budget
{
  v3 = 0x100000;
  if (!budget)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasBioCheckPPMAllocatedBudget:(BOOL)budget
{
  v3 = 0x80000;
  if (!budget)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasRfcSetIndex:(BOOL)index
{
  v3 = 64;
  if (!index)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasRfcFrameIndex:(BOOL)index
{
  v3 = 32;
  if (!index)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasBioLockout:(BOOL)lockout
{
  if (lockout)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFBFF | v3;
}

- (void)setHasCameraErr:(BOOL)err
{
  v3 = 0x8000000;
  if (!err)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasMatchForUnlock:(BOOL)unlock
{
  if (unlock)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFBFFFFFF | v3;
}

- (void)setHasFailedUnlockAttemptsFromFD:(BOOL)d
{
  v3 = 0x4000000000000;
  if (!d)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasFailedUnlockAttemptsFromBiocheck:(BOOL)biocheck
{
  v3 = 0x2000000000000;
  if (!biocheck)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasFailedMatchAttemptsFromFD:(BOOL)d
{
  v3 = 0x1000000000000;
  if (!d)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasFailedMatchAttemptsFromBiocheck:(BOOL)biocheck
{
  v3 = 0x800000000000;
  if (!biocheck)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasBioLockoutReason:(BOOL)reason
{
  v3 = 0x400000;
  if (!reason)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasMatchFeatureVectorError:(BOOL)error
{
  v3 = 0x10000000000000;
  if (!error)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasOnlineTemplateAge:(BOOL)age
{
  v3 = 0x80000000000000;
  if (!age)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasShortTermTemplateAge:(BOOL)age
{
  if (age)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFF7 | v3;
}

- (void)setHasFaceDetectFaceDistance:(BOOL)distance
{
  v3 = 0x400000000;
  if (!distance)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectCamRectX:(BOOL)x
{
  v3 = 0x100000000;
  if (!x)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectCamRectY:(BOOL)y
{
  v3 = 0x200000000;
  if (!y)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectCamRectW:(BOOL)w
{
  v3 = 0x80000000;
  if (!w)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasFaceDetectCamRectH:(BOOL)h
{
  v3 = 0x40000000;
  if (!h)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasBioCheckFaceDistance:(BOOL)distance
{
  v3 = 0x4000;
  if (!distance)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasBioCheckCamRectX:(BOOL)x
{
  v3 = 4096;
  if (!x)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasBioCheckCamRectY:(BOOL)y
{
  v3 = 0x2000;
  if (!y)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasBioCheckCamRectW:(BOOL)w
{
  v3 = 2048;
  if (!w)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasBioCheckCamRectH:(BOOL)h
{
  v3 = 1024;
  if (!h)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasProbingPatternFaceDistance:(BOOL)distance
{
  v3 = 0x1000000000000000;
  if (!distance)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProbingPatternCamRectX:(BOOL)x
{
  v3 = 0x400000000000000;
  if (!x)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProbingPatternCamRectY:(BOOL)y
{
  v3 = 0x800000000000000;
  if (!y)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProbingPatternCamRectW:(BOOL)w
{
  v3 = 0x200000000000000;
  if (!w)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProbingPatternCamRectH:(BOOL)h
{
  v3 = 0x100000000000000;
  if (!h)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAsFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFDF | v3;
}

- (void)setHasAutoRetry:(BOOL)retry
{
  if (retry)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFF7F | v3;
}

- (void)setHasAutoRetryAllowed:(BOOL)allowed
{
  if (allowed)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFEFF | v3;
}

- (void)setHasDeviceOrientation:(BOOL)orientation
{
  v3 = 0x20000000;
  if (!orientation)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasMatchIdentityCount:(BOOL)count
{
  v3 = 0x20000000000000;
  if (!count)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCaptureMethod:(BOOL)method
{
  v3 = 0x10000000;
  if (!method)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasEngagementInfoFeedbackNoFaceDetected:(BOOL)detected
{
  if (detected)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFDFFFF | v3;
}

- (void)setHasEngagementInfoFeedbackFaceTooClose:(BOOL)close
{
  if (close)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFBFFF | v3;
}

- (void)setHasEngagementInfoFeedbackFaceTooFar:(BOOL)far
{
  if (far)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFF7FFF | v3;
}

- (void)setHasEngagementInfoFeedbackPoseOutOfRange:(BOOL)range
{
  if (range)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFDFFFFF | v3;
}

- (void)setHasEngagementInfoFeedbackNoAttention:(BOOL)attention
{
  if (attention)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFEFFFF | v3;
}

- (void)setHasEngagementInfoFeedbackFaceOccluded:(BOOL)occluded
{
  if (occluded)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFDFFF | v3;
}

- (void)setHasEngagementInfoFeedbackCameraObstructed:(BOOL)obstructed
{
  if (obstructed)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFEFFF | v3;
}

- (void)setHasEngagementInfoFeedbackPartialOutOfFOV:(BOOL)v
{
  if (v)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFF7FFFF | v3;
}

- (void)setHasCombinedSequenceEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFF7FF | v3;
}

- (void)setHasOverallTimeWithRetries:(BOOL)retries
{
  v3 = 8;
  if (!retries)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasAutoRetryEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFDFF | v3;
}

- (unint64_t)identityCreationTimeAtIndex:(unint64_t)index
{
  p_identityCreationTimes = &self->_identityCreationTimes;
  count = self->_identityCreationTimes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x29EDB8DD0];
    v7 = *MEMORY[0x29EDB8D10];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_identityCreationTimes->list[index];
}

- (void)setHasMatchCancelled:(BOOL)cancelled
{
  if (cancelled)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFF7FFFFF | v3;
}

- (void)setHasEngagementInfoFeedbackPoseMarginal:(BOOL)marginal
{
  if (marginal)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFEFFFFF | v3;
}

- (void)setHasFaceOrientation:(BOOL)orientation
{
  v3 = 0x80000000000;
  if (!orientation)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasFacePitch:(BOOL)pitch
{
  v3 = 0x100000000000;
  if (!pitch)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasFaceYaw:(BOOL)yaw
{
  v3 = 0x400000000000;
  if (!yaw)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasFaceRoll:(BOOL)roll
{
  v3 = 0x200000000000;
  if (!roll)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasTimeSinceSleep:(BOOL)sleep
{
  v3 = 128;
  if (!sleep)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasEngagementInfoFeedbackNoseAndMouthOccluded:(BOOL)occluded
{
  if (occluded)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFBFFFF | v3;
}

- (void)setHasMatchType:(BOOL)type
{
  v3 = 0x40000000000000;
  if (!type)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v8.receiver = self;
  v8.super_class = AWDBiometricKitMatchAttempt;
  v4 = [(AWDBiometricKitMatchAttempt *)&v8 description];
  dictionaryRepresentation = [(AWDBiometricKitMatchAttempt *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  p_has = &self->_has;
  if (*(&self->_has + 1))
  {
    v5 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];
  }

  if ((*(&self->_has + 11) & 0x20) != 0)
  {
    v6 = [MEMORY[0x29EDBA070] numberWithBool:self->_overallResult];
    [dictionary setObject:v6 forKey:@"overallResult"];
  }

  v7 = *p_has;
  if ((*p_has & 4) != 0)
  {
    v54 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_overallTime];
    [dictionary setObject:v54 forKey:@"overallTime"];

    v7 = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_7:
      if ((v7 & 0x20000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_135;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_7;
  }

  v55 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_faceDetectEndTime];
  [dictionary setObject:v55 forKey:@"faceDetectEndTime"];

  v7 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_8:
    if ((v7 & 0x800000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_136;
  }

LABEL_135:
  v56 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectResult];
  [dictionary setObject:v56 forKey:@"faceDetectResult"];

  v7 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_9:
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_137;
  }

LABEL_136:
  v57 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectFrameCount];
  [dictionary setObject:v57 forKey:@"faceDetectFrameCount"];

  v7 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_10:
    if ((v7 & 0x4000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_138;
  }

LABEL_137:
  v58 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectFrameFloodCount];
  [dictionary setObject:v58 forKey:@"faceDetectFrameFloodCount"];

  v7 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_11:
    if ((v7 & 0x1000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_139;
  }

LABEL_138:
  v59 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectFrameSparseCount];
  [dictionary setObject:v59 forKey:@"faceDetectFrameSparseCount"];

  v7 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_12:
    if ((v7 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_140;
  }

LABEL_139:
  v60 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectFrameDenseCount];
  [dictionary setObject:v60 forKey:@"faceDetectFrameDenseCount"];

  v7 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_13:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_141;
  }

LABEL_140:
  v61 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_bioCheckEndTime];
  [dictionary setObject:v61 forKey:@"bioCheckEndTime"];

  v7 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_14:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_142;
  }

LABEL_141:
  v62 = [MEMORY[0x29EDBA070] numberWithInt:self->_bioCheckResult];
  [dictionary setObject:v62 forKey:@"bioCheckResult"];

  v7 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_15:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_143;
  }

LABEL_142:
  v63 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCheckFrameCount];
  [dictionary setObject:v63 forKey:@"bioCheckFrameCount"];

  v7 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_16:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_144;
  }

LABEL_143:
  v64 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCheckFrameFloodCount];
  [dictionary setObject:v64 forKey:@"bioCheckFrameFloodCount"];

  v7 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_17:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_145;
  }

LABEL_144:
  v65 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCheckFrameSparseCount];
  [dictionary setObject:v65 forKey:@"bioCheckFrameSparseCount"];

  v7 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_18:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_145:
  v66 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCheckFrameDenseCount];
  [dictionary setObject:v66 forKey:@"bioCheckFrameDenseCount"];

  if ((*p_has & 0x10) != 0)
  {
LABEL_19:
    v8 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_probingPatternEndTime];
    [dictionary setObject:v8 forKey:@"probingPatternEndTime"];
  }

LABEL_20:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    v9 = [MEMORY[0x29EDBA070] numberWithInt:self->_probingPatternResult];
    [dictionary setObject:v9 forKey:@"probingPatternResult"];
  }

  v10 = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternFrameCount];
    [dictionary setObject:v11 forKey:@"probingPatternFrameCount"];

    v10 = *p_has;
  }

  if (v10 < 0)
  {
    v12 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternFrameFloodCount];
    [dictionary setObject:v12 forKey:@"probingPatternFrameFloodCount"];
  }

  if (*(&self->_has + 8))
  {
    v13 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternFrameSparseCount];
    [dictionary setObject:v13 forKey:@"probingPatternFrameSparseCount"];
  }

  v14 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternFrameDenseCount];
    [dictionary setObject:v15 forKey:@"probingPatternFrameDenseCount"];

    v14 = *p_has;
  }

  if ((v14 & 0x200) != 0)
  {
    v16 = [MEMORY[0x29EDBA070] numberWithInt:self->_ambientLux];
    [dictionary setObject:v16 forKey:@"ambientLux"];
  }

  v17 = *(&self->_has + 2);
  if (v17 < 0)
  {
    v110 = [MEMORY[0x29EDBA070] numberWithBool:self->_probingPatternFailure];
    [dictionary setObject:v110 forKey:@"probingPatternFailure"];

    v17 = *(&self->_has + 2);
    if ((v17 & 0x8000000) == 0)
    {
LABEL_34:
      if ((v17 & 0x1000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_198;
    }
  }

  else if ((v17 & 0x8000000) == 0)
  {
    goto LABEL_34;
  }

  v111 = [MEMORY[0x29EDBA070] numberWithBool:self->_matcherFailure];
  [dictionary setObject:v111 forKey:@"matcherFailure"];

  v17 = *(&self->_has + 2);
  if ((v17 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v17 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_199;
  }

LABEL_198:
  v112 = [MEMORY[0x29EDBA070] numberWithBool:self->_matchDepthFailure];
  [dictionary setObject:v112 forKey:@"matchDepthFailure"];

  v17 = *(&self->_has + 2);
  if ((v17 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_200;
  }

LABEL_199:
  v113 = [MEMORY[0x29EDBA070] numberWithBool:self->_matchFloodFailure];
  [dictionary setObject:v113 forKey:@"matchFloodFailure"];

  v17 = *(&self->_has + 2);
  if ((v17 & 0x40) == 0)
  {
LABEL_37:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_201;
  }

LABEL_200:
  v114 = [MEMORY[0x29EDBA070] numberWithBool:self->_asFloodFailure];
  [dictionary setObject:v114 forKey:@"asFloodFailure"];

  v17 = *(&self->_has + 2);
  if ((v17 & 0x10) == 0)
  {
LABEL_38:
    if ((v17 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_202;
  }

LABEL_201:
  v115 = [MEMORY[0x29EDBA070] numberWithBool:self->_asDepthFailure];
  [dictionary setObject:v115 forKey:@"asDepthFailure"];

  v17 = *(&self->_has + 2);
  if ((v17 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v17 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_202:
  v116 = [MEMORY[0x29EDBA070] numberWithBool:self->_onlineTemplateUpdated];
  [dictionary setObject:v116 forKey:@"onlineTemplateUpdated"];

  if ((*(&self->_has + 2) & 0x40000000) != 0)
  {
LABEL_40:
    v18 = [MEMORY[0x29EDBA070] numberWithBool:self->_passcodeChallengeAllowed];
    [dictionary setObject:v18 forKey:@"passcodeChallengeAllowed"];
  }

LABEL_41:
  if ((*(&self->_has + 6) & 8) != 0)
  {
    v19 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_featureGenerationError];
    [dictionary setObject:v19 forKey:@"featureGenerationError"];
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    v20 = [MEMORY[0x29EDBA070] numberWithInt:self->_sensorTemperature];
    [dictionary setObject:v20 forKey:@"sensorTemperature"];
  }

  if ((*(&self->_has + 5) & 4) != 0)
  {
    v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDistance];
    [dictionary setObject:v21 forKey:@"faceDistance"];
  }

  if ((*(&self->_has + 10) & 0x40) != 0)
  {
    v22 = [MEMORY[0x29EDBA070] numberWithBool:self->_hasOcclusion];
    [dictionary setObject:v22 forKey:@"hasOcclusion"];
  }

  v23 = *p_has;
  if ((*p_has & 0x2000000) != 0)
  {
    v67 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_camRectX];
    [dictionary setObject:v67 forKey:@"camRectX"];

    v23 = *p_has;
    if ((*p_has & 0x4000000) == 0)
    {
LABEL_51:
      if ((v23 & 0x1000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_149;
    }
  }

  else if ((v23 & 0x4000000) == 0)
  {
    goto LABEL_51;
  }

  v68 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_camRectY];
  [dictionary setObject:v68 forKey:@"camRectY"];

  v23 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_52:
    if ((v23 & 0x800000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_150;
  }

LABEL_149:
  v69 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_camRectW];
  [dictionary setObject:v69 forKey:@"camRectW"];

  v23 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_53:
    if ((v23 & 0x10000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_151;
  }

LABEL_150:
  v70 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_camRectH];
  [dictionary setObject:v70 forKey:@"camRectH"];

  v23 = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_54:
    if ((v23 & 0x8000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_152;
  }

LABEL_151:
  v71 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectPPMRequestedBudget];
  [dictionary setObject:v71 forKey:@"faceDetectPPMRequestedBudget"];

  v23 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_55:
    if ((v23 & 0x100000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_153;
  }

LABEL_152:
  v72 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectPPMAllocatedBudget];
  [dictionary setObject:v72 forKey:@"faceDetectPPMAllocatedBudget"];

  v23 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_56:
    if ((v23 & 0x80000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_154;
  }

LABEL_153:
  v73 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCheckPPMRequestedBudget];
  [dictionary setObject:v73 forKey:@"bioCheckPPMRequestedBudget"];

  v23 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_57:
    if ((v23 & 0x40) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_155;
  }

LABEL_154:
  v74 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCheckPPMAllocatedBudget];
  [dictionary setObject:v74 forKey:@"bioCheckPPMAllocatedBudget"];

  v23 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_58:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_155:
  v75 = [MEMORY[0x29EDBA070] numberWithLongLong:self->_rfcSetIndex];
  [dictionary setObject:v75 forKey:@"rfcSetIndex"];

  if ((*p_has & 0x20) != 0)
  {
LABEL_59:
    v24 = [MEMORY[0x29EDBA070] numberWithLongLong:self->_rfcFrameIndex];
    [dictionary setObject:v24 forKey:@"rfcFrameIndex"];
  }

LABEL_60:
  if ((*(&self->_has + 9) & 4) != 0)
  {
    v25 = [MEMORY[0x29EDBA070] numberWithBool:self->_bioLockout];
    [dictionary setObject:v25 forKey:@"bioLockout"];
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    v26 = [MEMORY[0x29EDBA070] numberWithInt:self->_cameraErr];
    [dictionary setObject:v26 forKey:@"cameraErr"];
  }

  if ((*(&self->_has + 11) & 4) != 0)
  {
    v27 = [MEMORY[0x29EDBA070] numberWithBool:self->_matchForUnlock];
    [dictionary setObject:v27 forKey:@"matchForUnlock"];
  }

  v28 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    v76 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_failedUnlockAttemptsFromFD];
    [dictionary setObject:v76 forKey:@"failedUnlockAttemptsFromFD"];

    v28 = *p_has;
    if ((*p_has & 0x2000000000000) == 0)
    {
LABEL_68:
      if ((v28 & 0x1000000000000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_159;
    }
  }

  else if ((v28 & 0x2000000000000) == 0)
  {
    goto LABEL_68;
  }

  v77 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_failedUnlockAttemptsFromBiocheck];
  [dictionary setObject:v77 forKey:@"failedUnlockAttemptsFromBiocheck"];

  v28 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_69:
    if ((v28 & 0x800000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_160;
  }

LABEL_159:
  v78 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_failedMatchAttemptsFromFD];
  [dictionary setObject:v78 forKey:@"failedMatchAttemptsFromFD"];

  v28 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_70:
    if ((v28 & 0x400000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_161;
  }

LABEL_160:
  v79 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_failedMatchAttemptsFromBiocheck];
  [dictionary setObject:v79 forKey:@"failedMatchAttemptsFromBiocheck"];

  v28 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_71:
    if ((v28 & 0x10000000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_162;
  }

LABEL_161:
  v80 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioLockoutReason];
  [dictionary setObject:v80 forKey:@"bioLockoutReason"];

  v28 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_72:
    if ((v28 & 0x80000000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_162:
  v81 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchFeatureVectorError];
  [dictionary setObject:v81 forKey:@"matchFeatureVectorError"];

  if ((*p_has & 0x80000000000000) != 0)
  {
LABEL_73:
    v29 = [MEMORY[0x29EDBA070] numberWithInt:self->_onlineTemplateAge];
    [dictionary setObject:v29 forKey:@"onlineTemplateAge"];
  }

LABEL_74:
  if ((*(&self->_has + 8) & 8) != 0)
  {
    v30 = [MEMORY[0x29EDBA070] numberWithInt:self->_shortTermTemplateAge];
    [dictionary setObject:v30 forKey:@"shortTermTemplateAge"];
  }

  v31 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    v82 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectFaceDistance];
    [dictionary setObject:v82 forKey:@"faceDetectFaceDistance"];

    v31 = *p_has;
    if ((*p_has & 0x100000000) == 0)
    {
LABEL_78:
      if ((v31 & 0x200000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_166;
    }
  }

  else if ((v31 & 0x100000000) == 0)
  {
    goto LABEL_78;
  }

  v83 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectCamRectX];
  [dictionary setObject:v83 forKey:@"faceDetectCamRectX"];

  v31 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_79:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_167;
  }

LABEL_166:
  v84 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectCamRectY];
  [dictionary setObject:v84 forKey:@"faceDetectCamRectY"];

  v31 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_80:
    if ((v31 & 0x40000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_168;
  }

LABEL_167:
  v85 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectCamRectW];
  [dictionary setObject:v85 forKey:@"faceDetectCamRectW"];

  v31 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_81:
    if ((v31 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_169;
  }

LABEL_168:
  v86 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectCamRectH];
  [dictionary setObject:v86 forKey:@"faceDetectCamRectH"];

  v31 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_82:
    if ((v31 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_170;
  }

LABEL_169:
  v87 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCheckFaceDistance];
  [dictionary setObject:v87 forKey:@"bioCheckFaceDistance"];

  v31 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_83:
    if ((v31 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_171;
  }

LABEL_170:
  v88 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCheckCamRectX];
  [dictionary setObject:v88 forKey:@"bioCheckCamRectX"];

  v31 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_84:
    if ((v31 & 0x800) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_172;
  }

LABEL_171:
  v89 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCheckCamRectY];
  [dictionary setObject:v89 forKey:@"bioCheckCamRectY"];

  v31 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_85:
    if ((v31 & 0x400) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_173;
  }

LABEL_172:
  v90 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCheckCamRectW];
  [dictionary setObject:v90 forKey:@"bioCheckCamRectW"];

  v31 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_86:
    if ((v31 & 0x1000000000000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_174;
  }

LABEL_173:
  v91 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCheckCamRectH];
  [dictionary setObject:v91 forKey:@"bioCheckCamRectH"];

  v31 = *p_has;
  if ((*p_has & 0x1000000000000000) == 0)
  {
LABEL_87:
    if ((v31 & 0x400000000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_175;
  }

LABEL_174:
  v92 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternFaceDistance];
  [dictionary setObject:v92 forKey:@"probingPatternFaceDistance"];

  v31 = *p_has;
  if ((*p_has & 0x400000000000000) == 0)
  {
LABEL_88:
    if ((v31 & 0x800000000000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_176;
  }

LABEL_175:
  v93 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternCamRectX];
  [dictionary setObject:v93 forKey:@"probingPatternCamRectX"];

  v31 = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_89:
    if ((v31 & 0x200000000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_177;
  }

LABEL_176:
  v94 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternCamRectY];
  [dictionary setObject:v94 forKey:@"probingPatternCamRectY"];

  v31 = *p_has;
  if ((*p_has & 0x200000000000000) == 0)
  {
LABEL_90:
    if ((v31 & 0x100000000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_177:
  v95 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternCamRectW];
  [dictionary setObject:v95 forKey:@"probingPatternCamRectW"];

  if ((*p_has & 0x100000000000000) != 0)
  {
LABEL_91:
    v32 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternCamRectH];
    [dictionary setObject:v32 forKey:@"probingPatternCamRectH"];
  }

LABEL_92:
  v33 = *(&self->_has + 2);
  if ((v33 & 0x20) != 0)
  {
    v96 = [MEMORY[0x29EDBA070] numberWithBool:self->_asFailure];
    [dictionary setObject:v96 forKey:@"asFailure"];

    v33 = *(&self->_has + 2);
    if ((v33 & 0x80) == 0)
    {
LABEL_94:
      if ((v33 & 0x100) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }
  }

  else if ((v33 & 0x80) == 0)
  {
    goto LABEL_94;
  }

  v97 = [MEMORY[0x29EDBA070] numberWithBool:self->_autoRetry];
  [dictionary setObject:v97 forKey:@"autoRetry"];

  if ((*(&self->_has + 2) & 0x100) != 0)
  {
LABEL_95:
    v34 = [MEMORY[0x29EDBA070] numberWithBool:self->_autoRetryAllowed];
    [dictionary setObject:v34 forKey:@"autoRetryAllowed"];
  }

LABEL_96:
  v35 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    v36 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_deviceOrientation];
    [dictionary setObject:v36 forKey:@"deviceOrientation"];

    v35 = *p_has;
  }

  if ((v35 & 0x20000000000000) != 0)
  {
    v37 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchIdentityCount];
    [dictionary setObject:v37 forKey:@"matchIdentityCount"];
  }

  cameraHWParameters = self->_cameraHWParameters;
  if (cameraHWParameters)
  {
    [dictionary setObject:cameraHWParameters forKey:@"cameraHWParameters"];
  }

  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    v39 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_captureMethod];
    [dictionary setObject:v39 forKey:@"captureMethod"];
  }

  v40 = *(&self->_has + 2);
  if ((v40 & 0x20000) != 0)
  {
    v98 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackNoFaceDetected];
    [dictionary setObject:v98 forKey:@"engagementInfoFeedbackNoFaceDetected"];

    v40 = *(&self->_has + 2);
    if ((v40 & 0x4000) == 0)
    {
LABEL_106:
      if ((v40 & 0x8000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_184;
    }
  }

  else if ((v40 & 0x4000) == 0)
  {
    goto LABEL_106;
  }

  v99 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackFaceTooClose];
  [dictionary setObject:v99 forKey:@"engagementInfoFeedbackFaceTooClose"];

  v40 = *(&self->_has + 2);
  if ((v40 & 0x8000) == 0)
  {
LABEL_107:
    if ((v40 & 0x200000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_185;
  }

LABEL_184:
  v100 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackFaceTooFar];
  [dictionary setObject:v100 forKey:@"engagementInfoFeedbackFaceTooFar"];

  v40 = *(&self->_has + 2);
  if ((v40 & 0x200000) == 0)
  {
LABEL_108:
    if ((v40 & 0x10000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_186;
  }

LABEL_185:
  v101 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackPoseOutOfRange];
  [dictionary setObject:v101 forKey:@"engagementInfoFeedbackPoseOutOfRange"];

  v40 = *(&self->_has + 2);
  if ((v40 & 0x10000) == 0)
  {
LABEL_109:
    if ((v40 & 0x2000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_187;
  }

LABEL_186:
  v102 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackNoAttention];
  [dictionary setObject:v102 forKey:@"engagementInfoFeedbackNoAttention"];

  v40 = *(&self->_has + 2);
  if ((v40 & 0x2000) == 0)
  {
LABEL_110:
    if ((v40 & 0x1000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_188;
  }

LABEL_187:
  v103 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackFaceOccluded];
  [dictionary setObject:v103 forKey:@"engagementInfoFeedbackFaceOccluded"];

  v40 = *(&self->_has + 2);
  if ((v40 & 0x1000) == 0)
  {
LABEL_111:
    if ((v40 & 0x80000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_189;
  }

LABEL_188:
  v104 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackCameraObstructed];
  [dictionary setObject:v104 forKey:@"engagementInfoFeedbackCameraObstructed"];

  v40 = *(&self->_has + 2);
  if ((v40 & 0x80000) == 0)
  {
LABEL_112:
    if ((v40 & 0x800) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

LABEL_189:
  v105 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackPartialOutOfFOV];
  [dictionary setObject:v105 forKey:@"engagementInfoFeedbackPartialOutOfFOV"];

  if ((*(&self->_has + 2) & 0x800) != 0)
  {
LABEL_113:
    v41 = [MEMORY[0x29EDBA070] numberWithBool:self->_combinedSequenceEnabled];
    [dictionary setObject:v41 forKey:@"combinedSequenceEnabled"];
  }

LABEL_114:
  if ((*p_has & 8) != 0)
  {
    v42 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_overallTimeWithRetries];
    [dictionary setObject:v42 forKey:@"overallTimeWithRetries"];
  }

  if ((*(&self->_has + 9) & 2) != 0)
  {
    v43 = [MEMORY[0x29EDBA070] numberWithBool:self->_autoRetryEnabled];
    [dictionary setObject:v43 forKey:@"autoRetryEnabled"];
  }

  v44 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v44 forKey:@"identityCreationTime"];

  v45 = *(&self->_has + 2);
  if ((v45 & 0x800000) != 0)
  {
    v46 = [MEMORY[0x29EDBA070] numberWithBool:self->_matchCancelled];
    [dictionary setObject:v46 forKey:@"matchCancelled"];

    v45 = *(&self->_has + 2);
  }

  if ((v45 & 0x100000) != 0)
  {
    v47 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackPoseMarginal];
    [dictionary setObject:v47 forKey:@"engagementInfoFeedbackPoseMarginal"];
  }

  v48 = *p_has;
  if ((*p_has & 0x80000000000) != 0)
  {
    v106 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceOrientation];
    [dictionary setObject:v106 forKey:@"faceOrientation"];

    v48 = *p_has;
    if ((*p_has & 0x100000000000) == 0)
    {
LABEL_124:
      if ((v48 & 0x400000000000) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_193;
    }
  }

  else if ((v48 & 0x100000000000) == 0)
  {
    goto LABEL_124;
  }

  v107 = [MEMORY[0x29EDBA070] numberWithInt:self->_facePitch];
  [dictionary setObject:v107 forKey:@"facePitch"];

  v48 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_125:
    if ((v48 & 0x200000000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_194;
  }

LABEL_193:
  v108 = [MEMORY[0x29EDBA070] numberWithInt:self->_faceYaw];
  [dictionary setObject:v108 forKey:@"faceYaw"];

  v48 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_126:
    if ((v48 & 0x80) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_194:
  v109 = [MEMORY[0x29EDBA070] numberWithInt:self->_faceRoll];
  [dictionary setObject:v109 forKey:@"faceRoll"];

  if ((*p_has & 0x80) != 0)
  {
LABEL_127:
    v49 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_timeSinceSleep];
    [dictionary setObject:v49 forKey:@"timeSinceSleep"];
  }

LABEL_128:
  if ((*(&self->_has + 10) & 4) != 0)
  {
    v50 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackNoseAndMouthOccluded];
    [dictionary setObject:v50 forKey:@"engagementInfoFeedbackNoseAndMouthOccluded"];
  }

  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    v51 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchType];
    [dictionary setObject:v51 forKey:@"matchType"];
  }

  v52 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  v116 = toCopy;
  if (*(&self->_has + 1))
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v116;
  }

  if ((*(&self->_has + 11) & 0x20) != 0)
  {
    overallResult = self->_overallResult;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
  }

  v8 = *p_has;
  if ((*p_has & 4) != 0)
  {
    overallTime = self->_overallTime;
    PBDataWriterWriteUint64Field();
    toCopy = v116;
    v8 = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_7:
      if ((v8 & 0x20000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_140;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_7;
  }

  faceDetectEndTime = self->_faceDetectEndTime;
  PBDataWriterWriteUint64Field();
  toCopy = v116;
  v8 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_8:
    if ((v8 & 0x800000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_141;
  }

LABEL_140:
  faceDetectResult = self->_faceDetectResult;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v8 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_9:
    if ((v8 & 0x2000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_142;
  }

LABEL_141:
  faceDetectFrameCount = self->_faceDetectFrameCount;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v8 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_10:
    if ((v8 & 0x4000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_143;
  }

LABEL_142:
  faceDetectFrameFloodCount = self->_faceDetectFrameFloodCount;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v8 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_11:
    if ((v8 & 0x1000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_144;
  }

LABEL_143:
  faceDetectFrameSparseCount = self->_faceDetectFrameSparseCount;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v8 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_12:
    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_145;
  }

LABEL_144:
  faceDetectFrameDenseCount = self->_faceDetectFrameDenseCount;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v8 = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_13:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_146;
  }

LABEL_145:
  bioCheckEndTime = self->_bioCheckEndTime;
  PBDataWriterWriteUint64Field();
  toCopy = v116;
  v8 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_14:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_147;
  }

LABEL_146:
  bioCheckResult = self->_bioCheckResult;
  PBDataWriterWriteInt32Field();
  toCopy = v116;
  v8 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_15:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_148;
  }

LABEL_147:
  bioCheckFrameCount = self->_bioCheckFrameCount;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v8 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_16:
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_149;
  }

LABEL_148:
  bioCheckFrameFloodCount = self->_bioCheckFrameFloodCount;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v8 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_17:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_150;
  }

LABEL_149:
  bioCheckFrameSparseCount = self->_bioCheckFrameSparseCount;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v8 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_18:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_150:
  bioCheckFrameDenseCount = self->_bioCheckFrameDenseCount;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  if ((*p_has & 0x10) != 0)
  {
LABEL_19:
    probingPatternEndTime = self->_probingPatternEndTime;
    PBDataWriterWriteUint64Field();
    toCopy = v116;
  }

LABEL_20:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    probingPatternResult = self->_probingPatternResult;
    PBDataWriterWriteInt32Field();
    toCopy = v116;
  }

  v11 = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    probingPatternFrameCount = self->_probingPatternFrameCount;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
    v11 = *p_has;
  }

  if (v11 < 0)
  {
    probingPatternFrameFloodCount = self->_probingPatternFrameFloodCount;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
  }

  if (*(&self->_has + 8))
  {
    probingPatternFrameSparseCount = self->_probingPatternFrameSparseCount;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
  }

  v15 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    probingPatternFrameDenseCount = self->_probingPatternFrameDenseCount;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
    v15 = *p_has;
  }

  if ((v15 & 0x200) != 0)
  {
    ambientLux = self->_ambientLux;
    PBDataWriterWriteInt32Field();
    toCopy = v116;
  }

  v18 = *(&self->_has + 2);
  if (v18 < 0)
  {
    probingPatternFailure = self->_probingPatternFailure;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
    v18 = *(&self->_has + 2);
    if ((v18 & 0x8000000) == 0)
    {
LABEL_34:
      if ((v18 & 0x1000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_203;
    }
  }

  else if ((v18 & 0x8000000) == 0)
  {
    goto LABEL_34;
  }

  matcherFailure = self->_matcherFailure;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  v18 = *(&self->_has + 2);
  if ((v18 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v18 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_204;
  }

LABEL_203:
  matchDepthFailure = self->_matchDepthFailure;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  v18 = *(&self->_has + 2);
  if ((v18 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_205;
  }

LABEL_204:
  matchFloodFailure = self->_matchFloodFailure;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  v18 = *(&self->_has + 2);
  if ((v18 & 0x40) == 0)
  {
LABEL_37:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_206;
  }

LABEL_205:
  asFloodFailure = self->_asFloodFailure;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  v18 = *(&self->_has + 2);
  if ((v18 & 0x10) == 0)
  {
LABEL_38:
    if ((v18 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_207;
  }

LABEL_206:
  asDepthFailure = self->_asDepthFailure;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  v18 = *(&self->_has + 2);
  if ((v18 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v18 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_207:
  onlineTemplateUpdated = self->_onlineTemplateUpdated;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  if ((*(&self->_has + 2) & 0x40000000) != 0)
  {
LABEL_40:
    passcodeChallengeAllowed = self->_passcodeChallengeAllowed;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
  }

LABEL_41:
  if ((*(&self->_has + 6) & 8) != 0)
  {
    featureGenerationError = self->_featureGenerationError;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    sensorTemperature = self->_sensorTemperature;
    PBDataWriterWriteInt32Field();
    toCopy = v116;
  }

  if ((*(&self->_has + 5) & 4) != 0)
  {
    faceDistance = self->_faceDistance;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
  }

  if ((*(&self->_has + 10) & 0x40) != 0)
  {
    hasOcclusion = self->_hasOcclusion;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
  }

  v24 = *p_has;
  if ((*p_has & 0x2000000) != 0)
  {
    camRectX = self->_camRectX;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
    v24 = *p_has;
    if ((*p_has & 0x4000000) == 0)
    {
LABEL_51:
      if ((v24 & 0x1000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_154;
    }
  }

  else if ((v24 & 0x4000000) == 0)
  {
    goto LABEL_51;
  }

  camRectY = self->_camRectY;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v24 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_52:
    if ((v24 & 0x800000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_155;
  }

LABEL_154:
  camRectW = self->_camRectW;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v24 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_53:
    if ((v24 & 0x10000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_156;
  }

LABEL_155:
  camRectH = self->_camRectH;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v24 = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_54:
    if ((v24 & 0x8000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_157;
  }

LABEL_156:
  faceDetectPPMRequestedBudget = self->_faceDetectPPMRequestedBudget;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v24 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_55:
    if ((v24 & 0x100000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_158;
  }

LABEL_157:
  faceDetectPPMAllocatedBudget = self->_faceDetectPPMAllocatedBudget;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v24 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_56:
    if ((v24 & 0x80000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_159;
  }

LABEL_158:
  bioCheckPPMRequestedBudget = self->_bioCheckPPMRequestedBudget;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v24 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_57:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_160;
  }

LABEL_159:
  bioCheckPPMAllocatedBudget = self->_bioCheckPPMAllocatedBudget;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v24 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_58:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_160:
  rfcSetIndex = self->_rfcSetIndex;
  PBDataWriterWriteInt64Field();
  toCopy = v116;
  if ((*p_has & 0x20) != 0)
  {
LABEL_59:
    rfcFrameIndex = self->_rfcFrameIndex;
    PBDataWriterWriteInt64Field();
    toCopy = v116;
  }

LABEL_60:
  if ((*(&self->_has + 9) & 4) != 0)
  {
    bioLockout = self->_bioLockout;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    cameraErr = self->_cameraErr;
    PBDataWriterWriteInt32Field();
    toCopy = v116;
  }

  if ((*(&self->_has + 11) & 4) != 0)
  {
    matchForUnlock = self->_matchForUnlock;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
  }

  v29 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    failedUnlockAttemptsFromFD = self->_failedUnlockAttemptsFromFD;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
    v29 = *p_has;
    if ((*p_has & 0x2000000000000) == 0)
    {
LABEL_68:
      if ((v29 & 0x1000000000000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_164;
    }
  }

  else if ((v29 & 0x2000000000000) == 0)
  {
    goto LABEL_68;
  }

  failedUnlockAttemptsFromBiocheck = self->_failedUnlockAttemptsFromBiocheck;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v29 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_69:
    if ((v29 & 0x800000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_165;
  }

LABEL_164:
  failedMatchAttemptsFromFD = self->_failedMatchAttemptsFromFD;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v29 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_70:
    if ((v29 & 0x400000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_166;
  }

LABEL_165:
  failedMatchAttemptsFromBiocheck = self->_failedMatchAttemptsFromBiocheck;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v29 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_71:
    if ((v29 & 0x10000000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_167;
  }

LABEL_166:
  bioLockoutReason = self->_bioLockoutReason;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v29 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_72:
    if ((v29 & 0x80000000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_167:
  matchFeatureVectorError = self->_matchFeatureVectorError;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  if ((*p_has & 0x80000000000000) != 0)
  {
LABEL_73:
    onlineTemplateAge = self->_onlineTemplateAge;
    PBDataWriterWriteInt32Field();
    toCopy = v116;
  }

LABEL_74:
  if ((*(&self->_has + 8) & 8) != 0)
  {
    shortTermTemplateAge = self->_shortTermTemplateAge;
    PBDataWriterWriteInt32Field();
    toCopy = v116;
  }

  v32 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    faceDetectFaceDistance = self->_faceDetectFaceDistance;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
    v32 = *p_has;
    if ((*p_has & 0x100000000) == 0)
    {
LABEL_78:
      if ((v32 & 0x200000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_171;
    }
  }

  else if ((v32 & 0x100000000) == 0)
  {
    goto LABEL_78;
  }

  faceDetectCamRectX = self->_faceDetectCamRectX;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_79:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_172;
  }

LABEL_171:
  faceDetectCamRectY = self->_faceDetectCamRectY;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_80:
    if ((v32 & 0x40000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_173;
  }

LABEL_172:
  faceDetectCamRectW = self->_faceDetectCamRectW;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_81:
    if ((v32 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_174;
  }

LABEL_173:
  faceDetectCamRectH = self->_faceDetectCamRectH;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_82:
    if ((v32 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_175;
  }

LABEL_174:
  bioCheckFaceDistance = self->_bioCheckFaceDistance;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_83:
    if ((v32 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_176;
  }

LABEL_175:
  bioCheckCamRectX = self->_bioCheckCamRectX;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_84:
    if ((v32 & 0x800) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_177;
  }

LABEL_176:
  bioCheckCamRectY = self->_bioCheckCamRectY;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_85:
    if ((v32 & 0x400) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_178;
  }

LABEL_177:
  bioCheckCamRectW = self->_bioCheckCamRectW;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_86:
    if ((v32 & 0x1000000000000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_179;
  }

LABEL_178:
  bioCheckCamRectH = self->_bioCheckCamRectH;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x1000000000000000) == 0)
  {
LABEL_87:
    if ((v32 & 0x400000000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_180;
  }

LABEL_179:
  probingPatternFaceDistance = self->_probingPatternFaceDistance;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x400000000000000) == 0)
  {
LABEL_88:
    if ((v32 & 0x800000000000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_181;
  }

LABEL_180:
  probingPatternCamRectX = self->_probingPatternCamRectX;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_89:
    if ((v32 & 0x200000000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_182;
  }

LABEL_181:
  probingPatternCamRectY = self->_probingPatternCamRectY;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  v32 = *p_has;
  if ((*p_has & 0x200000000000000) == 0)
  {
LABEL_90:
    if ((v32 & 0x100000000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_182:
  probingPatternCamRectW = self->_probingPatternCamRectW;
  PBDataWriterWriteUint32Field();
  toCopy = v116;
  if ((*p_has & 0x100000000000000) != 0)
  {
LABEL_91:
    probingPatternCamRectH = self->_probingPatternCamRectH;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
  }

LABEL_92:
  v34 = *(&self->_has + 2);
  if ((v34 & 0x20) != 0)
  {
    asFailure = self->_asFailure;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
    v34 = *(&self->_has + 2);
    if ((v34 & 0x80) == 0)
    {
LABEL_94:
      if ((v34 & 0x100) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }
  }

  else if ((v34 & 0x80) == 0)
  {
    goto LABEL_94;
  }

  autoRetry = self->_autoRetry;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  if ((*(&self->_has + 2) & 0x100) != 0)
  {
LABEL_95:
    autoRetryAllowed = self->_autoRetryAllowed;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
  }

LABEL_96:
  v36 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    deviceOrientation = self->_deviceOrientation;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
    v36 = *p_has;
  }

  if ((v36 & 0x20000000000000) != 0)
  {
    matchIdentityCount = self->_matchIdentityCount;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
  }

  if (self->_cameraHWParameters)
  {
    PBDataWriterWriteStringField();
    toCopy = v116;
  }

  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    captureMethod = self->_captureMethod;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
  }

  v40 = *(&self->_has + 2);
  if ((v40 & 0x20000) != 0)
  {
    engagementInfoFeedbackNoFaceDetected = self->_engagementInfoFeedbackNoFaceDetected;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
    v40 = *(&self->_has + 2);
    if ((v40 & 0x4000) == 0)
    {
LABEL_106:
      if ((v40 & 0x8000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_189;
    }
  }

  else if ((v40 & 0x4000) == 0)
  {
    goto LABEL_106;
  }

  engagementInfoFeedbackFaceTooClose = self->_engagementInfoFeedbackFaceTooClose;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  v40 = *(&self->_has + 2);
  if ((v40 & 0x8000) == 0)
  {
LABEL_107:
    if ((v40 & 0x200000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_190;
  }

LABEL_189:
  engagementInfoFeedbackFaceTooFar = self->_engagementInfoFeedbackFaceTooFar;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  v40 = *(&self->_has + 2);
  if ((v40 & 0x200000) == 0)
  {
LABEL_108:
    if ((v40 & 0x10000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_191;
  }

LABEL_190:
  engagementInfoFeedbackPoseOutOfRange = self->_engagementInfoFeedbackPoseOutOfRange;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  v40 = *(&self->_has + 2);
  if ((v40 & 0x10000) == 0)
  {
LABEL_109:
    if ((v40 & 0x2000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_192;
  }

LABEL_191:
  engagementInfoFeedbackNoAttention = self->_engagementInfoFeedbackNoAttention;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  v40 = *(&self->_has + 2);
  if ((v40 & 0x2000) == 0)
  {
LABEL_110:
    if ((v40 & 0x1000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_193;
  }

LABEL_192:
  engagementInfoFeedbackFaceOccluded = self->_engagementInfoFeedbackFaceOccluded;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  v40 = *(&self->_has + 2);
  if ((v40 & 0x1000) == 0)
  {
LABEL_111:
    if ((v40 & 0x80000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_194;
  }

LABEL_193:
  engagementInfoFeedbackCameraObstructed = self->_engagementInfoFeedbackCameraObstructed;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  v40 = *(&self->_has + 2);
  if ((v40 & 0x80000) == 0)
  {
LABEL_112:
    if ((v40 & 0x800) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

LABEL_194:
  engagementInfoFeedbackPartialOutOfFOV = self->_engagementInfoFeedbackPartialOutOfFOV;
  PBDataWriterWriteBOOLField();
  toCopy = v116;
  if ((*(&self->_has + 2) & 0x800) != 0)
  {
LABEL_113:
    combinedSequenceEnabled = self->_combinedSequenceEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
  }

LABEL_114:
  if ((*p_has & 8) != 0)
  {
    overallTimeWithRetries = self->_overallTimeWithRetries;
    PBDataWriterWriteUint64Field();
    toCopy = v116;
  }

  if ((*(&self->_has + 9) & 2) != 0)
  {
    autoRetryEnabled = self->_autoRetryEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
  }

  if (self->_identityCreationTimes.count)
  {
    v44 = 0;
    do
    {
      v45 = self->_identityCreationTimes.list[v44];
      PBDataWriterWriteUint64Field();
      toCopy = v116;
      ++v44;
    }

    while (v44 < self->_identityCreationTimes.count);
  }

  v46 = *(&self->_has + 2);
  if ((v46 & 0x800000) != 0)
  {
    matchCancelled = self->_matchCancelled;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
    v46 = *(&self->_has + 2);
  }

  if ((v46 & 0x100000) != 0)
  {
    engagementInfoFeedbackPoseMarginal = self->_engagementInfoFeedbackPoseMarginal;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
  }

  v49 = *p_has;
  if ((*p_has & 0x80000000000) != 0)
  {
    faceOrientation = self->_faceOrientation;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
    v49 = *p_has;
    if ((*p_has & 0x100000000000) == 0)
    {
LABEL_127:
      if ((v49 & 0x400000000000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_198;
    }
  }

  else if ((v49 & 0x100000000000) == 0)
  {
    goto LABEL_127;
  }

  facePitch = self->_facePitch;
  PBDataWriterWriteInt32Field();
  toCopy = v116;
  v49 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_128:
    if ((v49 & 0x200000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_199;
  }

LABEL_198:
  faceYaw = self->_faceYaw;
  PBDataWriterWriteInt32Field();
  toCopy = v116;
  v49 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_129:
    if ((v49 & 0x80) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

LABEL_199:
  faceRoll = self->_faceRoll;
  PBDataWriterWriteInt32Field();
  toCopy = v116;
  if ((*p_has & 0x80) != 0)
  {
LABEL_130:
    timeSinceSleep = self->_timeSinceSleep;
    PBDataWriterWriteUint64Field();
    toCopy = v116;
  }

LABEL_131:
  if ((*(&self->_has + 10) & 4) != 0)
  {
    engagementInfoFeedbackNoseAndMouthOccluded = self->_engagementInfoFeedbackNoseAndMouthOccluded;
    PBDataWriterWriteBOOLField();
    toCopy = v116;
  }

  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    matchType = self->_matchType;
    PBDataWriterWriteUint32Field();
    toCopy = v116;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  if (*(&self->_has + 1))
  {
    toCopy[12] = self->_timestamp;
    *(toCopy + 380) |= 0x100uLL;
  }

  if ((*(&self->_has + 11) & 0x20) != 0)
  {
    *(toCopy + 377) = self->_overallResult;
    *(toCopy + 97) |= 0x20000000u;
  }

  has = *p_has;
  if ((*p_has & 4) != 0)
  {
    toCopy[6] = self->_overallTime;
    *(toCopy + 380) |= 4uLL;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x20000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_141;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  toCopy[5] = self->_faceDetectEndTime;
  *(toCopy + 380) |= 2uLL;
  has = self->_has;
  if ((has & 0x20000000000) == 0)
  {
LABEL_8:
    if ((has & 0x800000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_142;
  }

LABEL_141:
  *(toCopy + 61) = self->_faceDetectResult;
  *(toCopy + 380) |= 0x20000000000uLL;
  has = self->_has;
  if ((has & 0x800000000) == 0)
  {
LABEL_9:
    if ((has & 0x2000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(toCopy + 55) = self->_faceDetectFrameCount;
  *(toCopy + 380) |= 0x800000000uLL;
  has = self->_has;
  if ((has & 0x2000000000) == 0)
  {
LABEL_10:
    if ((has & 0x4000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(toCopy + 57) = self->_faceDetectFrameFloodCount;
  *(toCopy + 380) |= 0x2000000000uLL;
  has = self->_has;
  if ((has & 0x4000000000) == 0)
  {
LABEL_11:
    if ((has & 0x1000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(toCopy + 58) = self->_faceDetectFrameSparseCount;
  *(toCopy + 380) |= 0x4000000000uLL;
  has = self->_has;
  if ((has & 0x1000000000) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(toCopy + 56) = self->_faceDetectFrameDenseCount;
  *(toCopy + 380) |= 0x1000000000uLL;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_147;
  }

LABEL_146:
  toCopy[4] = self->_bioCheckEndTime;
  *(toCopy + 380) |= 1uLL;
  has = self->_has;
  if ((has & 0x200000) == 0)
  {
LABEL_14:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(toCopy + 38) = self->_bioCheckResult;
  *(toCopy + 380) |= 0x200000uLL;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_15:
    if ((has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(toCopy + 32) = self->_bioCheckFrameCount;
  *(toCopy + 380) |= 0x8000uLL;
  has = self->_has;
  if ((has & 0x20000) == 0)
  {
LABEL_16:
    if ((has & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(toCopy + 34) = self->_bioCheckFrameFloodCount;
  *(toCopy + 380) |= 0x20000uLL;
  has = self->_has;
  if ((has & 0x40000) == 0)
  {
LABEL_17:
    if ((has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(toCopy + 35) = self->_bioCheckFrameSparseCount;
  *(toCopy + 380) |= 0x40000uLL;
  has = self->_has;
  if ((has & 0x10000) == 0)
  {
LABEL_18:
    if ((has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_151:
  *(toCopy + 33) = self->_bioCheckFrameDenseCount;
  *(toCopy + 380) |= 0x10000uLL;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_19:
    toCopy[8] = self->_probingPatternEndTime;
    *(toCopy + 380) |= 0x10uLL;
  }

LABEL_20:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    *(toCopy + 85) = self->_probingPatternResult;
    *(toCopy + 97) |= 2u;
  }

  v7 = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    *(toCopy + 81) = self->_probingPatternFrameCount;
    *(toCopy + 380) |= 0x2000000000000000uLL;
    v7 = self->_has;
  }

  if (v7 < 0)
  {
    *(toCopy + 83) = self->_probingPatternFrameFloodCount;
    *(toCopy + 380) |= 0x8000000000000000;
  }

  if (*(&self->_has + 8))
  {
    *(toCopy + 84) = self->_probingPatternFrameSparseCount;
    *(toCopy + 97) |= 1u;
  }

  v8 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    *(toCopy + 82) = self->_probingPatternFrameDenseCount;
    *(toCopy + 380) |= 0x4000000000000000uLL;
    v8 = self->_has;
  }

  if ((v8 & 0x200) != 0)
  {
    *(toCopy + 26) = self->_ambientLux;
    *(toCopy + 380) |= 0x200uLL;
  }

  v9 = *(&self->_has + 2);
  if (v9 < 0)
  {
    *(toCopy + 379) = self->_probingPatternFailure;
    *(toCopy + 97) |= 0x80000000;
    v9 = *(&self->_has + 2);
    if ((v9 & 0x8000000) == 0)
    {
LABEL_34:
      if ((v9 & 0x1000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_204;
    }
  }

  else if ((v9 & 0x8000000) == 0)
  {
    goto LABEL_34;
  }

  *(toCopy + 375) = self->_matcherFailure;
  *(toCopy + 97) |= 0x8000000u;
  v9 = *(&self->_has + 2);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_205;
  }

LABEL_204:
  *(toCopy + 372) = self->_matchDepthFailure;
  *(toCopy + 97) |= 0x1000000u;
  v9 = *(&self->_has + 2);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_206;
  }

LABEL_205:
  *(toCopy + 373) = self->_matchFloodFailure;
  *(toCopy + 97) |= 0x2000000u;
  v9 = *(&self->_has + 2);
  if ((v9 & 0x40) == 0)
  {
LABEL_37:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_207;
  }

LABEL_206:
  *(toCopy + 354) = self->_asFloodFailure;
  *(toCopy + 97) |= 0x40u;
  v9 = *(&self->_has + 2);
  if ((v9 & 0x10) == 0)
  {
LABEL_38:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_208;
  }

LABEL_207:
  *(toCopy + 352) = self->_asDepthFailure;
  *(toCopy + 97) |= 0x10u;
  v9 = *(&self->_has + 2);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_208:
  *(toCopy + 376) = self->_onlineTemplateUpdated;
  *(toCopy + 97) |= 0x10000000u;
  if ((*(&self->_has + 2) & 0x40000000) != 0)
  {
LABEL_40:
    *(toCopy + 378) = self->_passcodeChallengeAllowed;
    *(toCopy + 97) |= 0x40000000u;
  }

LABEL_41:
  if ((*(&self->_has + 6) & 8) != 0)
  {
    *(toCopy + 71) = self->_featureGenerationError;
    *(toCopy + 380) |= 0x8000000000000uLL;
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    *(toCopy + 86) = self->_sensorTemperature;
    *(toCopy + 97) |= 4u;
  }

  if ((*(&self->_has + 5) & 4) != 0)
  {
    *(toCopy + 62) = self->_faceDistance;
    *(toCopy + 380) |= 0x40000000000uLL;
  }

  if ((*(&self->_has + 10) & 0x40) != 0)
  {
    *(toCopy + 370) = self->_hasOcclusion;
    *(toCopy + 97) |= 0x400000u;
  }

  v10 = *p_has;
  if ((*p_has & 0x2000000) != 0)
  {
    *(toCopy + 42) = self->_camRectX;
    *(toCopy + 380) |= 0x2000000uLL;
    v10 = self->_has;
    if ((v10 & 0x4000000) == 0)
    {
LABEL_51:
      if ((v10 & 0x1000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_155;
    }
  }

  else if ((v10 & 0x4000000) == 0)
  {
    goto LABEL_51;
  }

  *(toCopy + 43) = self->_camRectY;
  *(toCopy + 380) |= 0x4000000uLL;
  v10 = self->_has;
  if ((v10 & 0x1000000) == 0)
  {
LABEL_52:
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(toCopy + 41) = self->_camRectW;
  *(toCopy + 380) |= 0x1000000uLL;
  v10 = self->_has;
  if ((v10 & 0x800000) == 0)
  {
LABEL_53:
    if ((v10 & 0x10000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_157;
  }

LABEL_156:
  *(toCopy + 40) = self->_camRectH;
  *(toCopy + 380) |= 0x800000uLL;
  v10 = self->_has;
  if ((v10 & 0x10000000000) == 0)
  {
LABEL_54:
    if ((v10 & 0x8000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_158;
  }

LABEL_157:
  *(toCopy + 60) = self->_faceDetectPPMRequestedBudget;
  *(toCopy + 380) |= 0x10000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x8000000000) == 0)
  {
LABEL_55:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(toCopy + 59) = self->_faceDetectPPMAllocatedBudget;
  *(toCopy + 380) |= 0x8000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x100000) == 0)
  {
LABEL_56:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(toCopy + 37) = self->_bioCheckPPMRequestedBudget;
  *(toCopy + 380) |= 0x100000uLL;
  v10 = self->_has;
  if ((v10 & 0x80000) == 0)
  {
LABEL_57:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(toCopy + 36) = self->_bioCheckPPMAllocatedBudget;
  *(toCopy + 380) |= 0x80000uLL;
  v10 = self->_has;
  if ((v10 & 0x40) == 0)
  {
LABEL_58:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_161:
  toCopy[10] = self->_rfcSetIndex;
  *(toCopy + 380) |= 0x40uLL;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_59:
    toCopy[9] = self->_rfcFrameIndex;
    *(toCopy + 380) |= 0x20uLL;
  }

LABEL_60:
  if ((*(&self->_has + 9) & 4) != 0)
  {
    *(toCopy + 358) = self->_bioLockout;
    *(toCopy + 97) |= 0x400u;
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    *(toCopy + 44) = self->_cameraErr;
    *(toCopy + 380) |= 0x8000000uLL;
  }

  if ((*(&self->_has + 11) & 4) != 0)
  {
    *(toCopy + 374) = self->_matchForUnlock;
    *(toCopy + 97) |= 0x4000000u;
  }

  v11 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    *(toCopy + 70) = self->_failedUnlockAttemptsFromFD;
    *(toCopy + 380) |= 0x4000000000000uLL;
    v11 = self->_has;
    if ((v11 & 0x2000000000000) == 0)
    {
LABEL_68:
      if ((v11 & 0x1000000000000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_165;
    }
  }

  else if ((v11 & 0x2000000000000) == 0)
  {
    goto LABEL_68;
  }

  *(toCopy + 69) = self->_failedUnlockAttemptsFromBiocheck;
  *(toCopy + 380) |= 0x2000000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x1000000000000) == 0)
  {
LABEL_69:
    if ((v11 & 0x800000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_166;
  }

LABEL_165:
  *(toCopy + 68) = self->_failedMatchAttemptsFromFD;
  *(toCopy + 380) |= 0x1000000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x800000000000) == 0)
  {
LABEL_70:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_167;
  }

LABEL_166:
  *(toCopy + 67) = self->_failedMatchAttemptsFromBiocheck;
  *(toCopy + 380) |= 0x800000000000uLL;
  v11 = self->_has;
  if ((v11 & 0x400000) == 0)
  {
LABEL_71:
    if ((v11 & 0x10000000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(toCopy + 39) = self->_bioLockoutReason;
  *(toCopy + 380) |= 0x400000uLL;
  v11 = self->_has;
  if ((v11 & 0x10000000000000) == 0)
  {
LABEL_72:
    if ((v11 & 0x80000000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_168:
  *(toCopy + 72) = self->_matchFeatureVectorError;
  *(toCopy + 380) |= 0x10000000000000uLL;
  if ((*&self->_has & 0x80000000000000) != 0)
  {
LABEL_73:
    *(toCopy + 75) = self->_onlineTemplateAge;
    *(toCopy + 380) |= 0x80000000000000uLL;
  }

LABEL_74:
  if ((*(&self->_has + 8) & 8) != 0)
  {
    *(toCopy + 87) = self->_shortTermTemplateAge;
    *(toCopy + 97) |= 8u;
  }

  v12 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    *(toCopy + 54) = self->_faceDetectFaceDistance;
    *(toCopy + 380) |= 0x400000000uLL;
    v12 = self->_has;
    if ((v12 & 0x100000000) == 0)
    {
LABEL_78:
      if ((v12 & 0x200000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_172;
    }
  }

  else if ((v12 & 0x100000000) == 0)
  {
    goto LABEL_78;
  }

  *(toCopy + 52) = self->_faceDetectCamRectX;
  *(toCopy + 380) |= 0x100000000uLL;
  v12 = self->_has;
  if ((v12 & 0x200000000) == 0)
  {
LABEL_79:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_173;
  }

LABEL_172:
  *(toCopy + 53) = self->_faceDetectCamRectY;
  *(toCopy + 380) |= 0x200000000uLL;
  v12 = self->_has;
  if ((v12 & 0x80000000) == 0)
  {
LABEL_80:
    if ((v12 & 0x40000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_174;
  }

LABEL_173:
  *(toCopy + 51) = self->_faceDetectCamRectW;
  *(toCopy + 380) |= 0x80000000uLL;
  v12 = self->_has;
  if ((v12 & 0x40000000) == 0)
  {
LABEL_81:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_175;
  }

LABEL_174:
  *(toCopy + 50) = self->_faceDetectCamRectH;
  *(toCopy + 380) |= 0x40000000uLL;
  v12 = self->_has;
  if ((v12 & 0x4000) == 0)
  {
LABEL_82:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_176;
  }

LABEL_175:
  *(toCopy + 31) = self->_bioCheckFaceDistance;
  *(toCopy + 380) |= 0x4000uLL;
  v12 = self->_has;
  if ((v12 & 0x1000) == 0)
  {
LABEL_83:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_177;
  }

LABEL_176:
  *(toCopy + 29) = self->_bioCheckCamRectX;
  *(toCopy + 380) |= 0x1000uLL;
  v12 = self->_has;
  if ((v12 & 0x2000) == 0)
  {
LABEL_84:
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_178;
  }

LABEL_177:
  *(toCopy + 30) = self->_bioCheckCamRectY;
  *(toCopy + 380) |= 0x2000uLL;
  v12 = self->_has;
  if ((v12 & 0x800) == 0)
  {
LABEL_85:
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_179;
  }

LABEL_178:
  *(toCopy + 28) = self->_bioCheckCamRectW;
  *(toCopy + 380) |= 0x800uLL;
  v12 = self->_has;
  if ((v12 & 0x400) == 0)
  {
LABEL_86:
    if ((v12 & 0x1000000000000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_180;
  }

LABEL_179:
  *(toCopy + 27) = self->_bioCheckCamRectH;
  *(toCopy + 380) |= 0x400uLL;
  v12 = self->_has;
  if ((v12 & 0x1000000000000000) == 0)
  {
LABEL_87:
    if ((v12 & 0x400000000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_181;
  }

LABEL_180:
  *(toCopy + 80) = self->_probingPatternFaceDistance;
  *(toCopy + 380) |= 0x1000000000000000uLL;
  v12 = self->_has;
  if ((v12 & 0x400000000000000) == 0)
  {
LABEL_88:
    if ((v12 & 0x800000000000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_182;
  }

LABEL_181:
  *(toCopy + 78) = self->_probingPatternCamRectX;
  *(toCopy + 380) |= 0x400000000000000uLL;
  v12 = self->_has;
  if ((v12 & 0x800000000000000) == 0)
  {
LABEL_89:
    if ((v12 & 0x200000000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_183;
  }

LABEL_182:
  *(toCopy + 79) = self->_probingPatternCamRectY;
  *(toCopy + 380) |= 0x800000000000000uLL;
  v12 = self->_has;
  if ((v12 & 0x200000000000000) == 0)
  {
LABEL_90:
    if ((v12 & 0x100000000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_183:
  *(toCopy + 77) = self->_probingPatternCamRectW;
  *(toCopy + 380) |= 0x200000000000000uLL;
  if ((*&self->_has & 0x100000000000000) != 0)
  {
LABEL_91:
    *(toCopy + 76) = self->_probingPatternCamRectH;
    *(toCopy + 380) |= 0x100000000000000uLL;
  }

LABEL_92:
  v13 = *(&self->_has + 2);
  if ((v13 & 0x20) != 0)
  {
    *(toCopy + 353) = self->_asFailure;
    *(toCopy + 97) |= 0x20u;
    v13 = *(&self->_has + 2);
    if ((v13 & 0x80) == 0)
    {
LABEL_94:
      if ((v13 & 0x100) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_94;
  }

  *(toCopy + 355) = self->_autoRetry;
  *(toCopy + 97) |= 0x80u;
  if ((*(&self->_has + 2) & 0x100) != 0)
  {
LABEL_95:
    *(toCopy + 356) = self->_autoRetryAllowed;
    *(toCopy + 97) |= 0x100u;
  }

LABEL_96:
  v14 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    *(toCopy + 49) = self->_deviceOrientation;
    *(toCopy + 380) |= 0x20000000uLL;
    v14 = self->_has;
  }

  if ((v14 & 0x20000000000000) != 0)
  {
    *(toCopy + 73) = self->_matchIdentityCount;
    *(toCopy + 380) |= 0x20000000000000uLL;
  }

  v21 = toCopy;
  if (self->_cameraHWParameters)
  {
    [toCopy setCameraHWParameters:?];
    toCopy = v21;
  }

  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    *(toCopy + 48) = self->_captureMethod;
    *(toCopy + 380) |= 0x10000000uLL;
  }

  v15 = *(&self->_has + 2);
  if ((v15 & 0x20000) != 0)
  {
    *(toCopy + 365) = self->_engagementInfoFeedbackNoFaceDetected;
    *(toCopy + 97) |= 0x20000u;
    v15 = *(&self->_has + 2);
    if ((v15 & 0x4000) == 0)
    {
LABEL_106:
      if ((v15 & 0x8000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_190;
    }
  }

  else if ((v15 & 0x4000) == 0)
  {
    goto LABEL_106;
  }

  *(toCopy + 362) = self->_engagementInfoFeedbackFaceTooClose;
  *(toCopy + 97) |= 0x4000u;
  v15 = *(&self->_has + 2);
  if ((v15 & 0x8000) == 0)
  {
LABEL_107:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_191;
  }

LABEL_190:
  *(toCopy + 363) = self->_engagementInfoFeedbackFaceTooFar;
  *(toCopy + 97) |= 0x8000u;
  v15 = *(&self->_has + 2);
  if ((v15 & 0x200000) == 0)
  {
LABEL_108:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_192;
  }

LABEL_191:
  *(toCopy + 369) = self->_engagementInfoFeedbackPoseOutOfRange;
  *(toCopy + 97) |= 0x200000u;
  v15 = *(&self->_has + 2);
  if ((v15 & 0x10000) == 0)
  {
LABEL_109:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_193;
  }

LABEL_192:
  *(toCopy + 364) = self->_engagementInfoFeedbackNoAttention;
  *(toCopy + 97) |= 0x10000u;
  v15 = *(&self->_has + 2);
  if ((v15 & 0x2000) == 0)
  {
LABEL_110:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_194;
  }

LABEL_193:
  *(toCopy + 361) = self->_engagementInfoFeedbackFaceOccluded;
  *(toCopy + 97) |= 0x2000u;
  v15 = *(&self->_has + 2);
  if ((v15 & 0x1000) == 0)
  {
LABEL_111:
    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_195;
  }

LABEL_194:
  *(toCopy + 360) = self->_engagementInfoFeedbackCameraObstructed;
  *(toCopy + 97) |= 0x1000u;
  v15 = *(&self->_has + 2);
  if ((v15 & 0x80000) == 0)
  {
LABEL_112:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

LABEL_195:
  *(toCopy + 367) = self->_engagementInfoFeedbackPartialOutOfFOV;
  *(toCopy + 97) |= 0x80000u;
  if ((*(&self->_has + 2) & 0x800) != 0)
  {
LABEL_113:
    *(toCopy + 359) = self->_combinedSequenceEnabled;
    *(toCopy + 97) |= 0x800u;
  }

LABEL_114:
  if ((*p_has & 8) != 0)
  {
    toCopy[7] = self->_overallTimeWithRetries;
    *(toCopy + 380) |= 8uLL;
  }

  if ((*(&self->_has + 9) & 2) != 0)
  {
    *(toCopy + 357) = self->_autoRetryEnabled;
    *(toCopy + 97) |= 0x200u;
  }

  if ([(AWDBiometricKitMatchAttempt *)self identityCreationTimesCount])
  {
    [v21 clearIdentityCreationTimes];
    identityCreationTimesCount = [(AWDBiometricKitMatchAttempt *)self identityCreationTimesCount];
    if (identityCreationTimesCount)
    {
      v17 = identityCreationTimesCount;
      for (i = 0; i != v17; ++i)
      {
        [v21 addIdentityCreationTime:{-[AWDBiometricKitMatchAttempt identityCreationTimeAtIndex:](self, "identityCreationTimeAtIndex:", i)}];
      }
    }
  }

  v19 = *(&self->_has + 2);
  if ((v19 & 0x800000) != 0)
  {
    v21[371] = self->_matchCancelled;
    *(v21 + 97) |= 0x800000u;
    v19 = *(&self->_has + 2);
  }

  if ((v19 & 0x100000) != 0)
  {
    v21[368] = self->_engagementInfoFeedbackPoseMarginal;
    *(v21 + 97) |= 0x100000u;
  }

  v20 = *p_has;
  if ((*p_has & 0x80000000000) != 0)
  {
    *(v21 + 63) = self->_faceOrientation;
    *(v21 + 380) |= 0x80000000000uLL;
    v20 = self->_has;
    if ((v20 & 0x100000000000) == 0)
    {
LABEL_128:
      if ((v20 & 0x400000000000) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_199;
    }
  }

  else if ((v20 & 0x100000000000) == 0)
  {
    goto LABEL_128;
  }

  *(v21 + 64) = self->_facePitch;
  *(v21 + 380) |= 0x100000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x400000000000) == 0)
  {
LABEL_129:
    if ((v20 & 0x200000000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_200;
  }

LABEL_199:
  *(v21 + 66) = self->_faceYaw;
  *(v21 + 380) |= 0x400000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x200000000000) == 0)
  {
LABEL_130:
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_131;
  }

LABEL_200:
  *(v21 + 65) = self->_faceRoll;
  *(v21 + 380) |= 0x200000000000uLL;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_131:
    *(v21 + 11) = self->_timeSinceSleep;
    *(v21 + 380) |= 0x80uLL;
  }

LABEL_132:
  if ((*(&self->_has + 10) & 4) != 0)
  {
    v21[366] = self->_engagementInfoFeedbackNoseAndMouthOccluded;
    *(v21 + 97) |= 0x40000u;
  }

  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    *(v21 + 74) = self->_matchType;
    *(v21 + 380) |= 0x40000000000000uLL;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  p_has = &self->_has;
  if (*(&self->_has + 1))
  {
    *(v5 + 96) = self->_timestamp;
    *(v5 + 380) |= 0x100uLL;
  }

  if ((*(&self->_has + 11) & 0x20) != 0)
  {
    *(v5 + 377) = self->_overallResult;
    *(v5 + 388) |= 0x20000000u;
  }

  has = *p_has;
  if ((*p_has & 4) != 0)
  {
    *(v5 + 48) = self->_overallTime;
    *(v5 + 380) |= 4uLL;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x20000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_133;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 40) = self->_faceDetectEndTime;
  *(v5 + 380) |= 2uLL;
  has = self->_has;
  if ((has & 0x20000000000) == 0)
  {
LABEL_8:
    if ((has & 0x800000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_134;
  }

LABEL_133:
  *(v5 + 244) = self->_faceDetectResult;
  *(v5 + 380) |= 0x20000000000uLL;
  has = self->_has;
  if ((has & 0x800000000) == 0)
  {
LABEL_9:
    if ((has & 0x2000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_135;
  }

LABEL_134:
  *(v5 + 220) = self->_faceDetectFrameCount;
  *(v5 + 380) |= 0x800000000uLL;
  has = self->_has;
  if ((has & 0x2000000000) == 0)
  {
LABEL_10:
    if ((has & 0x4000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_136;
  }

LABEL_135:
  *(v5 + 228) = self->_faceDetectFrameFloodCount;
  *(v5 + 380) |= 0x2000000000uLL;
  has = self->_has;
  if ((has & 0x4000000000) == 0)
  {
LABEL_11:
    if ((has & 0x1000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_137;
  }

LABEL_136:
  *(v5 + 232) = self->_faceDetectFrameSparseCount;
  *(v5 + 380) |= 0x4000000000uLL;
  has = self->_has;
  if ((has & 0x1000000000) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_138;
  }

LABEL_137:
  *(v5 + 224) = self->_faceDetectFrameDenseCount;
  *(v5 + 380) |= 0x1000000000uLL;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(v5 + 32) = self->_bioCheckEndTime;
  *(v5 + 380) |= 1uLL;
  has = self->_has;
  if ((has & 0x200000) == 0)
  {
LABEL_14:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_140;
  }

LABEL_139:
  *(v5 + 152) = self->_bioCheckResult;
  *(v5 + 380) |= 0x200000uLL;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_15:
    if ((has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(v5 + 128) = self->_bioCheckFrameCount;
  *(v5 + 380) |= 0x8000uLL;
  has = self->_has;
  if ((has & 0x20000) == 0)
  {
LABEL_16:
    if ((has & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_142;
  }

LABEL_141:
  *(v5 + 136) = self->_bioCheckFrameFloodCount;
  *(v5 + 380) |= 0x20000uLL;
  has = self->_has;
  if ((has & 0x40000) == 0)
  {
LABEL_17:
    if ((has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(v5 + 140) = self->_bioCheckFrameSparseCount;
  *(v5 + 380) |= 0x40000uLL;
  has = self->_has;
  if ((has & 0x10000) == 0)
  {
LABEL_18:
    if ((has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_143:
  *(v5 + 132) = self->_bioCheckFrameDenseCount;
  *(v5 + 380) |= 0x10000uLL;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_19:
    *(v5 + 64) = self->_probingPatternEndTime;
    *(v5 + 380) |= 0x10uLL;
  }

LABEL_20:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    *(v5 + 340) = self->_probingPatternResult;
    *(v5 + 388) |= 2u;
  }

  v9 = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    *(v5 + 324) = self->_probingPatternFrameCount;
    *(v5 + 380) |= 0x2000000000000000uLL;
    v9 = self->_has;
  }

  if (v9 < 0)
  {
    *(v5 + 332) = self->_probingPatternFrameFloodCount;
    *(v5 + 380) |= 0x8000000000000000;
  }

  if (*(&self->_has + 8))
  {
    *(v5 + 336) = self->_probingPatternFrameSparseCount;
    *(v5 + 388) |= 1u;
  }

  v10 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    *(v5 + 328) = self->_probingPatternFrameDenseCount;
    *(v5 + 380) |= 0x4000000000000000uLL;
    v10 = self->_has;
  }

  if ((v10 & 0x200) != 0)
  {
    *(v5 + 104) = self->_ambientLux;
    *(v5 + 380) |= 0x200uLL;
  }

  v11 = *(&self->_has + 2);
  if (v11 < 0)
  {
    *(v5 + 379) = self->_probingPatternFailure;
    *(v5 + 388) |= 0x80000000;
    v11 = *(&self->_has + 2);
    if ((v11 & 0x8000000) == 0)
    {
LABEL_34:
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_196;
    }
  }

  else if ((v11 & 0x8000000) == 0)
  {
    goto LABEL_34;
  }

  *(v5 + 375) = self->_matcherFailure;
  *(v5 + 388) |= 0x8000000u;
  v11 = *(&self->_has + 2);
  if ((v11 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_197;
  }

LABEL_196:
  *(v5 + 372) = self->_matchDepthFailure;
  *(v5 + 388) |= 0x1000000u;
  v11 = *(&self->_has + 2);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_198;
  }

LABEL_197:
  *(v5 + 373) = self->_matchFloodFailure;
  *(v5 + 388) |= 0x2000000u;
  v11 = *(&self->_has + 2);
  if ((v11 & 0x40) == 0)
  {
LABEL_37:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_199;
  }

LABEL_198:
  *(v5 + 354) = self->_asFloodFailure;
  *(v5 + 388) |= 0x40u;
  v11 = *(&self->_has + 2);
  if ((v11 & 0x10) == 0)
  {
LABEL_38:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_200;
  }

LABEL_199:
  *(v5 + 352) = self->_asDepthFailure;
  *(v5 + 388) |= 0x10u;
  v11 = *(&self->_has + 2);
  if ((v11 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_200:
  *(v5 + 376) = self->_onlineTemplateUpdated;
  *(v5 + 388) |= 0x10000000u;
  if ((*(&self->_has + 2) & 0x40000000) != 0)
  {
LABEL_40:
    *(v5 + 378) = self->_passcodeChallengeAllowed;
    *(v5 + 388) |= 0x40000000u;
  }

LABEL_41:
  if ((*(&self->_has + 6) & 8) != 0)
  {
    *(v5 + 284) = self->_featureGenerationError;
    *(v5 + 380) |= 0x8000000000000uLL;
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    *(v5 + 344) = self->_sensorTemperature;
    *(v5 + 388) |= 4u;
  }

  if ((*(&self->_has + 5) & 4) != 0)
  {
    *(v5 + 248) = self->_faceDistance;
    *(v5 + 380) |= 0x40000000000uLL;
  }

  if ((*(&self->_has + 10) & 0x40) != 0)
  {
    *(v5 + 370) = self->_hasOcclusion;
    *(v5 + 388) |= 0x400000u;
  }

  v12 = *p_has;
  if ((*p_has & 0x2000000) != 0)
  {
    *(v5 + 168) = self->_camRectX;
    *(v5 + 380) |= 0x2000000uLL;
    v12 = self->_has;
    if ((v12 & 0x4000000) == 0)
    {
LABEL_51:
      if ((v12 & 0x1000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_147;
    }
  }

  else if ((v12 & 0x4000000) == 0)
  {
    goto LABEL_51;
  }

  *(v5 + 172) = self->_camRectY;
  *(v5 + 380) |= 0x4000000uLL;
  v12 = self->_has;
  if ((v12 & 0x1000000) == 0)
  {
LABEL_52:
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v5 + 164) = self->_camRectW;
  *(v5 + 380) |= 0x1000000uLL;
  v12 = self->_has;
  if ((v12 & 0x800000) == 0)
  {
LABEL_53:
    if ((v12 & 0x10000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(v5 + 160) = self->_camRectH;
  *(v5 + 380) |= 0x800000uLL;
  v12 = self->_has;
  if ((v12 & 0x10000000000) == 0)
  {
LABEL_54:
    if ((v12 & 0x8000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(v5 + 240) = self->_faceDetectPPMRequestedBudget;
  *(v5 + 380) |= 0x10000000000uLL;
  v12 = self->_has;
  if ((v12 & 0x8000000000) == 0)
  {
LABEL_55:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(v5 + 236) = self->_faceDetectPPMAllocatedBudget;
  *(v5 + 380) |= 0x8000000000uLL;
  v12 = self->_has;
  if ((v12 & 0x100000) == 0)
  {
LABEL_56:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(v5 + 148) = self->_bioCheckPPMRequestedBudget;
  *(v5 + 380) |= 0x100000uLL;
  v12 = self->_has;
  if ((v12 & 0x80000) == 0)
  {
LABEL_57:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(v5 + 144) = self->_bioCheckPPMAllocatedBudget;
  *(v5 + 380) |= 0x80000uLL;
  v12 = self->_has;
  if ((v12 & 0x40) == 0)
  {
LABEL_58:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_153:
  *(v5 + 80) = self->_rfcSetIndex;
  *(v5 + 380) |= 0x40uLL;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_59:
    *(v5 + 72) = self->_rfcFrameIndex;
    *(v5 + 380) |= 0x20uLL;
  }

LABEL_60:
  if ((*(&self->_has + 9) & 4) != 0)
  {
    *(v5 + 358) = self->_bioLockout;
    *(v5 + 388) |= 0x400u;
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    *(v5 + 176) = self->_cameraErr;
    *(v5 + 380) |= 0x8000000uLL;
  }

  if ((*(&self->_has + 11) & 4) != 0)
  {
    *(v5 + 374) = self->_matchForUnlock;
    *(v5 + 388) |= 0x4000000u;
  }

  v13 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    *(v5 + 280) = self->_failedUnlockAttemptsFromFD;
    *(v5 + 380) |= 0x4000000000000uLL;
    v13 = self->_has;
    if ((v13 & 0x2000000000000) == 0)
    {
LABEL_68:
      if ((v13 & 0x1000000000000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_157;
    }
  }

  else if ((v13 & 0x2000000000000) == 0)
  {
    goto LABEL_68;
  }

  *(v5 + 276) = self->_failedUnlockAttemptsFromBiocheck;
  *(v5 + 380) |= 0x2000000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x1000000000000) == 0)
  {
LABEL_69:
    if ((v13 & 0x800000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_158;
  }

LABEL_157:
  *(v5 + 272) = self->_failedMatchAttemptsFromFD;
  *(v5 + 380) |= 0x1000000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x800000000000) == 0)
  {
LABEL_70:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(v5 + 268) = self->_failedMatchAttemptsFromBiocheck;
  *(v5 + 380) |= 0x800000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x400000) == 0)
  {
LABEL_71:
    if ((v13 & 0x10000000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(v5 + 156) = self->_bioLockoutReason;
  *(v5 + 380) |= 0x400000uLL;
  v13 = self->_has;
  if ((v13 & 0x10000000000000) == 0)
  {
LABEL_72:
    if ((v13 & 0x80000000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_160:
  *(v5 + 288) = self->_matchFeatureVectorError;
  *(v5 + 380) |= 0x10000000000000uLL;
  if ((*&self->_has & 0x80000000000000) != 0)
  {
LABEL_73:
    *(v5 + 300) = self->_onlineTemplateAge;
    *(v5 + 380) |= 0x80000000000000uLL;
  }

LABEL_74:
  if ((*(&self->_has + 8) & 8) != 0)
  {
    *(v5 + 348) = self->_shortTermTemplateAge;
    *(v5 + 388) |= 8u;
  }

  v14 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    *(v5 + 216) = self->_faceDetectFaceDistance;
    *(v5 + 380) |= 0x400000000uLL;
    v14 = self->_has;
    if ((v14 & 0x100000000) == 0)
    {
LABEL_78:
      if ((v14 & 0x200000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_164;
    }
  }

  else if ((v14 & 0x100000000) == 0)
  {
    goto LABEL_78;
  }

  *(v5 + 208) = self->_faceDetectCamRectX;
  *(v5 + 380) |= 0x100000000uLL;
  v14 = self->_has;
  if ((v14 & 0x200000000) == 0)
  {
LABEL_79:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_165;
  }

LABEL_164:
  *(v5 + 212) = self->_faceDetectCamRectY;
  *(v5 + 380) |= 0x200000000uLL;
  v14 = self->_has;
  if ((v14 & 0x80000000) == 0)
  {
LABEL_80:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_166;
  }

LABEL_165:
  *(v5 + 204) = self->_faceDetectCamRectW;
  *(v5 + 380) |= 0x80000000uLL;
  v14 = self->_has;
  if ((v14 & 0x40000000) == 0)
  {
LABEL_81:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_167;
  }

LABEL_166:
  *(v5 + 200) = self->_faceDetectCamRectH;
  *(v5 + 380) |= 0x40000000uLL;
  v14 = self->_has;
  if ((v14 & 0x4000) == 0)
  {
LABEL_82:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(v5 + 124) = self->_bioCheckFaceDistance;
  *(v5 + 380) |= 0x4000uLL;
  v14 = self->_has;
  if ((v14 & 0x1000) == 0)
  {
LABEL_83:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(v5 + 116) = self->_bioCheckCamRectX;
  *(v5 + 380) |= 0x1000uLL;
  v14 = self->_has;
  if ((v14 & 0x2000) == 0)
  {
LABEL_84:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_170;
  }

LABEL_169:
  *(v5 + 120) = self->_bioCheckCamRectY;
  *(v5 + 380) |= 0x2000uLL;
  v14 = self->_has;
  if ((v14 & 0x800) == 0)
  {
LABEL_85:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_171;
  }

LABEL_170:
  *(v5 + 112) = self->_bioCheckCamRectW;
  *(v5 + 380) |= 0x800uLL;
  v14 = self->_has;
  if ((v14 & 0x400) == 0)
  {
LABEL_86:
    if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_172;
  }

LABEL_171:
  *(v5 + 108) = self->_bioCheckCamRectH;
  *(v5 + 380) |= 0x400uLL;
  v14 = self->_has;
  if ((v14 & 0x1000000000000000) == 0)
  {
LABEL_87:
    if ((v14 & 0x400000000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_173;
  }

LABEL_172:
  *(v5 + 320) = self->_probingPatternFaceDistance;
  *(v5 + 380) |= 0x1000000000000000uLL;
  v14 = self->_has;
  if ((v14 & 0x400000000000000) == 0)
  {
LABEL_88:
    if ((v14 & 0x800000000000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_174;
  }

LABEL_173:
  *(v5 + 312) = self->_probingPatternCamRectX;
  *(v5 + 380) |= 0x400000000000000uLL;
  v14 = self->_has;
  if ((v14 & 0x800000000000000) == 0)
  {
LABEL_89:
    if ((v14 & 0x200000000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_175;
  }

LABEL_174:
  *(v5 + 316) = self->_probingPatternCamRectY;
  *(v5 + 380) |= 0x800000000000000uLL;
  v14 = self->_has;
  if ((v14 & 0x200000000000000) == 0)
  {
LABEL_90:
    if ((v14 & 0x100000000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_175:
  *(v5 + 308) = self->_probingPatternCamRectW;
  *(v5 + 380) |= 0x200000000000000uLL;
  if ((*&self->_has & 0x100000000000000) != 0)
  {
LABEL_91:
    *(v5 + 304) = self->_probingPatternCamRectH;
    *(v5 + 380) |= 0x100000000000000uLL;
  }

LABEL_92:
  v15 = *(&self->_has + 2);
  if ((v15 & 0x20) != 0)
  {
    *(v5 + 353) = self->_asFailure;
    *(v5 + 388) |= 0x20u;
    v15 = *(&self->_has + 2);
    if ((v15 & 0x80) == 0)
    {
LABEL_94:
      if ((v15 & 0x100) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }
  }

  else if ((v15 & 0x80) == 0)
  {
    goto LABEL_94;
  }

  *(v5 + 355) = self->_autoRetry;
  *(v5 + 388) |= 0x80u;
  if ((*(&self->_has + 2) & 0x100) != 0)
  {
LABEL_95:
    *(v5 + 356) = self->_autoRetryAllowed;
    *(v5 + 388) |= 0x100u;
  }

LABEL_96:
  v16 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    *(v5 + 196) = self->_deviceOrientation;
    *(v5 + 380) |= 0x20000000uLL;
    v16 = self->_has;
  }

  if ((v16 & 0x20000000000000) != 0)
  {
    *(v5 + 292) = self->_matchIdentityCount;
    *(v5 + 380) |= 0x20000000000000uLL;
  }

  v17 = [(NSString *)self->_cameraHWParameters copyWithZone:zone];
  v18 = *(v6 + 184);
  *(v6 + 184) = v17;

  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    *(v6 + 192) = self->_captureMethod;
    *(v6 + 380) |= 0x10000000uLL;
  }

  v19 = *(&self->_has + 2);
  if ((v19 & 0x20000) != 0)
  {
    *(v6 + 365) = self->_engagementInfoFeedbackNoFaceDetected;
    *(v6 + 388) |= 0x20000u;
    v19 = *(&self->_has + 2);
    if ((v19 & 0x4000) == 0)
    {
LABEL_104:
      if ((v19 & 0x8000) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_182;
    }
  }

  else if ((v19 & 0x4000) == 0)
  {
    goto LABEL_104;
  }

  *(v6 + 362) = self->_engagementInfoFeedbackFaceTooClose;
  *(v6 + 388) |= 0x4000u;
  v19 = *(&self->_has + 2);
  if ((v19 & 0x8000) == 0)
  {
LABEL_105:
    if ((v19 & 0x200000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_183;
  }

LABEL_182:
  *(v6 + 363) = self->_engagementInfoFeedbackFaceTooFar;
  *(v6 + 388) |= 0x8000u;
  v19 = *(&self->_has + 2);
  if ((v19 & 0x200000) == 0)
  {
LABEL_106:
    if ((v19 & 0x10000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_184;
  }

LABEL_183:
  *(v6 + 369) = self->_engagementInfoFeedbackPoseOutOfRange;
  *(v6 + 388) |= 0x200000u;
  v19 = *(&self->_has + 2);
  if ((v19 & 0x10000) == 0)
  {
LABEL_107:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_185;
  }

LABEL_184:
  *(v6 + 364) = self->_engagementInfoFeedbackNoAttention;
  *(v6 + 388) |= 0x10000u;
  v19 = *(&self->_has + 2);
  if ((v19 & 0x2000) == 0)
  {
LABEL_108:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_186;
  }

LABEL_185:
  *(v6 + 361) = self->_engagementInfoFeedbackFaceOccluded;
  *(v6 + 388) |= 0x2000u;
  v19 = *(&self->_has + 2);
  if ((v19 & 0x1000) == 0)
  {
LABEL_109:
    if ((v19 & 0x80000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_187;
  }

LABEL_186:
  *(v6 + 360) = self->_engagementInfoFeedbackCameraObstructed;
  *(v6 + 388) |= 0x1000u;
  v19 = *(&self->_has + 2);
  if ((v19 & 0x80000) == 0)
  {
LABEL_110:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

LABEL_187:
  *(v6 + 367) = self->_engagementInfoFeedbackPartialOutOfFOV;
  *(v6 + 388) |= 0x80000u;
  if ((*(&self->_has + 2) & 0x800) != 0)
  {
LABEL_111:
    *(v6 + 359) = self->_combinedSequenceEnabled;
    *(v6 + 388) |= 0x800u;
  }

LABEL_112:
  if ((*p_has & 8) != 0)
  {
    *(v6 + 56) = self->_overallTimeWithRetries;
    *(v6 + 380) |= 8uLL;
  }

  if ((*(&self->_has + 9) & 2) != 0)
  {
    *(v6 + 357) = self->_autoRetryEnabled;
    *(v6 + 388) |= 0x200u;
  }

  PBRepeatedUInt64Copy();
  v20 = *(&self->_has + 2);
  if ((v20 & 0x800000) != 0)
  {
    *(v6 + 371) = self->_matchCancelled;
    *(v6 + 388) |= 0x800000u;
    v20 = *(&self->_has + 2);
  }

  if ((v20 & 0x100000) != 0)
  {
    *(v6 + 368) = self->_engagementInfoFeedbackPoseMarginal;
    *(v6 + 388) |= 0x100000u;
  }

  v21 = *p_has;
  if ((*p_has & 0x80000000000) != 0)
  {
    *(v6 + 252) = self->_faceOrientation;
    *(v6 + 380) |= 0x80000000000uLL;
    v21 = self->_has;
    if ((v21 & 0x100000000000) == 0)
    {
LABEL_122:
      if ((v21 & 0x400000000000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_191;
    }
  }

  else if ((v21 & 0x100000000000) == 0)
  {
    goto LABEL_122;
  }

  *(v6 + 256) = self->_facePitch;
  *(v6 + 380) |= 0x100000000000uLL;
  v21 = self->_has;
  if ((v21 & 0x400000000000) == 0)
  {
LABEL_123:
    if ((v21 & 0x200000000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_192;
  }

LABEL_191:
  *(v6 + 264) = self->_faceYaw;
  *(v6 + 380) |= 0x400000000000uLL;
  v21 = self->_has;
  if ((v21 & 0x200000000000) == 0)
  {
LABEL_124:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_192:
  *(v6 + 260) = self->_faceRoll;
  *(v6 + 380) |= 0x200000000000uLL;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_125:
    *(v6 + 88) = self->_timeSinceSleep;
    *(v6 + 380) |= 0x80uLL;
  }

LABEL_126:
  if ((*(&self->_has + 10) & 4) != 0)
  {
    *(v6 + 366) = self->_engagementInfoFeedbackNoseAndMouthOccluded;
    *(v6 + 388) |= 0x40000u;
  }

  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    *(v6 + 296) = self->_matchType;
    *(v6 + 380) |= 0x40000000000000uLL;
  }

  v22 = v6;

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_569;
  }

  has = self->_has;
  v6 = *(equalCopy + 380);
  if ((has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_timestamp != *(equalCopy + 12))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_569;
  }

  v7 = *(&self->_has + 2);
  v8 = *(equalCopy + 97);
  if ((v7 & 0x20000000) != 0)
  {
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_569;
    }

    v9 = equalCopy[377];
    if (self->_overallResult)
    {
      if ((equalCopy[377] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[377])
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 0x20000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_overallTime != *(equalCopy + 6))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_faceDetectEndTime != *(equalCopy + 5))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x20000000000) != 0)
  {
    if ((v6 & 0x20000000000) == 0 || self->_faceDetectResult != *(equalCopy + 61))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x20000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x800000000) != 0)
  {
    if ((v6 & 0x800000000) == 0 || self->_faceDetectFrameCount != *(equalCopy + 55))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x800000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x2000000000) != 0)
  {
    if ((v6 & 0x2000000000) == 0 || self->_faceDetectFrameFloodCount != *(equalCopy + 57))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x2000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x4000000000) != 0)
  {
    if ((v6 & 0x4000000000) == 0 || self->_faceDetectFrameSparseCount != *(equalCopy + 58))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x4000000000) != 0)
  {
    goto LABEL_569;
  }

  p_has = &self->_has;
  v50 = (equalCopy + 380);
  if ((has & 0x1000000000) != 0)
  {
    if ((v6 & 0x1000000000) == 0 || self->_faceDetectFrameDenseCount != *(equalCopy + 56))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x1000000000) != 0)
  {
    goto LABEL_569;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_bioCheckEndTime != *(equalCopy + 4))
    {
      goto LABEL_569;
    }
  }

  else if (v6)
  {
    goto LABEL_569;
  }

  if ((has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_bioCheckResult != *(equalCopy + 38))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_bioCheckFrameCount != *(equalCopy + 32))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_bioCheckFrameFloodCount != *(equalCopy + 34))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_bioCheckFrameSparseCount != *(equalCopy + 35))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_bioCheckFrameDenseCount != *(equalCopy + 33))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_probingPatternEndTime != *(equalCopy + 8))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_probingPatternResult != *(equalCopy + 85))
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x2000000000000000) != 0)
  {
    if ((v6 & 0x2000000000000000) == 0 || self->_probingPatternFrameCount != *(equalCopy + 81))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x2000000000000000) != 0)
  {
    goto LABEL_569;
  }

  if (has < 0)
  {
    if ((v6 & 0x8000000000000000) == 0 || self->_probingPatternFrameFloodCount != *(equalCopy + 83))
    {
      goto LABEL_569;
    }
  }

  else if (v6 < 0)
  {
    goto LABEL_569;
  }

  if (v7)
  {
    if ((v8 & 1) == 0 || self->_probingPatternFrameSparseCount != *(equalCopy + 84))
    {
      goto LABEL_569;
    }
  }

  else if (v8)
  {
    goto LABEL_569;
  }

  if ((has & 0x4000000000000000) != 0)
  {
    if ((v6 & 0x4000000000000000) == 0 || self->_probingPatternFrameDenseCount != *(equalCopy + 82))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x4000000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_ambientLux != *(equalCopy + 26))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_569;
  }

  if (v7 < 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_569;
    }

    v10 = equalCopy[379];
    if (self->_probingPatternFailure)
    {
      if ((equalCopy[379] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[379])
    {
      goto LABEL_569;
    }
  }

  else if (v8 < 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x8000000) != 0)
  {
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_569;
    }

    v11 = equalCopy[375];
    if (self->_matcherFailure)
    {
      if ((equalCopy[375] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[375])
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 0x8000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x1000000) != 0)
  {
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_569;
    }

    v12 = equalCopy[372];
    if (self->_matchDepthFailure)
    {
      if ((equalCopy[372] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[372])
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 0x1000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x2000000) != 0)
  {
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_569;
    }

    v13 = equalCopy[373];
    if (self->_matchFloodFailure)
    {
      if ((equalCopy[373] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[373])
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 0x2000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_569;
    }

    v14 = equalCopy[354];
    if (self->_asFloodFailure)
    {
      if ((equalCopy[354] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[354])
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_569;
    }

    v15 = equalCopy[352];
    if (self->_asDepthFailure)
    {
      if ((equalCopy[352] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[352])
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x10000000) != 0)
  {
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_569;
    }

    v16 = equalCopy[376];
    if (self->_onlineTemplateUpdated)
    {
      if ((equalCopy[376] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[376])
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 0x10000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x40000000) != 0)
  {
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_569;
    }

    v17 = equalCopy[378];
    if (self->_passcodeChallengeAllowed)
    {
      if ((equalCopy[378] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[378])
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x8000000000000) != 0)
  {
    if ((v6 & 0x8000000000000) == 0 || self->_featureGenerationError != *(equalCopy + 71))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x8000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_sensorTemperature != *(equalCopy + 86))
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x40000000000) != 0)
  {
    if ((v6 & 0x40000000000) == 0 || self->_faceDistance != *(equalCopy + 62))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x40000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x400000) != 0)
  {
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_569;
    }

    v18 = equalCopy[370];
    if (self->_hasOcclusion)
    {
      if ((equalCopy[370] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[370])
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 0x400000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_camRectX != *(equalCopy + 42))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_camRectY != *(equalCopy + 43))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_camRectW != *(equalCopy + 41))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_camRectH != *(equalCopy + 40))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x10000000000) != 0)
  {
    if ((v6 & 0x10000000000) == 0 || self->_faceDetectPPMRequestedBudget != *(equalCopy + 60))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x10000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x8000000000) != 0)
  {
    if ((v6 & 0x8000000000) == 0 || self->_faceDetectPPMAllocatedBudget != *(equalCopy + 59))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x8000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_bioCheckPPMRequestedBudget != *(equalCopy + 37))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_bioCheckPPMAllocatedBudget != *(equalCopy + 36))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_rfcSetIndex != *(equalCopy + 10))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_rfcFrameIndex != *(equalCopy + 9))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_569;
    }

    v19 = equalCopy[358];
    if (self->_bioLockout)
    {
      if ((equalCopy[358] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[358])
    {
      goto LABEL_569;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_569;
  }

  v20 = *v50;
  if ((has & 0x8000000) != 0)
  {
    if ((v20 & 0x8000000) == 0 || self->_cameraErr != *(equalCopy + 44))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x8000000) != 0)
  {
    goto LABEL_569;
  }

  v21 = *(equalCopy + 97);
  if ((v7 & 0x4000000) != 0)
  {
    if ((v21 & 0x4000000) == 0)
    {
      goto LABEL_569;
    }

    v22 = equalCopy[374];
    if (self->_matchForUnlock)
    {
      if ((equalCopy[374] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[374])
    {
      goto LABEL_569;
    }
  }

  else if ((v21 & 0x4000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x4000000000000) != 0)
  {
    if ((v20 & 0x4000000000000) == 0 || self->_failedUnlockAttemptsFromFD != *(equalCopy + 70))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x4000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x2000000000000) != 0)
  {
    if ((v20 & 0x2000000000000) == 0 || self->_failedUnlockAttemptsFromBiocheck != *(equalCopy + 69))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x2000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x1000000000000) != 0)
  {
    if ((v20 & 0x1000000000000) == 0 || self->_failedMatchAttemptsFromFD != *(equalCopy + 68))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x1000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x800000000000) != 0)
  {
    if ((v20 & 0x800000000000) == 0 || self->_failedMatchAttemptsFromBiocheck != *(equalCopy + 67))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x800000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x400000) != 0)
  {
    if ((v20 & 0x400000) == 0 || self->_bioLockoutReason != *(equalCopy + 39))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x400000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x10000000000000) != 0)
  {
    if ((v20 & 0x10000000000000) == 0 || self->_matchFeatureVectorError != *(equalCopy + 72))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x10000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x80000000000000) != 0)
  {
    if ((v20 & 0x80000000000000) == 0 || self->_onlineTemplateAge != *(equalCopy + 75))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x80000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 8) != 0)
  {
    if ((v21 & 8) == 0 || self->_shortTermTemplateAge != *(equalCopy + 87))
    {
      goto LABEL_569;
    }
  }

  else if ((v21 & 8) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x400000000) != 0)
  {
    if ((v20 & 0x400000000) == 0 || self->_faceDetectFaceDistance != *(equalCopy + 54))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x400000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x100000000) != 0)
  {
    if ((v20 & 0x100000000) == 0 || self->_faceDetectCamRectX != *(equalCopy + 52))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x100000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x200000000) != 0)
  {
    if ((v20 & 0x200000000) == 0 || self->_faceDetectCamRectY != *(equalCopy + 53))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x200000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x80000000) != 0)
  {
    if ((v20 & 0x80000000) == 0 || self->_faceDetectCamRectW != *(equalCopy + 51))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x40000000) != 0)
  {
    if ((v20 & 0x40000000) == 0 || self->_faceDetectCamRectH != *(equalCopy + 50))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x40000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x4000) != 0)
  {
    if ((v20 & 0x4000) == 0 || self->_bioCheckFaceDistance != *(equalCopy + 31))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x4000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x1000) != 0)
  {
    if ((v20 & 0x1000) == 0 || self->_bioCheckCamRectX != *(equalCopy + 29))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x1000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x2000) != 0)
  {
    if ((v20 & 0x2000) == 0 || self->_bioCheckCamRectY != *(equalCopy + 30))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x2000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x800) != 0)
  {
    if ((v20 & 0x800) == 0 || self->_bioCheckCamRectW != *(equalCopy + 28))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x800) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x400) != 0)
  {
    if ((v20 & 0x400) == 0 || self->_bioCheckCamRectH != *(equalCopy + 27))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x400) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x1000000000000000) != 0)
  {
    if ((v20 & 0x1000000000000000) == 0 || self->_probingPatternFaceDistance != *(equalCopy + 80))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x1000000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x400000000000000) != 0)
  {
    if ((v20 & 0x400000000000000) == 0 || self->_probingPatternCamRectX != *(equalCopy + 78))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x400000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x800000000000000) != 0)
  {
    if ((v20 & 0x800000000000000) == 0 || self->_probingPatternCamRectY != *(equalCopy + 79))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x800000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x200000000000000) != 0)
  {
    if ((v20 & 0x200000000000000) == 0 || self->_probingPatternCamRectW != *(equalCopy + 77))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x200000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x100000000000000) != 0)
  {
    if ((v20 & 0x100000000000000) == 0 || self->_probingPatternCamRectH != *(equalCopy + 76))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x100000000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x20) != 0)
  {
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_569;
    }

    v23 = equalCopy[353];
    if (self->_asFailure)
    {
      if ((equalCopy[353] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[353])
    {
      goto LABEL_569;
    }
  }

  else if ((v21 & 0x20) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x80) != 0)
  {
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_569;
    }

    v24 = equalCopy[355];
    if (self->_autoRetry)
    {
      if ((equalCopy[355] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[355])
    {
      goto LABEL_569;
    }
  }

  else if ((v21 & 0x80) != 0)
  {
    goto LABEL_569;
  }

  if ((v7 & 0x100) != 0)
  {
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_569;
    }

    v25 = equalCopy[356];
    if (self->_autoRetryAllowed)
    {
      if ((equalCopy[356] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[356])
    {
      goto LABEL_569;
    }
  }

  else if ((v21 & 0x100) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x20000000) != 0)
  {
    if ((v20 & 0x20000000) == 0 || self->_deviceOrientation != *(equalCopy + 49))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x20000000) != 0)
  {
    goto LABEL_569;
  }

  if ((has & 0x20000000000000) != 0)
  {
    if ((v20 & 0x20000000000000) == 0 || self->_matchIdentityCount != *(equalCopy + 73))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x20000000000000) != 0)
  {
    goto LABEL_569;
  }

  cameraHWParameters = self->_cameraHWParameters;
  if (cameraHWParameters | *(equalCopy + 23) && ![(NSString *)cameraHWParameters isEqual:?])
  {
    goto LABEL_569;
  }

  v27 = *v50;
  if ((*p_has & 0x10000000) != 0)
  {
    if ((v27 & 0x10000000) == 0 || self->_captureMethod != *(equalCopy + 48))
    {
      goto LABEL_569;
    }
  }

  else if ((v27 & 0x10000000) != 0)
  {
    goto LABEL_569;
  }

  v28 = *(&self->_has + 2);
  v29 = *(equalCopy + 97);
  if ((v28 & 0x20000) != 0)
  {
    if ((v29 & 0x20000) == 0)
    {
      goto LABEL_569;
    }

    v30 = equalCopy[365];
    if (self->_engagementInfoFeedbackNoFaceDetected)
    {
      if ((equalCopy[365] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[365])
    {
      goto LABEL_569;
    }
  }

  else if ((v29 & 0x20000) != 0)
  {
    goto LABEL_569;
  }

  if ((v28 & 0x4000) != 0)
  {
    if ((v29 & 0x4000) == 0)
    {
      goto LABEL_569;
    }

    v31 = equalCopy[362];
    if (self->_engagementInfoFeedbackFaceTooClose)
    {
      if ((equalCopy[362] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[362])
    {
      goto LABEL_569;
    }
  }

  else if ((v29 & 0x4000) != 0)
  {
    goto LABEL_569;
  }

  if ((v28 & 0x8000) != 0)
  {
    if ((v29 & 0x8000) == 0)
    {
      goto LABEL_569;
    }

    v32 = equalCopy[363];
    if (self->_engagementInfoFeedbackFaceTooFar)
    {
      if ((equalCopy[363] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[363])
    {
      goto LABEL_569;
    }
  }

  else if ((v29 & 0x8000) != 0)
  {
    goto LABEL_569;
  }

  if ((v28 & 0x200000) != 0)
  {
    if ((v29 & 0x200000) == 0)
    {
      goto LABEL_569;
    }

    v33 = equalCopy[369];
    if (self->_engagementInfoFeedbackPoseOutOfRange)
    {
      if ((equalCopy[369] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[369])
    {
      goto LABEL_569;
    }
  }

  else if ((v29 & 0x200000) != 0)
  {
    goto LABEL_569;
  }

  if ((v28 & 0x10000) != 0)
  {
    if ((v29 & 0x10000) == 0)
    {
      goto LABEL_569;
    }

    v34 = equalCopy[364];
    if (self->_engagementInfoFeedbackNoAttention)
    {
      if ((equalCopy[364] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[364])
    {
      goto LABEL_569;
    }
  }

  else if ((v29 & 0x10000) != 0)
  {
    goto LABEL_569;
  }

  if ((v28 & 0x2000) != 0)
  {
    if ((v29 & 0x2000) == 0)
    {
      goto LABEL_569;
    }

    v35 = equalCopy[361];
    if (self->_engagementInfoFeedbackFaceOccluded)
    {
      if ((equalCopy[361] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[361])
    {
      goto LABEL_569;
    }
  }

  else if ((v29 & 0x2000) != 0)
  {
    goto LABEL_569;
  }

  if ((v28 & 0x1000) != 0)
  {
    if ((v29 & 0x1000) == 0)
    {
      goto LABEL_569;
    }

    v36 = equalCopy[360];
    if (self->_engagementInfoFeedbackCameraObstructed)
    {
      if ((equalCopy[360] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[360])
    {
      goto LABEL_569;
    }
  }

  else if ((v29 & 0x1000) != 0)
  {
    goto LABEL_569;
  }

  if ((v28 & 0x80000) != 0)
  {
    if ((v29 & 0x80000) == 0)
    {
      goto LABEL_569;
    }

    v37 = equalCopy[367];
    if (self->_engagementInfoFeedbackPartialOutOfFOV)
    {
      if ((equalCopy[367] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[367])
    {
      goto LABEL_569;
    }
  }

  else if ((v29 & 0x80000) != 0)
  {
    goto LABEL_569;
  }

  if ((v28 & 0x800) != 0)
  {
    if ((v29 & 0x800) == 0)
    {
      goto LABEL_569;
    }

    v38 = equalCopy[359];
    if (self->_combinedSequenceEnabled)
    {
      if ((equalCopy[359] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[359])
    {
      goto LABEL_569;
    }
  }

  else if ((v29 & 0x800) != 0)
  {
    goto LABEL_569;
  }

  if ((*p_has & 8) != 0)
  {
    if ((v27 & 8) == 0 || self->_overallTimeWithRetries != *(equalCopy + 7))
    {
      goto LABEL_569;
    }
  }

  else if ((v27 & 8) != 0)
  {
    goto LABEL_569;
  }

  if ((v28 & 0x200) != 0)
  {
    if ((v29 & 0x200) == 0)
    {
      goto LABEL_569;
    }

    v39 = equalCopy[357];
    if (self->_autoRetryEnabled)
    {
      if ((equalCopy[357] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[357])
    {
      goto LABEL_569;
    }
  }

  else if ((v29 & 0x200) != 0)
  {
    goto LABEL_569;
  }

  if (!PBRepeatedUInt64IsEqual())
  {
    goto LABEL_569;
  }

  v40 = *(&self->_has + 2);
  v41 = *(equalCopy + 97);
  if ((v40 & 0x800000) != 0)
  {
    if ((v41 & 0x800000) == 0)
    {
      goto LABEL_569;
    }

    v42 = equalCopy[371];
    if (self->_matchCancelled)
    {
      if ((equalCopy[371] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[371])
    {
      goto LABEL_569;
    }
  }

  else if ((v41 & 0x800000) != 0)
  {
    goto LABEL_569;
  }

  if ((v40 & 0x100000) != 0)
  {
    if ((v41 & 0x100000) == 0)
    {
      goto LABEL_569;
    }

    v43 = equalCopy[368];
    if (self->_engagementInfoFeedbackPoseMarginal)
    {
      if ((equalCopy[368] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (equalCopy[368])
    {
      goto LABEL_569;
    }
  }

  else if ((v41 & 0x100000) != 0)
  {
    goto LABEL_569;
  }

  v44 = *p_has;
  v45 = *v50;
  if ((*p_has & 0x80000000000) != 0)
  {
    if ((v45 & 0x80000000000) == 0 || self->_faceOrientation != *(equalCopy + 63))
    {
      goto LABEL_569;
    }
  }

  else if ((v45 & 0x80000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v44 & 0x100000000000) != 0)
  {
    if ((v45 & 0x100000000000) == 0 || self->_facePitch != *(equalCopy + 64))
    {
      goto LABEL_569;
    }
  }

  else if ((v45 & 0x100000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v44 & 0x400000000000) != 0)
  {
    if ((v45 & 0x400000000000) == 0 || self->_faceYaw != *(equalCopy + 66))
    {
      goto LABEL_569;
    }
  }

  else if ((v45 & 0x400000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v44 & 0x200000000000) != 0)
  {
    if ((v45 & 0x200000000000) == 0 || self->_faceRoll != *(equalCopy + 65))
    {
      goto LABEL_569;
    }
  }

  else if ((v45 & 0x200000000000) != 0)
  {
    goto LABEL_569;
  }

  if ((v44 & 0x80) != 0)
  {
    if ((v45 & 0x80) == 0 || self->_timeSinceSleep != *(equalCopy + 11))
    {
      goto LABEL_569;
    }
  }

  else if ((v45 & 0x80) != 0)
  {
    goto LABEL_569;
  }

  if ((v40 & 0x40000) != 0)
  {
    if ((v41 & 0x40000) != 0)
    {
      v46 = equalCopy[366];
      if (self->_engagementInfoFeedbackNoseAndMouthOccluded)
      {
        if ((equalCopy[366] & 1) == 0)
        {
          goto LABEL_569;
        }

        goto LABEL_564;
      }

      if ((equalCopy[366] & 1) == 0)
      {
        goto LABEL_564;
      }
    }

LABEL_569:
    v47 = 0;
    goto LABEL_570;
  }

  if ((v41 & 0x40000) != 0)
  {
    goto LABEL_569;
  }

LABEL_564:
  if ((v44 & 0x40000000000000) != 0)
  {
    if ((v45 & 0x40000000000000) == 0 || self->_matchType != *(equalCopy + 74))
    {
      goto LABEL_569;
    }

    v47 = 1;
  }

  else
  {
    v47 = (v45 & 0x40000000000000) == 0;
  }

LABEL_570:

  return v47;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v107 = 2654435761u * self->_timestamp;
  }

  else
  {
    v107 = 0;
  }

  v4 = *(&self->_has + 2);
  p_has = &self->_has;
  if ((v4 & 0x20000000) != 0)
  {
    v106 = 2654435761 * self->_overallResult;
    if ((has & 4) != 0)
    {
LABEL_6:
      v105 = 2654435761u * self->_overallTime;
      if ((has & 2) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_81;
    }
  }

  else
  {
    v106 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v105 = 0;
  if ((has & 2) != 0)
  {
LABEL_7:
    v104 = 2654435761u * self->_faceDetectEndTime;
    if ((has & 0x20000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_82;
  }

LABEL_81:
  v104 = 0;
  if ((has & 0x20000000000) != 0)
  {
LABEL_8:
    v103 = 2654435761 * self->_faceDetectResult;
    if ((has & 0x800000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_83;
  }

LABEL_82:
  v103 = 0;
  if ((has & 0x800000000) != 0)
  {
LABEL_9:
    v102 = 2654435761 * self->_faceDetectFrameCount;
    if ((has & 0x2000000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_84;
  }

LABEL_83:
  v102 = 0;
  if ((has & 0x2000000000) != 0)
  {
LABEL_10:
    v101 = 2654435761 * self->_faceDetectFrameFloodCount;
    if ((has & 0x4000000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_85;
  }

LABEL_84:
  v101 = 0;
  if ((has & 0x4000000000) != 0)
  {
LABEL_11:
    v100 = 2654435761 * self->_faceDetectFrameSparseCount;
    if ((has & 0x1000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_86;
  }

LABEL_85:
  v100 = 0;
  if ((has & 0x1000000000) != 0)
  {
LABEL_12:
    v99 = 2654435761 * self->_faceDetectFrameDenseCount;
    if (has)
    {
      goto LABEL_13;
    }

    goto LABEL_87;
  }

LABEL_86:
  v99 = 0;
  if (has)
  {
LABEL_13:
    v98 = 2654435761u * self->_bioCheckEndTime;
    if ((has & 0x200000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_88;
  }

LABEL_87:
  v98 = 0;
  if ((has & 0x200000) != 0)
  {
LABEL_14:
    v97 = 2654435761 * self->_bioCheckResult;
    if ((has & 0x8000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_89;
  }

LABEL_88:
  v97 = 0;
  if ((has & 0x8000) != 0)
  {
LABEL_15:
    v96 = 2654435761 * self->_bioCheckFrameCount;
    if ((has & 0x20000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_90;
  }

LABEL_89:
  v96 = 0;
  if ((has & 0x20000) != 0)
  {
LABEL_16:
    v95 = 2654435761 * self->_bioCheckFrameFloodCount;
    if ((has & 0x40000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_91;
  }

LABEL_90:
  v95 = 0;
  if ((has & 0x40000) != 0)
  {
LABEL_17:
    v94 = 2654435761 * self->_bioCheckFrameSparseCount;
    if ((has & 0x10000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_92;
  }

LABEL_91:
  v94 = 0;
  if ((has & 0x10000) != 0)
  {
LABEL_18:
    v93 = 2654435761 * self->_bioCheckFrameDenseCount;
    if ((has & 0x10) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_93;
  }

LABEL_92:
  v93 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_19:
    v92 = 2654435761u * self->_probingPatternEndTime;
    if ((v4 & 2) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_94;
  }

LABEL_93:
  v92 = 0;
  if ((v4 & 2) != 0)
  {
LABEL_20:
    v91 = 2654435761 * self->_probingPatternResult;
    if ((has & 0x2000000000000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_95;
  }

LABEL_94:
  v91 = 0;
  if ((has & 0x2000000000000000) != 0)
  {
LABEL_21:
    v90 = 2654435761 * self->_probingPatternFrameCount;
    if (has < 0)
    {
      goto LABEL_22;
    }

    goto LABEL_96;
  }

LABEL_95:
  v90 = 0;
  if (has < 0)
  {
LABEL_22:
    v89 = 2654435761 * self->_probingPatternFrameFloodCount;
    if (v4)
    {
      goto LABEL_23;
    }

    goto LABEL_97;
  }

LABEL_96:
  v89 = 0;
  if (v4)
  {
LABEL_23:
    v88 = 2654435761 * self->_probingPatternFrameSparseCount;
    if ((has & 0x4000000000000000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_98;
  }

LABEL_97:
  v88 = 0;
  if ((has & 0x4000000000000000) != 0)
  {
LABEL_24:
    v87 = 2654435761 * self->_probingPatternFrameDenseCount;
    if ((has & 0x200) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_99;
  }

LABEL_98:
  v87 = 0;
  if ((has & 0x200) != 0)
  {
LABEL_25:
    v86 = 2654435761 * self->_ambientLux;
    if (v4 < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_100;
  }

LABEL_99:
  v86 = 0;
  if (v4 < 0)
  {
LABEL_26:
    v85 = 2654435761 * self->_probingPatternFailure;
    if ((v4 & 0x8000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_101;
  }

LABEL_100:
  v85 = 0;
  if ((v4 & 0x8000000) != 0)
  {
LABEL_27:
    v84 = 2654435761 * self->_matcherFailure;
    if ((v4 & 0x1000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_102;
  }

LABEL_101:
  v84 = 0;
  if ((v4 & 0x1000000) != 0)
  {
LABEL_28:
    v83 = 2654435761 * self->_matchDepthFailure;
    if ((v4 & 0x2000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_103;
  }

LABEL_102:
  v83 = 0;
  if ((v4 & 0x2000000) != 0)
  {
LABEL_29:
    v82 = 2654435761 * self->_matchFloodFailure;
    if ((v4 & 0x40) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_104;
  }

LABEL_103:
  v82 = 0;
  if ((v4 & 0x40) != 0)
  {
LABEL_30:
    v81 = 2654435761 * self->_asFloodFailure;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_105;
  }

LABEL_104:
  v81 = 0;
  if ((v4 & 0x10) != 0)
  {
LABEL_31:
    v80 = 2654435761 * self->_asDepthFailure;
    if ((v4 & 0x10000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_106;
  }

LABEL_105:
  v80 = 0;
  if ((v4 & 0x10000000) != 0)
  {
LABEL_32:
    v79 = 2654435761 * self->_onlineTemplateUpdated;
    if ((v4 & 0x40000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_107;
  }

LABEL_106:
  v79 = 0;
  if ((v4 & 0x40000000) != 0)
  {
LABEL_33:
    v78 = 2654435761 * self->_passcodeChallengeAllowed;
    if ((has & 0x8000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_108;
  }

LABEL_107:
  v78 = 0;
  if ((has & 0x8000000000000) != 0)
  {
LABEL_34:
    v77 = 2654435761 * self->_featureGenerationError;
    if ((v4 & 4) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_109;
  }

LABEL_108:
  v77 = 0;
  if ((v4 & 4) != 0)
  {
LABEL_35:
    v76 = 2654435761 * self->_sensorTemperature;
    if ((has & 0x40000000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_110;
  }

LABEL_109:
  v76 = 0;
  if ((has & 0x40000000000) != 0)
  {
LABEL_36:
    v75 = 2654435761 * self->_faceDistance;
    if ((v4 & 0x400000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_111;
  }

LABEL_110:
  v75 = 0;
  if ((v4 & 0x400000) != 0)
  {
LABEL_37:
    v74 = 2654435761 * self->_hasOcclusion;
    if ((has & 0x2000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_112;
  }

LABEL_111:
  v74 = 0;
  if ((has & 0x2000000) != 0)
  {
LABEL_38:
    v73 = 2654435761 * self->_camRectX;
    if ((has & 0x4000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_113;
  }

LABEL_112:
  v73 = 0;
  if ((has & 0x4000000) != 0)
  {
LABEL_39:
    v72 = 2654435761 * self->_camRectY;
    if ((has & 0x1000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_114;
  }

LABEL_113:
  v72 = 0;
  if ((has & 0x1000000) != 0)
  {
LABEL_40:
    v71 = 2654435761 * self->_camRectW;
    if ((has & 0x800000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_115;
  }

LABEL_114:
  v71 = 0;
  if ((has & 0x800000) != 0)
  {
LABEL_41:
    v70 = 2654435761 * self->_camRectH;
    if ((has & 0x10000000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_116;
  }

LABEL_115:
  v70 = 0;
  if ((has & 0x10000000000) != 0)
  {
LABEL_42:
    v69 = 2654435761 * self->_faceDetectPPMRequestedBudget;
    if ((has & 0x8000000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_117;
  }

LABEL_116:
  v69 = 0;
  if ((has & 0x8000000000) != 0)
  {
LABEL_43:
    v68 = 2654435761 * self->_faceDetectPPMAllocatedBudget;
    if ((has & 0x100000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_118;
  }

LABEL_117:
  v68 = 0;
  if ((has & 0x100000) != 0)
  {
LABEL_44:
    v67 = 2654435761 * self->_bioCheckPPMRequestedBudget;
    if ((has & 0x80000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_119;
  }

LABEL_118:
  v67 = 0;
  if ((has & 0x80000) != 0)
  {
LABEL_45:
    v66 = 2654435761 * self->_bioCheckPPMAllocatedBudget;
    if ((has & 0x40) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_120;
  }

LABEL_119:
  v66 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_46:
    v65 = 2654435761 * self->_rfcSetIndex;
    if ((has & 0x20) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_121;
  }

LABEL_120:
  v65 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_47:
    v64 = 2654435761 * self->_rfcFrameIndex;
    if ((v4 & 0x400) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_122;
  }

LABEL_121:
  v64 = 0;
  if ((v4 & 0x400) != 0)
  {
LABEL_48:
    v63 = 2654435761 * self->_bioLockout;
    if ((has & 0x8000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_123;
  }

LABEL_122:
  v63 = 0;
  if ((has & 0x8000000) != 0)
  {
LABEL_49:
    v62 = 2654435761 * self->_cameraErr;
    if ((v4 & 0x4000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_124;
  }

LABEL_123:
  v62 = 0;
  if ((v4 & 0x4000000) != 0)
  {
LABEL_50:
    v61 = 2654435761 * self->_matchForUnlock;
    if ((has & 0x4000000000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_125;
  }

LABEL_124:
  v61 = 0;
  if ((has & 0x4000000000000) != 0)
  {
LABEL_51:
    v60 = 2654435761 * self->_failedUnlockAttemptsFromFD;
    if ((has & 0x2000000000000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_126;
  }

LABEL_125:
  v60 = 0;
  if ((has & 0x2000000000000) != 0)
  {
LABEL_52:
    v59 = 2654435761 * self->_failedUnlockAttemptsFromBiocheck;
    if ((has & 0x1000000000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_127;
  }

LABEL_126:
  v59 = 0;
  if ((has & 0x1000000000000) != 0)
  {
LABEL_53:
    v58 = 2654435761 * self->_failedMatchAttemptsFromFD;
    if ((has & 0x800000000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_128;
  }

LABEL_127:
  v58 = 0;
  if ((has & 0x800000000000) != 0)
  {
LABEL_54:
    v57 = 2654435761 * self->_failedMatchAttemptsFromBiocheck;
    if ((has & 0x400000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_129;
  }

LABEL_128:
  v57 = 0;
  if ((has & 0x400000) != 0)
  {
LABEL_55:
    v56 = 2654435761 * self->_bioLockoutReason;
    if ((has & 0x10000000000000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_130;
  }

LABEL_129:
  v56 = 0;
  if ((has & 0x10000000000000) != 0)
  {
LABEL_56:
    v55 = 2654435761 * self->_matchFeatureVectorError;
    if ((has & 0x80000000000000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_131;
  }

LABEL_130:
  v55 = 0;
  if ((has & 0x80000000000000) != 0)
  {
LABEL_57:
    v54 = 2654435761 * self->_onlineTemplateAge;
    if ((v4 & 8) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_132;
  }

LABEL_131:
  v54 = 0;
  if ((v4 & 8) != 0)
  {
LABEL_58:
    v53 = 2654435761 * self->_shortTermTemplateAge;
    if ((has & 0x400000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_133;
  }

LABEL_132:
  v53 = 0;
  if ((has & 0x400000000) != 0)
  {
LABEL_59:
    v52 = 2654435761 * self->_faceDetectFaceDistance;
    if ((has & 0x100000000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_134;
  }

LABEL_133:
  v52 = 0;
  if ((has & 0x100000000) != 0)
  {
LABEL_60:
    v51 = 2654435761 * self->_faceDetectCamRectX;
    if ((has & 0x200000000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_135;
  }

LABEL_134:
  v51 = 0;
  if ((has & 0x200000000) != 0)
  {
LABEL_61:
    v50 = 2654435761 * self->_faceDetectCamRectY;
    if ((has & 0x80000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_136;
  }

LABEL_135:
  v50 = 0;
  if ((has & 0x80000000) != 0)
  {
LABEL_62:
    v49 = 2654435761 * self->_faceDetectCamRectW;
    if ((has & 0x40000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_137;
  }

LABEL_136:
  v49 = 0;
  if ((has & 0x40000000) != 0)
  {
LABEL_63:
    v48 = 2654435761 * self->_faceDetectCamRectH;
    if ((has & 0x4000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_138;
  }

LABEL_137:
  v48 = 0;
  if ((has & 0x4000) != 0)
  {
LABEL_64:
    v47 = 2654435761 * self->_bioCheckFaceDistance;
    if ((has & 0x1000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_139;
  }

LABEL_138:
  v47 = 0;
  if ((has & 0x1000) != 0)
  {
LABEL_65:
    v46 = 2654435761 * self->_bioCheckCamRectX;
    if ((has & 0x2000) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_140;
  }

LABEL_139:
  v46 = 0;
  if ((has & 0x2000) != 0)
  {
LABEL_66:
    v45 = 2654435761 * self->_bioCheckCamRectY;
    if ((has & 0x800) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_141;
  }

LABEL_140:
  v45 = 0;
  if ((has & 0x800) != 0)
  {
LABEL_67:
    v44 = 2654435761 * self->_bioCheckCamRectW;
    if ((has & 0x400) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_142;
  }

LABEL_141:
  v44 = 0;
  if ((has & 0x400) != 0)
  {
LABEL_68:
    v43 = 2654435761 * self->_bioCheckCamRectH;
    if ((has & 0x1000000000000000) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_143;
  }

LABEL_142:
  v43 = 0;
  if ((has & 0x1000000000000000) != 0)
  {
LABEL_69:
    v42 = 2654435761 * self->_probingPatternFaceDistance;
    if ((has & 0x400000000000000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_144;
  }

LABEL_143:
  v42 = 0;
  if ((has & 0x400000000000000) != 0)
  {
LABEL_70:
    v41 = 2654435761 * self->_probingPatternCamRectX;
    if ((has & 0x800000000000000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_145;
  }

LABEL_144:
  v41 = 0;
  if ((has & 0x800000000000000) != 0)
  {
LABEL_71:
    v40 = 2654435761 * self->_probingPatternCamRectY;
    if ((has & 0x200000000000000) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_146;
  }

LABEL_145:
  v40 = 0;
  if ((has & 0x200000000000000) != 0)
  {
LABEL_72:
    v39 = 2654435761 * self->_probingPatternCamRectW;
    if ((has & 0x100000000000000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_147;
  }

LABEL_146:
  v39 = 0;
  if ((has & 0x100000000000000) != 0)
  {
LABEL_73:
    v38 = 2654435761 * self->_probingPatternCamRectH;
    if ((v4 & 0x20) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_148;
  }

LABEL_147:
  v38 = 0;
  if ((v4 & 0x20) != 0)
  {
LABEL_74:
    v37 = 2654435761 * self->_asFailure;
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_149;
  }

LABEL_148:
  v37 = 0;
  if ((v4 & 0x80) != 0)
  {
LABEL_75:
    v36 = 2654435761 * self->_autoRetry;
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_150;
  }

LABEL_149:
  v36 = 0;
  if ((v4 & 0x100) != 0)
  {
LABEL_76:
    v35 = 2654435761 * self->_autoRetryAllowed;
    if ((has & 0x20000000) != 0)
    {
      goto LABEL_77;
    }

LABEL_151:
    v34 = 0;
    if ((has & 0x20000000000000) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_152;
  }

LABEL_150:
  v35 = 0;
  if ((has & 0x20000000) == 0)
  {
    goto LABEL_151;
  }

LABEL_77:
  v34 = 2654435761 * self->_deviceOrientation;
  if ((has & 0x20000000000000) != 0)
  {
LABEL_78:
    v33 = 2654435761 * self->_matchIdentityCount;
    goto LABEL_153;
  }

LABEL_152:
  v33 = 0;
LABEL_153:
  v32 = [(NSString *)self->_cameraHWParameters hash];
  v5 = *p_has;
  if ((*p_has & 0x10000000) != 0)
  {
    v31 = 2654435761 * self->_captureMethod;
  }

  else
  {
    v31 = 0;
  }

  v6 = *(p_has + 2);
  if ((v6 & 0x20000) != 0)
  {
    v30 = 2654435761 * self->_engagementInfoFeedbackNoFaceDetected;
    if ((v6 & 0x4000) != 0)
    {
LABEL_158:
      v29 = 2654435761 * self->_engagementInfoFeedbackFaceTooClose;
      if ((v6 & 0x8000) != 0)
      {
        goto LABEL_159;
      }

      goto LABEL_170;
    }
  }

  else
  {
    v30 = 0;
    if ((v6 & 0x4000) != 0)
    {
      goto LABEL_158;
    }
  }

  v29 = 0;
  if ((v6 & 0x8000) != 0)
  {
LABEL_159:
    v28 = 2654435761 * self->_engagementInfoFeedbackFaceTooFar;
    if ((v6 & 0x200000) != 0)
    {
      goto LABEL_160;
    }

    goto LABEL_171;
  }

LABEL_170:
  v28 = 0;
  if ((v6 & 0x200000) != 0)
  {
LABEL_160:
    v7 = 2654435761 * self->_engagementInfoFeedbackPoseOutOfRange;
    if ((v6 & 0x10000) != 0)
    {
      goto LABEL_161;
    }

    goto LABEL_172;
  }

LABEL_171:
  v7 = 0;
  if ((v6 & 0x10000) != 0)
  {
LABEL_161:
    v8 = 2654435761 * self->_engagementInfoFeedbackNoAttention;
    if ((v6 & 0x2000) != 0)
    {
      goto LABEL_162;
    }

    goto LABEL_173;
  }

LABEL_172:
  v8 = 0;
  if ((v6 & 0x2000) != 0)
  {
LABEL_162:
    v9 = 2654435761 * self->_engagementInfoFeedbackFaceOccluded;
    if ((v6 & 0x1000) != 0)
    {
      goto LABEL_163;
    }

    goto LABEL_174;
  }

LABEL_173:
  v9 = 0;
  if ((v6 & 0x1000) != 0)
  {
LABEL_163:
    v10 = 2654435761 * self->_engagementInfoFeedbackCameraObstructed;
    if ((v6 & 0x80000) != 0)
    {
      goto LABEL_164;
    }

    goto LABEL_175;
  }

LABEL_174:
  v10 = 0;
  if ((v6 & 0x80000) != 0)
  {
LABEL_164:
    v11 = 2654435761 * self->_engagementInfoFeedbackPartialOutOfFOV;
    if ((v6 & 0x800) != 0)
    {
      goto LABEL_165;
    }

    goto LABEL_176;
  }

LABEL_175:
  v11 = 0;
  if ((v6 & 0x800) != 0)
  {
LABEL_165:
    v12 = 2654435761 * self->_combinedSequenceEnabled;
    if ((v5 & 8) != 0)
    {
      goto LABEL_166;
    }

LABEL_177:
    v13 = 0;
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_167;
    }

    goto LABEL_178;
  }

LABEL_176:
  v12 = 0;
  if ((v5 & 8) == 0)
  {
    goto LABEL_177;
  }

LABEL_166:
  v13 = 2654435761u * self->_overallTimeWithRetries;
  if ((v6 & 0x200) != 0)
  {
LABEL_167:
    v14 = 2654435761 * self->_autoRetryEnabled;
    goto LABEL_179;
  }

LABEL_178:
  v14 = 0;
LABEL_179:
  v15 = PBRepeatedUInt64Hash();
  v16 = *(p_has + 2);
  if ((v16 & 0x800000) != 0)
  {
    v17 = 2654435761 * self->_matchCancelled;
    if ((v16 & 0x100000) != 0)
    {
      goto LABEL_181;
    }
  }

  else
  {
    v17 = 0;
    if ((v16 & 0x100000) != 0)
    {
LABEL_181:
      v18 = 2654435761 * self->_engagementInfoFeedbackPoseMarginal;
      goto LABEL_184;
    }
  }

  v18 = 0;
LABEL_184:
  v19 = *p_has;
  if ((*p_has & 0x80000000000) != 0)
  {
    v20 = 2654435761 * self->_faceOrientation;
    if ((v19 & 0x100000000000) != 0)
    {
LABEL_186:
      v21 = 2654435761 * self->_facePitch;
      if ((v19 & 0x400000000000) != 0)
      {
        goto LABEL_187;
      }

      goto LABEL_194;
    }
  }

  else
  {
    v20 = 0;
    if ((v19 & 0x100000000000) != 0)
    {
      goto LABEL_186;
    }
  }

  v21 = 0;
  if ((v19 & 0x400000000000) != 0)
  {
LABEL_187:
    v22 = 2654435761 * self->_faceYaw;
    if ((v19 & 0x200000000000) != 0)
    {
      goto LABEL_188;
    }

    goto LABEL_195;
  }

LABEL_194:
  v22 = 0;
  if ((v19 & 0x200000000000) != 0)
  {
LABEL_188:
    v23 = 2654435761 * self->_faceRoll;
    if ((v19 & 0x80) != 0)
    {
      goto LABEL_189;
    }

    goto LABEL_196;
  }

LABEL_195:
  v23 = 0;
  if ((v19 & 0x80) != 0)
  {
LABEL_189:
    v24 = 2654435761u * self->_timeSinceSleep;
    if ((v16 & 0x40000) != 0)
    {
      goto LABEL_190;
    }

LABEL_197:
    v25 = 0;
    if ((v19 & 0x40000000000000) != 0)
    {
      goto LABEL_191;
    }

LABEL_198:
    v26 = 0;
    return v106 ^ v107 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v17 ^ v18 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26;
  }

LABEL_196:
  v24 = 0;
  if ((v16 & 0x40000) == 0)
  {
    goto LABEL_197;
  }

LABEL_190:
  v25 = 2654435761 * self->_engagementInfoFeedbackNoseAndMouthOccluded;
  if ((v19 & 0x40000000000000) == 0)
  {
    goto LABEL_198;
  }

LABEL_191:
  v26 = 2654435761 * self->_matchType;
  return v106 ^ v107 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v17 ^ v18 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy + 380;
  if (fromCopy[381])
  {
    self->_timestamp = *(fromCopy + 12);
    *&self->_has |= 0x100uLL;
  }

  if ((fromCopy[391] & 0x20) != 0)
  {
    self->_overallResult = fromCopy[377];
    *(&self->_has + 2) |= 0x20000000u;
  }

  v6 = *v5;
  if ((*v5 & 4) != 0)
  {
    self->_overallTime = *(fromCopy + 6);
    *&self->_has |= 4uLL;
    v6 = *(fromCopy + 380);
    if ((v6 & 2) == 0)
    {
LABEL_7:
      if ((v6 & 0x20000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_140;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_faceDetectEndTime = *(fromCopy + 5);
  *&self->_has |= 2uLL;
  v6 = *(fromCopy + 380);
  if ((v6 & 0x20000000000) == 0)
  {
LABEL_8:
    if ((v6 & 0x800000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_141;
  }

LABEL_140:
  self->_faceDetectResult = *(fromCopy + 61);
  *&self->_has |= 0x20000000000uLL;
  v6 = *(fromCopy + 380);
  if ((v6 & 0x800000000) == 0)
  {
LABEL_9:
    if ((v6 & 0x2000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_142;
  }

LABEL_141:
  self->_faceDetectFrameCount = *(fromCopy + 55);
  *&self->_has |= 0x800000000uLL;
  v6 = *(fromCopy + 380);
  if ((v6 & 0x2000000000) == 0)
  {
LABEL_10:
    if ((v6 & 0x4000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_143;
  }

LABEL_142:
  self->_faceDetectFrameFloodCount = *(fromCopy + 57);
  *&self->_has |= 0x2000000000uLL;
  v6 = *(fromCopy + 380);
  if ((v6 & 0x4000000000) == 0)
  {
LABEL_11:
    if ((v6 & 0x1000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_144;
  }

LABEL_143:
  self->_faceDetectFrameSparseCount = *(fromCopy + 58);
  *&self->_has |= 0x4000000000uLL;
  v6 = *(fromCopy + 380);
  if ((v6 & 0x1000000000) == 0)
  {
LABEL_12:
    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_145;
  }

LABEL_144:
  self->_faceDetectFrameDenseCount = *(fromCopy + 56);
  *&self->_has |= 0x1000000000uLL;
  v6 = *(fromCopy + 380);
  if ((v6 & 1) == 0)
  {
LABEL_13:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_146;
  }

LABEL_145:
  self->_bioCheckEndTime = *(fromCopy + 4);
  *&self->_has |= 1uLL;
  v6 = *(fromCopy + 380);
  if ((v6 & 0x200000) == 0)
  {
LABEL_14:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_147;
  }

LABEL_146:
  self->_bioCheckResult = *(fromCopy + 38);
  *&self->_has |= 0x200000uLL;
  v6 = *(fromCopy + 380);
  if ((v6 & 0x8000) == 0)
  {
LABEL_15:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_148;
  }

LABEL_147:
  self->_bioCheckFrameCount = *(fromCopy + 32);
  *&self->_has |= 0x8000uLL;
  v6 = *(fromCopy + 380);
  if ((v6 & 0x20000) == 0)
  {
LABEL_16:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_149;
  }

LABEL_148:
  self->_bioCheckFrameFloodCount = *(fromCopy + 34);
  *&self->_has |= 0x20000uLL;
  v6 = *(fromCopy + 380);
  if ((v6 & 0x40000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_150;
  }

LABEL_149:
  self->_bioCheckFrameSparseCount = *(fromCopy + 35);
  *&self->_has |= 0x40000uLL;
  v6 = *(fromCopy + 380);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_150:
  self->_bioCheckFrameDenseCount = *(fromCopy + 33);
  *&self->_has |= 0x10000uLL;
  if ((*(fromCopy + 380) & 0x10) != 0)
  {
LABEL_19:
    self->_probingPatternEndTime = *(fromCopy + 8);
    *&self->_has |= 0x10uLL;
  }

LABEL_20:
  if ((fromCopy[388] & 2) != 0)
  {
    self->_probingPatternResult = *(fromCopy + 85);
    *(&self->_has + 2) |= 2u;
  }

  v7 = *v5;
  if ((*v5 & 0x2000000000000000) != 0)
  {
    self->_probingPatternFrameCount = *(fromCopy + 81);
    *&self->_has |= 0x2000000000000000uLL;
    v7 = *(fromCopy + 380);
  }

  if (v7 < 0)
  {
    self->_probingPatternFrameFloodCount = *(fromCopy + 83);
    *&self->_has |= 0x8000000000000000;
  }

  if (fromCopy[388])
  {
    self->_probingPatternFrameSparseCount = *(fromCopy + 84);
    *(&self->_has + 2) |= 1u;
  }

  v8 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    self->_probingPatternFrameDenseCount = *(fromCopy + 82);
    *&self->_has |= 0x4000000000000000uLL;
    v8 = *(fromCopy + 380);
  }

  if ((v8 & 0x200) != 0)
  {
    self->_ambientLux = *(fromCopy + 26);
    *&self->_has |= 0x200uLL;
  }

  v9 = *(fromCopy + 97);
  if (v9 < 0)
  {
    self->_probingPatternFailure = fromCopy[379];
    *(&self->_has + 2) |= 0x80000000;
    v9 = *(fromCopy + 97);
    if ((v9 & 0x8000000) == 0)
    {
LABEL_34:
      if ((v9 & 0x1000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_203;
    }
  }

  else if ((v9 & 0x8000000) == 0)
  {
    goto LABEL_34;
  }

  self->_matcherFailure = fromCopy[375];
  *(&self->_has + 2) |= 0x8000000u;
  v9 = *(fromCopy + 97);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_204;
  }

LABEL_203:
  self->_matchDepthFailure = fromCopy[372];
  *(&self->_has + 2) |= 0x1000000u;
  v9 = *(fromCopy + 97);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_205;
  }

LABEL_204:
  self->_matchFloodFailure = fromCopy[373];
  *(&self->_has + 2) |= 0x2000000u;
  v9 = *(fromCopy + 97);
  if ((v9 & 0x40) == 0)
  {
LABEL_37:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_206;
  }

LABEL_205:
  self->_asFloodFailure = fromCopy[354];
  *(&self->_has + 2) |= 0x40u;
  v9 = *(fromCopy + 97);
  if ((v9 & 0x10) == 0)
  {
LABEL_38:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_207;
  }

LABEL_206:
  self->_asDepthFailure = fromCopy[352];
  *(&self->_has + 2) |= 0x10u;
  v9 = *(fromCopy + 97);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_207:
  self->_onlineTemplateUpdated = fromCopy[376];
  *(&self->_has + 2) |= 0x10000000u;
  if ((*(fromCopy + 97) & 0x40000000) != 0)
  {
LABEL_40:
    self->_passcodeChallengeAllowed = fromCopy[378];
    *(&self->_has + 2) |= 0x40000000u;
  }

LABEL_41:
  if ((fromCopy[386] & 8) != 0)
  {
    self->_featureGenerationError = *(fromCopy + 71);
    *&self->_has |= 0x8000000000000uLL;
  }

  if ((fromCopy[388] & 4) != 0)
  {
    self->_sensorTemperature = *(fromCopy + 86);
    *(&self->_has + 2) |= 4u;
  }

  if ((fromCopy[385] & 4) != 0)
  {
    self->_faceDistance = *(fromCopy + 62);
    *&self->_has |= 0x40000000000uLL;
  }

  if ((fromCopy[390] & 0x40) != 0)
  {
    self->_hasOcclusion = fromCopy[370];
    *(&self->_has + 2) |= 0x400000u;
  }

  v10 = *v5;
  if ((*v5 & 0x2000000) != 0)
  {
    self->_camRectX = *(fromCopy + 42);
    *&self->_has |= 0x2000000uLL;
    v10 = *(fromCopy + 380);
    if ((v10 & 0x4000000) == 0)
    {
LABEL_51:
      if ((v10 & 0x1000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_154;
    }
  }

  else if ((v10 & 0x4000000) == 0)
  {
    goto LABEL_51;
  }

  self->_camRectY = *(fromCopy + 43);
  *&self->_has |= 0x4000000uLL;
  v10 = *(fromCopy + 380);
  if ((v10 & 0x1000000) == 0)
  {
LABEL_52:
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_155;
  }

LABEL_154:
  self->_camRectW = *(fromCopy + 41);
  *&self->_has |= 0x1000000uLL;
  v10 = *(fromCopy + 380);
  if ((v10 & 0x800000) == 0)
  {
LABEL_53:
    if ((v10 & 0x10000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_156;
  }

LABEL_155:
  self->_camRectH = *(fromCopy + 40);
  *&self->_has |= 0x800000uLL;
  v10 = *(fromCopy + 380);
  if ((v10 & 0x10000000000) == 0)
  {
LABEL_54:
    if ((v10 & 0x8000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_157;
  }

LABEL_156:
  self->_faceDetectPPMRequestedBudget = *(fromCopy + 60);
  *&self->_has |= 0x10000000000uLL;
  v10 = *(fromCopy + 380);
  if ((v10 & 0x8000000000) == 0)
  {
LABEL_55:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_158;
  }

LABEL_157:
  self->_faceDetectPPMAllocatedBudget = *(fromCopy + 59);
  *&self->_has |= 0x8000000000uLL;
  v10 = *(fromCopy + 380);
  if ((v10 & 0x100000) == 0)
  {
LABEL_56:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_159;
  }

LABEL_158:
  self->_bioCheckPPMRequestedBudget = *(fromCopy + 37);
  *&self->_has |= 0x100000uLL;
  v10 = *(fromCopy + 380);
  if ((v10 & 0x80000) == 0)
  {
LABEL_57:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_160;
  }

LABEL_159:
  self->_bioCheckPPMAllocatedBudget = *(fromCopy + 36);
  *&self->_has |= 0x80000uLL;
  v10 = *(fromCopy + 380);
  if ((v10 & 0x40) == 0)
  {
LABEL_58:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_160:
  self->_rfcSetIndex = *(fromCopy + 10);
  *&self->_has |= 0x40uLL;
  if ((*(fromCopy + 380) & 0x20) != 0)
  {
LABEL_59:
    self->_rfcFrameIndex = *(fromCopy + 9);
    *&self->_has |= 0x20uLL;
  }

LABEL_60:
  if ((fromCopy[389] & 4) != 0)
  {
    self->_bioLockout = fromCopy[358];
    *(&self->_has + 2) |= 0x400u;
  }

  if ((fromCopy[383] & 8) != 0)
  {
    self->_cameraErr = *(fromCopy + 44);
    *&self->_has |= 0x8000000uLL;
  }

  if ((fromCopy[391] & 4) != 0)
  {
    self->_matchForUnlock = fromCopy[374];
    *(&self->_has + 2) |= 0x4000000u;
  }

  v11 = *v5;
  if ((*v5 & 0x4000000000000) != 0)
  {
    self->_failedUnlockAttemptsFromFD = *(fromCopy + 70);
    *&self->_has |= 0x4000000000000uLL;
    v11 = *(fromCopy + 380);
    if ((v11 & 0x2000000000000) == 0)
    {
LABEL_68:
      if ((v11 & 0x1000000000000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_164;
    }
  }

  else if ((v11 & 0x2000000000000) == 0)
  {
    goto LABEL_68;
  }

  self->_failedUnlockAttemptsFromBiocheck = *(fromCopy + 69);
  *&self->_has |= 0x2000000000000uLL;
  v11 = *(fromCopy + 380);
  if ((v11 & 0x1000000000000) == 0)
  {
LABEL_69:
    if ((v11 & 0x800000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_165;
  }

LABEL_164:
  self->_failedMatchAttemptsFromFD = *(fromCopy + 68);
  *&self->_has |= 0x1000000000000uLL;
  v11 = *(fromCopy + 380);
  if ((v11 & 0x800000000000) == 0)
  {
LABEL_70:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_166;
  }

LABEL_165:
  self->_failedMatchAttemptsFromBiocheck = *(fromCopy + 67);
  *&self->_has |= 0x800000000000uLL;
  v11 = *(fromCopy + 380);
  if ((v11 & 0x400000) == 0)
  {
LABEL_71:
    if ((v11 & 0x10000000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_167;
  }

LABEL_166:
  self->_bioLockoutReason = *(fromCopy + 39);
  *&self->_has |= 0x400000uLL;
  v11 = *(fromCopy + 380);
  if ((v11 & 0x10000000000000) == 0)
  {
LABEL_72:
    if ((v11 & 0x80000000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_167:
  self->_matchFeatureVectorError = *(fromCopy + 72);
  *&self->_has |= 0x10000000000000uLL;
  if ((*(fromCopy + 380) & 0x80000000000000) != 0)
  {
LABEL_73:
    self->_onlineTemplateAge = *(fromCopy + 75);
    *&self->_has |= 0x80000000000000uLL;
  }

LABEL_74:
  if ((fromCopy[388] & 8) != 0)
  {
    self->_shortTermTemplateAge = *(fromCopy + 87);
    *(&self->_has + 2) |= 8u;
  }

  v12 = *v5;
  if ((*v5 & 0x400000000) != 0)
  {
    self->_faceDetectFaceDistance = *(fromCopy + 54);
    *&self->_has |= 0x400000000uLL;
    v12 = *(fromCopy + 380);
    if ((v12 & 0x100000000) == 0)
    {
LABEL_78:
      if ((v12 & 0x200000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_171;
    }
  }

  else if ((v12 & 0x100000000) == 0)
  {
    goto LABEL_78;
  }

  self->_faceDetectCamRectX = *(fromCopy + 52);
  *&self->_has |= 0x100000000uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x200000000) == 0)
  {
LABEL_79:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_172;
  }

LABEL_171:
  self->_faceDetectCamRectY = *(fromCopy + 53);
  *&self->_has |= 0x200000000uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_80:
    if ((v12 & 0x40000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_173;
  }

LABEL_172:
  self->_faceDetectCamRectW = *(fromCopy + 51);
  *&self->_has |= 0x80000000uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x40000000) == 0)
  {
LABEL_81:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_174;
  }

LABEL_173:
  self->_faceDetectCamRectH = *(fromCopy + 50);
  *&self->_has |= 0x40000000uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x4000) == 0)
  {
LABEL_82:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_175;
  }

LABEL_174:
  self->_bioCheckFaceDistance = *(fromCopy + 31);
  *&self->_has |= 0x4000uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x1000) == 0)
  {
LABEL_83:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_176;
  }

LABEL_175:
  self->_bioCheckCamRectX = *(fromCopy + 29);
  *&self->_has |= 0x1000uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x2000) == 0)
  {
LABEL_84:
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_177;
  }

LABEL_176:
  self->_bioCheckCamRectY = *(fromCopy + 30);
  *&self->_has |= 0x2000uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x800) == 0)
  {
LABEL_85:
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_178;
  }

LABEL_177:
  self->_bioCheckCamRectW = *(fromCopy + 28);
  *&self->_has |= 0x800uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x400) == 0)
  {
LABEL_86:
    if ((v12 & 0x1000000000000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_179;
  }

LABEL_178:
  self->_bioCheckCamRectH = *(fromCopy + 27);
  *&self->_has |= 0x400uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x1000000000000000) == 0)
  {
LABEL_87:
    if ((v12 & 0x400000000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_180;
  }

LABEL_179:
  self->_probingPatternFaceDistance = *(fromCopy + 80);
  *&self->_has |= 0x1000000000000000uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x400000000000000) == 0)
  {
LABEL_88:
    if ((v12 & 0x800000000000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_181;
  }

LABEL_180:
  self->_probingPatternCamRectX = *(fromCopy + 78);
  *&self->_has |= 0x400000000000000uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x800000000000000) == 0)
  {
LABEL_89:
    if ((v12 & 0x200000000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_182;
  }

LABEL_181:
  self->_probingPatternCamRectY = *(fromCopy + 79);
  *&self->_has |= 0x800000000000000uLL;
  v12 = *(fromCopy + 380);
  if ((v12 & 0x200000000000000) == 0)
  {
LABEL_90:
    if ((v12 & 0x100000000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_182:
  self->_probingPatternCamRectW = *(fromCopy + 77);
  *&self->_has |= 0x200000000000000uLL;
  if ((*(fromCopy + 380) & 0x100000000000000) != 0)
  {
LABEL_91:
    self->_probingPatternCamRectH = *(fromCopy + 76);
    *&self->_has |= 0x100000000000000uLL;
  }

LABEL_92:
  v13 = *(fromCopy + 97);
  if ((v13 & 0x20) != 0)
  {
    self->_asFailure = fromCopy[353];
    *(&self->_has + 2) |= 0x20u;
    v13 = *(fromCopy + 97);
    if ((v13 & 0x80) == 0)
    {
LABEL_94:
      if ((v13 & 0x100) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_94;
  }

  self->_autoRetry = fromCopy[355];
  *(&self->_has + 2) |= 0x80u;
  if ((*(fromCopy + 97) & 0x100) != 0)
  {
LABEL_95:
    self->_autoRetryAllowed = fromCopy[356];
    *(&self->_has + 2) |= 0x100u;
  }

LABEL_96:
  v14 = *v5;
  if ((*v5 & 0x20000000) != 0)
  {
    self->_deviceOrientation = *(fromCopy + 49);
    *&self->_has |= 0x20000000uLL;
    v14 = *(fromCopy + 380);
  }

  if ((v14 & 0x20000000000000) != 0)
  {
    self->_matchIdentityCount = *(fromCopy + 73);
    *&self->_has |= 0x20000000000000uLL;
  }

  v21 = fromCopy;
  if (*(fromCopy + 23))
  {
    [(AWDBiometricKitMatchAttempt *)self setCameraHWParameters:?];
    fromCopy = v21;
  }

  if ((v5[3] & 0x10) != 0)
  {
    self->_captureMethod = *(fromCopy + 48);
    *&self->_has |= 0x10000000uLL;
  }

  v15 = *(v5 + 2);
  if ((v15 & 0x20000) != 0)
  {
    self->_engagementInfoFeedbackNoFaceDetected = fromCopy[365];
    *(&self->_has + 2) |= 0x20000u;
    v15 = *(v5 + 2);
    if ((v15 & 0x4000) == 0)
    {
LABEL_106:
      if ((v15 & 0x8000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_189;
    }
  }

  else if ((v15 & 0x4000) == 0)
  {
    goto LABEL_106;
  }

  self->_engagementInfoFeedbackFaceTooClose = fromCopy[362];
  *(&self->_has + 2) |= 0x4000u;
  v15 = *(v5 + 2);
  if ((v15 & 0x8000) == 0)
  {
LABEL_107:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_190;
  }

LABEL_189:
  self->_engagementInfoFeedbackFaceTooFar = fromCopy[363];
  *(&self->_has + 2) |= 0x8000u;
  v15 = *(v5 + 2);
  if ((v15 & 0x200000) == 0)
  {
LABEL_108:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_191;
  }

LABEL_190:
  self->_engagementInfoFeedbackPoseOutOfRange = fromCopy[369];
  *(&self->_has + 2) |= 0x200000u;
  v15 = *(v5 + 2);
  if ((v15 & 0x10000) == 0)
  {
LABEL_109:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_192;
  }

LABEL_191:
  self->_engagementInfoFeedbackNoAttention = fromCopy[364];
  *(&self->_has + 2) |= 0x10000u;
  v15 = *(v5 + 2);
  if ((v15 & 0x2000) == 0)
  {
LABEL_110:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_193;
  }

LABEL_192:
  self->_engagementInfoFeedbackFaceOccluded = fromCopy[361];
  *(&self->_has + 2) |= 0x2000u;
  v15 = *(v5 + 2);
  if ((v15 & 0x1000) == 0)
  {
LABEL_111:
    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_194;
  }

LABEL_193:
  self->_engagementInfoFeedbackCameraObstructed = fromCopy[360];
  *(&self->_has + 2) |= 0x1000u;
  v15 = *(v5 + 2);
  if ((v15 & 0x80000) == 0)
  {
LABEL_112:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

LABEL_194:
  self->_engagementInfoFeedbackPartialOutOfFOV = fromCopy[367];
  *(&self->_has + 2) |= 0x80000u;
  if ((*(v5 + 2) & 0x800) != 0)
  {
LABEL_113:
    self->_combinedSequenceEnabled = fromCopy[359];
    *(&self->_has + 2) |= 0x800u;
  }

LABEL_114:
  if ((*v5 & 8) != 0)
  {
    self->_overallTimeWithRetries = *(fromCopy + 7);
    *&self->_has |= 8uLL;
  }

  if ((v5[9] & 2) != 0)
  {
    self->_autoRetryEnabled = fromCopy[357];
    *(&self->_has + 2) |= 0x200u;
  }

  identityCreationTimesCount = [fromCopy identityCreationTimesCount];
  if (identityCreationTimesCount)
  {
    v17 = identityCreationTimesCount;
    for (i = 0; i != v17; ++i)
    {
      -[AWDBiometricKitMatchAttempt addIdentityCreationTime:](self, "addIdentityCreationTime:", [v21 identityCreationTimeAtIndex:i]);
    }
  }

  v19 = *(v5 + 2);
  if ((v19 & 0x800000) != 0)
  {
    self->_matchCancelled = v21[371];
    *(&self->_has + 2) |= 0x800000u;
    v19 = *(v5 + 2);
  }

  if ((v19 & 0x100000) != 0)
  {
    self->_engagementInfoFeedbackPoseMarginal = v21[368];
    *(&self->_has + 2) |= 0x100000u;
  }

  v20 = *v5;
  if ((*v5 & 0x80000000000) != 0)
  {
    self->_faceOrientation = *(v21 + 63);
    *&self->_has |= 0x80000000000uLL;
    v20 = *(v21 + 380);
    if ((v20 & 0x100000000000) == 0)
    {
LABEL_127:
      if ((v20 & 0x400000000000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_198;
    }
  }

  else if ((v20 & 0x100000000000) == 0)
  {
    goto LABEL_127;
  }

  self->_facePitch = *(v21 + 64);
  *&self->_has |= 0x100000000000uLL;
  v20 = *(v21 + 380);
  if ((v20 & 0x400000000000) == 0)
  {
LABEL_128:
    if ((v20 & 0x200000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_199;
  }

LABEL_198:
  self->_faceYaw = *(v21 + 66);
  *&self->_has |= 0x400000000000uLL;
  v20 = *(v21 + 380);
  if ((v20 & 0x200000000000) == 0)
  {
LABEL_129:
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

LABEL_199:
  self->_faceRoll = *(v21 + 65);
  *&self->_has |= 0x200000000000uLL;
  if ((*(v21 + 380) & 0x80) != 0)
  {
LABEL_130:
    self->_timeSinceSleep = *(v21 + 11);
    *&self->_has |= 0x80uLL;
  }

LABEL_131:
  if ((v5[10] & 4) != 0)
  {
    self->_engagementInfoFeedbackNoseAndMouthOccluded = v21[366];
    *(&self->_has + 2) |= 0x40000u;
  }

  if ((v5[6] & 0x40) != 0)
  {
    self->_matchType = *(v21 + 74);
    *&self->_has |= 0x40000000000000uLL;
  }
}

@end