@interface AWDBiometricKitMatchAttempt
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)identityCreationTimeAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAmbientLux:(BOOL)a3;
- (void)setHasAsDepthFailure:(BOOL)a3;
- (void)setHasAsFailure:(BOOL)a3;
- (void)setHasAsFloodFailure:(BOOL)a3;
- (void)setHasAutoRetry:(BOOL)a3;
- (void)setHasAutoRetryAllowed:(BOOL)a3;
- (void)setHasAutoRetryEnabled:(BOOL)a3;
- (void)setHasBioCheckCamRectH:(BOOL)a3;
- (void)setHasBioCheckCamRectW:(BOOL)a3;
- (void)setHasBioCheckCamRectX:(BOOL)a3;
- (void)setHasBioCheckCamRectY:(BOOL)a3;
- (void)setHasBioCheckFaceDistance:(BOOL)a3;
- (void)setHasBioCheckFrameCount:(BOOL)a3;
- (void)setHasBioCheckFrameDenseCount:(BOOL)a3;
- (void)setHasBioCheckFrameFloodCount:(BOOL)a3;
- (void)setHasBioCheckFrameSparseCount:(BOOL)a3;
- (void)setHasBioCheckPPMAllocatedBudget:(BOOL)a3;
- (void)setHasBioCheckPPMRequestedBudget:(BOOL)a3;
- (void)setHasBioCheckResult:(BOOL)a3;
- (void)setHasBioLockout:(BOOL)a3;
- (void)setHasBioLockoutReason:(BOOL)a3;
- (void)setHasCamRectH:(BOOL)a3;
- (void)setHasCamRectW:(BOOL)a3;
- (void)setHasCamRectX:(BOOL)a3;
- (void)setHasCamRectY:(BOOL)a3;
- (void)setHasCameraErr:(BOOL)a3;
- (void)setHasCaptureMethod:(BOOL)a3;
- (void)setHasCombinedSequenceEnabled:(BOOL)a3;
- (void)setHasDeviceOrientation:(BOOL)a3;
- (void)setHasEngagementInfoFeedbackCameraObstructed:(BOOL)a3;
- (void)setHasEngagementInfoFeedbackFaceOccluded:(BOOL)a3;
- (void)setHasEngagementInfoFeedbackFaceTooClose:(BOOL)a3;
- (void)setHasEngagementInfoFeedbackFaceTooFar:(BOOL)a3;
- (void)setHasEngagementInfoFeedbackNoAttention:(BOOL)a3;
- (void)setHasEngagementInfoFeedbackNoFaceDetected:(BOOL)a3;
- (void)setHasEngagementInfoFeedbackNoseAndMouthOccluded:(BOOL)a3;
- (void)setHasEngagementInfoFeedbackPartialOutOfFOV:(BOOL)a3;
- (void)setHasEngagementInfoFeedbackPoseMarginal:(BOOL)a3;
- (void)setHasEngagementInfoFeedbackPoseOutOfRange:(BOOL)a3;
- (void)setHasFaceDetectCamRectH:(BOOL)a3;
- (void)setHasFaceDetectCamRectW:(BOOL)a3;
- (void)setHasFaceDetectCamRectX:(BOOL)a3;
- (void)setHasFaceDetectCamRectY:(BOOL)a3;
- (void)setHasFaceDetectEndTime:(BOOL)a3;
- (void)setHasFaceDetectFaceDistance:(BOOL)a3;
- (void)setHasFaceDetectFrameCount:(BOOL)a3;
- (void)setHasFaceDetectFrameDenseCount:(BOOL)a3;
- (void)setHasFaceDetectFrameFloodCount:(BOOL)a3;
- (void)setHasFaceDetectFrameSparseCount:(BOOL)a3;
- (void)setHasFaceDetectPPMAllocatedBudget:(BOOL)a3;
- (void)setHasFaceDetectPPMRequestedBudget:(BOOL)a3;
- (void)setHasFaceDetectResult:(BOOL)a3;
- (void)setHasFaceDistance:(BOOL)a3;
- (void)setHasFaceOrientation:(BOOL)a3;
- (void)setHasFacePitch:(BOOL)a3;
- (void)setHasFaceRoll:(BOOL)a3;
- (void)setHasFaceYaw:(BOOL)a3;
- (void)setHasFailedMatchAttemptsFromBiocheck:(BOOL)a3;
- (void)setHasFailedMatchAttemptsFromFD:(BOOL)a3;
- (void)setHasFailedUnlockAttemptsFromBiocheck:(BOOL)a3;
- (void)setHasFailedUnlockAttemptsFromFD:(BOOL)a3;
- (void)setHasFeatureGenerationError:(BOOL)a3;
- (void)setHasHasOcclusion:(BOOL)a3;
- (void)setHasMatchCancelled:(BOOL)a3;
- (void)setHasMatchDepthFailure:(BOOL)a3;
- (void)setHasMatchFeatureVectorError:(BOOL)a3;
- (void)setHasMatchFloodFailure:(BOOL)a3;
- (void)setHasMatchForUnlock:(BOOL)a3;
- (void)setHasMatchIdentityCount:(BOOL)a3;
- (void)setHasMatchType:(BOOL)a3;
- (void)setHasMatcherFailure:(BOOL)a3;
- (void)setHasOnlineTemplateAge:(BOOL)a3;
- (void)setHasOnlineTemplateUpdated:(BOOL)a3;
- (void)setHasOverallResult:(BOOL)a3;
- (void)setHasOverallTime:(BOOL)a3;
- (void)setHasOverallTimeWithRetries:(BOOL)a3;
- (void)setHasPasscodeChallengeAllowed:(BOOL)a3;
- (void)setHasProbingPatternCamRectH:(BOOL)a3;
- (void)setHasProbingPatternCamRectW:(BOOL)a3;
- (void)setHasProbingPatternCamRectX:(BOOL)a3;
- (void)setHasProbingPatternCamRectY:(BOOL)a3;
- (void)setHasProbingPatternEndTime:(BOOL)a3;
- (void)setHasProbingPatternFaceDistance:(BOOL)a3;
- (void)setHasProbingPatternFailure:(BOOL)a3;
- (void)setHasProbingPatternFrameCount:(BOOL)a3;
- (void)setHasProbingPatternFrameDenseCount:(BOOL)a3;
- (void)setHasProbingPatternFrameFloodCount:(BOOL)a3;
- (void)setHasProbingPatternResult:(BOOL)a3;
- (void)setHasRfcFrameIndex:(BOOL)a3;
- (void)setHasRfcSetIndex:(BOOL)a3;
- (void)setHasSensorTemperature:(BOOL)a3;
- (void)setHasShortTermTemplateAge:(BOOL)a3;
- (void)setHasTimeSinceSleep:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDBiometricKitMatchAttempt

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = AWDBiometricKitMatchAttempt;
  [(AWDBiometricKitMatchAttempt *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasOverallResult:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xDFFFFFFF | v3;
}

- (void)setHasOverallTime:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasFaceDetectEndTime:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasFaceDetectResult:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectFrameCount:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasFaceDetectFrameFloodCount:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectFrameSparseCount:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectFrameDenseCount:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasBioCheckResult:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasBioCheckFrameCount:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasBioCheckFrameFloodCount:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasBioCheckFrameSparseCount:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasBioCheckFrameDenseCount:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasProbingPatternEndTime:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasProbingPatternResult:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFFD | v3;
}

- (void)setHasProbingPatternFrameCount:(BOOL)a3
{
  v3 = 0x2000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProbingPatternFrameFloodCount:(BOOL)a3
{
  v3 = 0x8000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasProbingPatternFrameDenseCount:(BOOL)a3
{
  v3 = 0x4000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAmbientLux:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasProbingPatternFailure:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = v3 & 0x80000000 | *(&self->_has + 2) & 0x7FFFFFFF;
}

- (void)setHasMatcherFailure:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xF7FFFFFF | v3;
}

- (void)setHasMatchDepthFailure:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFEFFFFFF | v3;
}

- (void)setHasMatchFloodFailure:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFDFFFFFF | v3;
}

- (void)setHasAsFloodFailure:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFBF | v3;
}

- (void)setHasAsDepthFailure:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFEF | v3;
}

- (void)setHasOnlineTemplateUpdated:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xEFFFFFFF | v3;
}

- (void)setHasPasscodeChallengeAllowed:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xBFFFFFFF | v3;
}

- (void)setHasFeatureGenerationError:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasSensorTemperature:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFFB | v3;
}

- (void)setHasFaceDistance:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasHasOcclusion:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFBFFFFF | v3;
}

- (void)setHasCamRectX:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasCamRectY:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasCamRectW:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasCamRectH:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasFaceDetectPPMRequestedBudget:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectPPMAllocatedBudget:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasBioCheckPPMRequestedBudget:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasBioCheckPPMAllocatedBudget:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasRfcSetIndex:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasRfcFrameIndex:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasBioLockout:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFBFF | v3;
}

- (void)setHasCameraErr:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasMatchForUnlock:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFBFFFFFF | v3;
}

- (void)setHasFailedUnlockAttemptsFromFD:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasFailedUnlockAttemptsFromBiocheck:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasFailedMatchAttemptsFromFD:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasFailedMatchAttemptsFromBiocheck:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasBioLockoutReason:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasMatchFeatureVectorError:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasOnlineTemplateAge:(BOOL)a3
{
  v3 = 0x80000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasShortTermTemplateAge:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFF7 | v3;
}

- (void)setHasFaceDetectFaceDistance:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectCamRectX:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectCamRectY:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasFaceDetectCamRectW:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasFaceDetectCamRectH:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasBioCheckFaceDistance:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasBioCheckCamRectX:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasBioCheckCamRectY:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasBioCheckCamRectW:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasBioCheckCamRectH:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasProbingPatternFaceDistance:(BOOL)a3
{
  v3 = 0x1000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProbingPatternCamRectX:(BOOL)a3
{
  v3 = 0x400000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProbingPatternCamRectY:(BOOL)a3
{
  v3 = 0x800000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProbingPatternCamRectW:(BOOL)a3
{
  v3 = 0x200000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasProbingPatternCamRectH:(BOOL)a3
{
  v3 = 0x100000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAsFailure:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFDF | v3;
}

- (void)setHasAutoRetry:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFF7F | v3;
}

- (void)setHasAutoRetryAllowed:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFEFF | v3;
}

- (void)setHasDeviceOrientation:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasMatchIdentityCount:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCaptureMethod:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasEngagementInfoFeedbackNoFaceDetected:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFDFFFF | v3;
}

- (void)setHasEngagementInfoFeedbackFaceTooClose:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFBFFF | v3;
}

- (void)setHasEngagementInfoFeedbackFaceTooFar:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFF7FFF | v3;
}

- (void)setHasEngagementInfoFeedbackPoseOutOfRange:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFDFFFFF | v3;
}

- (void)setHasEngagementInfoFeedbackNoAttention:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFEFFFF | v3;
}

- (void)setHasEngagementInfoFeedbackFaceOccluded:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFDFFF | v3;
}

- (void)setHasEngagementInfoFeedbackCameraObstructed:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFEFFF | v3;
}

- (void)setHasEngagementInfoFeedbackPartialOutOfFOV:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFF7FFFF | v3;
}

- (void)setHasCombinedSequenceEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFF7FF | v3;
}

- (void)setHasOverallTimeWithRetries:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasAutoRetryEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFDFF | v3;
}

- (unint64_t)identityCreationTimeAtIndex:(unint64_t)a3
{
  p_identityCreationTimes = &self->_identityCreationTimes;
  count = self->_identityCreationTimes.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x29EDB8DD0];
    v7 = *MEMORY[0x29EDB8D10];
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_identityCreationTimes->list[a3];
}

- (void)setHasMatchCancelled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFF7FFFFF | v3;
}

- (void)setHasEngagementInfoFeedbackPoseMarginal:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFEFFFFF | v3;
}

- (void)setHasFaceOrientation:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasFacePitch:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasFaceYaw:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasFaceRoll:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasTimeSinceSleep:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasEngagementInfoFeedbackNoseAndMouthOccluded:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFBFFFF | v3;
}

- (void)setHasMatchType:(BOOL)a3
{
  v3 = 0x40000000000000;
  if (!a3)
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
  v5 = [(AWDBiometricKitMatchAttempt *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  p_has = &self->_has;
  if (*(&self->_has + 1))
  {
    v5 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];
  }

  if ((*(&self->_has + 11) & 0x20) != 0)
  {
    v6 = [MEMORY[0x29EDBA070] numberWithBool:self->_overallResult];
    [v3 setObject:v6 forKey:@"overallResult"];
  }

  v7 = *p_has;
  if ((*p_has & 4) != 0)
  {
    v54 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_overallTime];
    [v3 setObject:v54 forKey:@"overallTime"];

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
  [v3 setObject:v55 forKey:@"faceDetectEndTime"];

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
  [v3 setObject:v56 forKey:@"faceDetectResult"];

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
  [v3 setObject:v57 forKey:@"faceDetectFrameCount"];

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
  [v3 setObject:v58 forKey:@"faceDetectFrameFloodCount"];

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
  [v3 setObject:v59 forKey:@"faceDetectFrameSparseCount"];

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
  [v3 setObject:v60 forKey:@"faceDetectFrameDenseCount"];

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
  [v3 setObject:v61 forKey:@"bioCheckEndTime"];

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
  [v3 setObject:v62 forKey:@"bioCheckResult"];

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
  [v3 setObject:v63 forKey:@"bioCheckFrameCount"];

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
  [v3 setObject:v64 forKey:@"bioCheckFrameFloodCount"];

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
  [v3 setObject:v65 forKey:@"bioCheckFrameSparseCount"];

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
  [v3 setObject:v66 forKey:@"bioCheckFrameDenseCount"];

  if ((*p_has & 0x10) != 0)
  {
LABEL_19:
    v8 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_probingPatternEndTime];
    [v3 setObject:v8 forKey:@"probingPatternEndTime"];
  }

LABEL_20:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    v9 = [MEMORY[0x29EDBA070] numberWithInt:self->_probingPatternResult];
    [v3 setObject:v9 forKey:@"probingPatternResult"];
  }

  v10 = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternFrameCount];
    [v3 setObject:v11 forKey:@"probingPatternFrameCount"];

    v10 = *p_has;
  }

  if (v10 < 0)
  {
    v12 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternFrameFloodCount];
    [v3 setObject:v12 forKey:@"probingPatternFrameFloodCount"];
  }

  if (*(&self->_has + 8))
  {
    v13 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternFrameSparseCount];
    [v3 setObject:v13 forKey:@"probingPatternFrameSparseCount"];
  }

  v14 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternFrameDenseCount];
    [v3 setObject:v15 forKey:@"probingPatternFrameDenseCount"];

    v14 = *p_has;
  }

  if ((v14 & 0x200) != 0)
  {
    v16 = [MEMORY[0x29EDBA070] numberWithInt:self->_ambientLux];
    [v3 setObject:v16 forKey:@"ambientLux"];
  }

  v17 = *(&self->_has + 2);
  if (v17 < 0)
  {
    v110 = [MEMORY[0x29EDBA070] numberWithBool:self->_probingPatternFailure];
    [v3 setObject:v110 forKey:@"probingPatternFailure"];

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
  [v3 setObject:v111 forKey:@"matcherFailure"];

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
  [v3 setObject:v112 forKey:@"matchDepthFailure"];

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
  [v3 setObject:v113 forKey:@"matchFloodFailure"];

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
  [v3 setObject:v114 forKey:@"asFloodFailure"];

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
  [v3 setObject:v115 forKey:@"asDepthFailure"];

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
  [v3 setObject:v116 forKey:@"onlineTemplateUpdated"];

  if ((*(&self->_has + 2) & 0x40000000) != 0)
  {
LABEL_40:
    v18 = [MEMORY[0x29EDBA070] numberWithBool:self->_passcodeChallengeAllowed];
    [v3 setObject:v18 forKey:@"passcodeChallengeAllowed"];
  }

LABEL_41:
  if ((*(&self->_has + 6) & 8) != 0)
  {
    v19 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_featureGenerationError];
    [v3 setObject:v19 forKey:@"featureGenerationError"];
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    v20 = [MEMORY[0x29EDBA070] numberWithInt:self->_sensorTemperature];
    [v3 setObject:v20 forKey:@"sensorTemperature"];
  }

  if ((*(&self->_has + 5) & 4) != 0)
  {
    v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDistance];
    [v3 setObject:v21 forKey:@"faceDistance"];
  }

  if ((*(&self->_has + 10) & 0x40) != 0)
  {
    v22 = [MEMORY[0x29EDBA070] numberWithBool:self->_hasOcclusion];
    [v3 setObject:v22 forKey:@"hasOcclusion"];
  }

  v23 = *p_has;
  if ((*p_has & 0x2000000) != 0)
  {
    v67 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_camRectX];
    [v3 setObject:v67 forKey:@"camRectX"];

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
  [v3 setObject:v68 forKey:@"camRectY"];

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
  [v3 setObject:v69 forKey:@"camRectW"];

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
  [v3 setObject:v70 forKey:@"camRectH"];

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
  [v3 setObject:v71 forKey:@"faceDetectPPMRequestedBudget"];

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
  [v3 setObject:v72 forKey:@"faceDetectPPMAllocatedBudget"];

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
  [v3 setObject:v73 forKey:@"bioCheckPPMRequestedBudget"];

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
  [v3 setObject:v74 forKey:@"bioCheckPPMAllocatedBudget"];

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
  [v3 setObject:v75 forKey:@"rfcSetIndex"];

  if ((*p_has & 0x20) != 0)
  {
LABEL_59:
    v24 = [MEMORY[0x29EDBA070] numberWithLongLong:self->_rfcFrameIndex];
    [v3 setObject:v24 forKey:@"rfcFrameIndex"];
  }

LABEL_60:
  if ((*(&self->_has + 9) & 4) != 0)
  {
    v25 = [MEMORY[0x29EDBA070] numberWithBool:self->_bioLockout];
    [v3 setObject:v25 forKey:@"bioLockout"];
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    v26 = [MEMORY[0x29EDBA070] numberWithInt:self->_cameraErr];
    [v3 setObject:v26 forKey:@"cameraErr"];
  }

  if ((*(&self->_has + 11) & 4) != 0)
  {
    v27 = [MEMORY[0x29EDBA070] numberWithBool:self->_matchForUnlock];
    [v3 setObject:v27 forKey:@"matchForUnlock"];
  }

  v28 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    v76 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_failedUnlockAttemptsFromFD];
    [v3 setObject:v76 forKey:@"failedUnlockAttemptsFromFD"];

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
  [v3 setObject:v77 forKey:@"failedUnlockAttemptsFromBiocheck"];

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
  [v3 setObject:v78 forKey:@"failedMatchAttemptsFromFD"];

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
  [v3 setObject:v79 forKey:@"failedMatchAttemptsFromBiocheck"];

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
  [v3 setObject:v80 forKey:@"bioLockoutReason"];

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
  [v3 setObject:v81 forKey:@"matchFeatureVectorError"];

  if ((*p_has & 0x80000000000000) != 0)
  {
LABEL_73:
    v29 = [MEMORY[0x29EDBA070] numberWithInt:self->_onlineTemplateAge];
    [v3 setObject:v29 forKey:@"onlineTemplateAge"];
  }

LABEL_74:
  if ((*(&self->_has + 8) & 8) != 0)
  {
    v30 = [MEMORY[0x29EDBA070] numberWithInt:self->_shortTermTemplateAge];
    [v3 setObject:v30 forKey:@"shortTermTemplateAge"];
  }

  v31 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    v82 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDetectFaceDistance];
    [v3 setObject:v82 forKey:@"faceDetectFaceDistance"];

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
  [v3 setObject:v83 forKey:@"faceDetectCamRectX"];

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
  [v3 setObject:v84 forKey:@"faceDetectCamRectY"];

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
  [v3 setObject:v85 forKey:@"faceDetectCamRectW"];

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
  [v3 setObject:v86 forKey:@"faceDetectCamRectH"];

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
  [v3 setObject:v87 forKey:@"bioCheckFaceDistance"];

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
  [v3 setObject:v88 forKey:@"bioCheckCamRectX"];

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
  [v3 setObject:v89 forKey:@"bioCheckCamRectY"];

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
  [v3 setObject:v90 forKey:@"bioCheckCamRectW"];

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
  [v3 setObject:v91 forKey:@"bioCheckCamRectH"];

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
  [v3 setObject:v92 forKey:@"probingPatternFaceDistance"];

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
  [v3 setObject:v93 forKey:@"probingPatternCamRectX"];

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
  [v3 setObject:v94 forKey:@"probingPatternCamRectY"];

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
  [v3 setObject:v95 forKey:@"probingPatternCamRectW"];

  if ((*p_has & 0x100000000000000) != 0)
  {
LABEL_91:
    v32 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_probingPatternCamRectH];
    [v3 setObject:v32 forKey:@"probingPatternCamRectH"];
  }

LABEL_92:
  v33 = *(&self->_has + 2);
  if ((v33 & 0x20) != 0)
  {
    v96 = [MEMORY[0x29EDBA070] numberWithBool:self->_asFailure];
    [v3 setObject:v96 forKey:@"asFailure"];

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
  [v3 setObject:v97 forKey:@"autoRetry"];

  if ((*(&self->_has + 2) & 0x100) != 0)
  {
LABEL_95:
    v34 = [MEMORY[0x29EDBA070] numberWithBool:self->_autoRetryAllowed];
    [v3 setObject:v34 forKey:@"autoRetryAllowed"];
  }

LABEL_96:
  v35 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    v36 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_deviceOrientation];
    [v3 setObject:v36 forKey:@"deviceOrientation"];

    v35 = *p_has;
  }

  if ((v35 & 0x20000000000000) != 0)
  {
    v37 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchIdentityCount];
    [v3 setObject:v37 forKey:@"matchIdentityCount"];
  }

  cameraHWParameters = self->_cameraHWParameters;
  if (cameraHWParameters)
  {
    [v3 setObject:cameraHWParameters forKey:@"cameraHWParameters"];
  }

  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    v39 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_captureMethod];
    [v3 setObject:v39 forKey:@"captureMethod"];
  }

  v40 = *(&self->_has + 2);
  if ((v40 & 0x20000) != 0)
  {
    v98 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackNoFaceDetected];
    [v3 setObject:v98 forKey:@"engagementInfoFeedbackNoFaceDetected"];

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
  [v3 setObject:v99 forKey:@"engagementInfoFeedbackFaceTooClose"];

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
  [v3 setObject:v100 forKey:@"engagementInfoFeedbackFaceTooFar"];

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
  [v3 setObject:v101 forKey:@"engagementInfoFeedbackPoseOutOfRange"];

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
  [v3 setObject:v102 forKey:@"engagementInfoFeedbackNoAttention"];

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
  [v3 setObject:v103 forKey:@"engagementInfoFeedbackFaceOccluded"];

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
  [v3 setObject:v104 forKey:@"engagementInfoFeedbackCameraObstructed"];

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
  [v3 setObject:v105 forKey:@"engagementInfoFeedbackPartialOutOfFOV"];

  if ((*(&self->_has + 2) & 0x800) != 0)
  {
LABEL_113:
    v41 = [MEMORY[0x29EDBA070] numberWithBool:self->_combinedSequenceEnabled];
    [v3 setObject:v41 forKey:@"combinedSequenceEnabled"];
  }

LABEL_114:
  if ((*p_has & 8) != 0)
  {
    v42 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_overallTimeWithRetries];
    [v3 setObject:v42 forKey:@"overallTimeWithRetries"];
  }

  if ((*(&self->_has + 9) & 2) != 0)
  {
    v43 = [MEMORY[0x29EDBA070] numberWithBool:self->_autoRetryEnabled];
    [v3 setObject:v43 forKey:@"autoRetryEnabled"];
  }

  v44 = PBRepeatedUInt64NSArray();
  [v3 setObject:v44 forKey:@"identityCreationTime"];

  v45 = *(&self->_has + 2);
  if ((v45 & 0x800000) != 0)
  {
    v46 = [MEMORY[0x29EDBA070] numberWithBool:self->_matchCancelled];
    [v3 setObject:v46 forKey:@"matchCancelled"];

    v45 = *(&self->_has + 2);
  }

  if ((v45 & 0x100000) != 0)
  {
    v47 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackPoseMarginal];
    [v3 setObject:v47 forKey:@"engagementInfoFeedbackPoseMarginal"];
  }

  v48 = *p_has;
  if ((*p_has & 0x80000000000) != 0)
  {
    v106 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceOrientation];
    [v3 setObject:v106 forKey:@"faceOrientation"];

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
  [v3 setObject:v107 forKey:@"facePitch"];

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
  [v3 setObject:v108 forKey:@"faceYaw"];

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
  [v3 setObject:v109 forKey:@"faceRoll"];

  if ((*p_has & 0x80) != 0)
  {
LABEL_127:
    v49 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_timeSinceSleep];
    [v3 setObject:v49 forKey:@"timeSinceSleep"];
  }

LABEL_128:
  if ((*(&self->_has + 10) & 4) != 0)
  {
    v50 = [MEMORY[0x29EDBA070] numberWithBool:self->_engagementInfoFeedbackNoseAndMouthOccluded];
    [v3 setObject:v50 forKey:@"engagementInfoFeedbackNoseAndMouthOccluded"];
  }

  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    v51 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchType];
    [v3 setObject:v51 forKey:@"matchType"];
  }

  v52 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  p_has = &self->_has;
  v116 = v4;
  if (*(&self->_has + 1))
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v116;
  }

  if ((*(&self->_has + 11) & 0x20) != 0)
  {
    overallResult = self->_overallResult;
    PBDataWriterWriteBOOLField();
    v4 = v116;
  }

  v8 = *p_has;
  if ((*p_has & 4) != 0)
  {
    overallTime = self->_overallTime;
    PBDataWriterWriteUint64Field();
    v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
  if ((*p_has & 0x10) != 0)
  {
LABEL_19:
    probingPatternEndTime = self->_probingPatternEndTime;
    PBDataWriterWriteUint64Field();
    v4 = v116;
  }

LABEL_20:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    probingPatternResult = self->_probingPatternResult;
    PBDataWriterWriteInt32Field();
    v4 = v116;
  }

  v11 = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    probingPatternFrameCount = self->_probingPatternFrameCount;
    PBDataWriterWriteUint32Field();
    v4 = v116;
    v11 = *p_has;
  }

  if (v11 < 0)
  {
    probingPatternFrameFloodCount = self->_probingPatternFrameFloodCount;
    PBDataWriterWriteUint32Field();
    v4 = v116;
  }

  if (*(&self->_has + 8))
  {
    probingPatternFrameSparseCount = self->_probingPatternFrameSparseCount;
    PBDataWriterWriteUint32Field();
    v4 = v116;
  }

  v15 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    probingPatternFrameDenseCount = self->_probingPatternFrameDenseCount;
    PBDataWriterWriteUint32Field();
    v4 = v116;
    v15 = *p_has;
  }

  if ((v15 & 0x200) != 0)
  {
    ambientLux = self->_ambientLux;
    PBDataWriterWriteInt32Field();
    v4 = v116;
  }

  v18 = *(&self->_has + 2);
  if (v18 < 0)
  {
    probingPatternFailure = self->_probingPatternFailure;
    PBDataWriterWriteBOOLField();
    v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
  if ((*(&self->_has + 2) & 0x40000000) != 0)
  {
LABEL_40:
    passcodeChallengeAllowed = self->_passcodeChallengeAllowed;
    PBDataWriterWriteBOOLField();
    v4 = v116;
  }

LABEL_41:
  if ((*(&self->_has + 6) & 8) != 0)
  {
    featureGenerationError = self->_featureGenerationError;
    PBDataWriterWriteUint32Field();
    v4 = v116;
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    sensorTemperature = self->_sensorTemperature;
    PBDataWriterWriteInt32Field();
    v4 = v116;
  }

  if ((*(&self->_has + 5) & 4) != 0)
  {
    faceDistance = self->_faceDistance;
    PBDataWriterWriteUint32Field();
    v4 = v116;
  }

  if ((*(&self->_has + 10) & 0x40) != 0)
  {
    hasOcclusion = self->_hasOcclusion;
    PBDataWriterWriteBOOLField();
    v4 = v116;
  }

  v24 = *p_has;
  if ((*p_has & 0x2000000) != 0)
  {
    camRectX = self->_camRectX;
    PBDataWriterWriteUint32Field();
    v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
  if ((*p_has & 0x20) != 0)
  {
LABEL_59:
    rfcFrameIndex = self->_rfcFrameIndex;
    PBDataWriterWriteInt64Field();
    v4 = v116;
  }

LABEL_60:
  if ((*(&self->_has + 9) & 4) != 0)
  {
    bioLockout = self->_bioLockout;
    PBDataWriterWriteBOOLField();
    v4 = v116;
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    cameraErr = self->_cameraErr;
    PBDataWriterWriteInt32Field();
    v4 = v116;
  }

  if ((*(&self->_has + 11) & 4) != 0)
  {
    matchForUnlock = self->_matchForUnlock;
    PBDataWriterWriteBOOLField();
    v4 = v116;
  }

  v29 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    failedUnlockAttemptsFromFD = self->_failedUnlockAttemptsFromFD;
    PBDataWriterWriteUint32Field();
    v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
  if ((*p_has & 0x80000000000000) != 0)
  {
LABEL_73:
    onlineTemplateAge = self->_onlineTemplateAge;
    PBDataWriterWriteInt32Field();
    v4 = v116;
  }

LABEL_74:
  if ((*(&self->_has + 8) & 8) != 0)
  {
    shortTermTemplateAge = self->_shortTermTemplateAge;
    PBDataWriterWriteInt32Field();
    v4 = v116;
  }

  v32 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    faceDetectFaceDistance = self->_faceDetectFaceDistance;
    PBDataWriterWriteUint32Field();
    v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
  if ((*p_has & 0x100000000000000) != 0)
  {
LABEL_91:
    probingPatternCamRectH = self->_probingPatternCamRectH;
    PBDataWriterWriteUint32Field();
    v4 = v116;
  }

LABEL_92:
  v34 = *(&self->_has + 2);
  if ((v34 & 0x20) != 0)
  {
    asFailure = self->_asFailure;
    PBDataWriterWriteBOOLField();
    v4 = v116;
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
  v4 = v116;
  if ((*(&self->_has + 2) & 0x100) != 0)
  {
LABEL_95:
    autoRetryAllowed = self->_autoRetryAllowed;
    PBDataWriterWriteBOOLField();
    v4 = v116;
  }

LABEL_96:
  v36 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    deviceOrientation = self->_deviceOrientation;
    PBDataWriterWriteUint32Field();
    v4 = v116;
    v36 = *p_has;
  }

  if ((v36 & 0x20000000000000) != 0)
  {
    matchIdentityCount = self->_matchIdentityCount;
    PBDataWriterWriteUint32Field();
    v4 = v116;
  }

  if (self->_cameraHWParameters)
  {
    PBDataWriterWriteStringField();
    v4 = v116;
  }

  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    captureMethod = self->_captureMethod;
    PBDataWriterWriteUint32Field();
    v4 = v116;
  }

  v40 = *(&self->_has + 2);
  if ((v40 & 0x20000) != 0)
  {
    engagementInfoFeedbackNoFaceDetected = self->_engagementInfoFeedbackNoFaceDetected;
    PBDataWriterWriteBOOLField();
    v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
  if ((*(&self->_has + 2) & 0x800) != 0)
  {
LABEL_113:
    combinedSequenceEnabled = self->_combinedSequenceEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v116;
  }

LABEL_114:
  if ((*p_has & 8) != 0)
  {
    overallTimeWithRetries = self->_overallTimeWithRetries;
    PBDataWriterWriteUint64Field();
    v4 = v116;
  }

  if ((*(&self->_has + 9) & 2) != 0)
  {
    autoRetryEnabled = self->_autoRetryEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v116;
  }

  if (self->_identityCreationTimes.count)
  {
    v44 = 0;
    do
    {
      v45 = self->_identityCreationTimes.list[v44];
      PBDataWriterWriteUint64Field();
      v4 = v116;
      ++v44;
    }

    while (v44 < self->_identityCreationTimes.count);
  }

  v46 = *(&self->_has + 2);
  if ((v46 & 0x800000) != 0)
  {
    matchCancelled = self->_matchCancelled;
    PBDataWriterWriteBOOLField();
    v4 = v116;
    v46 = *(&self->_has + 2);
  }

  if ((v46 & 0x100000) != 0)
  {
    engagementInfoFeedbackPoseMarginal = self->_engagementInfoFeedbackPoseMarginal;
    PBDataWriterWriteBOOLField();
    v4 = v116;
  }

  v49 = *p_has;
  if ((*p_has & 0x80000000000) != 0)
  {
    faceOrientation = self->_faceOrientation;
    PBDataWriterWriteUint32Field();
    v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
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
  v4 = v116;
  if ((*p_has & 0x80) != 0)
  {
LABEL_130:
    timeSinceSleep = self->_timeSinceSleep;
    PBDataWriterWriteUint64Field();
    v4 = v116;
  }

LABEL_131:
  if ((*(&self->_has + 10) & 4) != 0)
  {
    engagementInfoFeedbackNoseAndMouthOccluded = self->_engagementInfoFeedbackNoseAndMouthOccluded;
    PBDataWriterWriteBOOLField();
    v4 = v116;
  }

  if ((*(&self->_has + 6) & 0x40) != 0)
  {
    matchType = self->_matchType;
    PBDataWriterWriteUint32Field();
    v4 = v116;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  p_has = &self->_has;
  if (*(&self->_has + 1))
  {
    v4[12] = self->_timestamp;
    *(v4 + 380) |= 0x100uLL;
  }

  if ((*(&self->_has + 11) & 0x20) != 0)
  {
    *(v4 + 377) = self->_overallResult;
    *(v4 + 97) |= 0x20000000u;
  }

  has = *p_has;
  if ((*p_has & 4) != 0)
  {
    v4[6] = self->_overallTime;
    *(v4 + 380) |= 4uLL;
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

  v4[5] = self->_faceDetectEndTime;
  *(v4 + 380) |= 2uLL;
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
  *(v4 + 61) = self->_faceDetectResult;
  *(v4 + 380) |= 0x20000000000uLL;
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
  *(v4 + 55) = self->_faceDetectFrameCount;
  *(v4 + 380) |= 0x800000000uLL;
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
  *(v4 + 57) = self->_faceDetectFrameFloodCount;
  *(v4 + 380) |= 0x2000000000uLL;
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
  *(v4 + 58) = self->_faceDetectFrameSparseCount;
  *(v4 + 380) |= 0x4000000000uLL;
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
  *(v4 + 56) = self->_faceDetectFrameDenseCount;
  *(v4 + 380) |= 0x1000000000uLL;
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
  v4[4] = self->_bioCheckEndTime;
  *(v4 + 380) |= 1uLL;
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
  *(v4 + 38) = self->_bioCheckResult;
  *(v4 + 380) |= 0x200000uLL;
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
  *(v4 + 32) = self->_bioCheckFrameCount;
  *(v4 + 380) |= 0x8000uLL;
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
  *(v4 + 34) = self->_bioCheckFrameFloodCount;
  *(v4 + 380) |= 0x20000uLL;
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
  *(v4 + 35) = self->_bioCheckFrameSparseCount;
  *(v4 + 380) |= 0x40000uLL;
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
  *(v4 + 33) = self->_bioCheckFrameDenseCount;
  *(v4 + 380) |= 0x10000uLL;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_19:
    v4[8] = self->_probingPatternEndTime;
    *(v4 + 380) |= 0x10uLL;
  }

LABEL_20:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    *(v4 + 85) = self->_probingPatternResult;
    *(v4 + 97) |= 2u;
  }

  v7 = *p_has;
  if ((*p_has & 0x2000000000000000) != 0)
  {
    *(v4 + 81) = self->_probingPatternFrameCount;
    *(v4 + 380) |= 0x2000000000000000uLL;
    v7 = self->_has;
  }

  if (v7 < 0)
  {
    *(v4 + 83) = self->_probingPatternFrameFloodCount;
    *(v4 + 380) |= 0x8000000000000000;
  }

  if (*(&self->_has + 8))
  {
    *(v4 + 84) = self->_probingPatternFrameSparseCount;
    *(v4 + 97) |= 1u;
  }

  v8 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    *(v4 + 82) = self->_probingPatternFrameDenseCount;
    *(v4 + 380) |= 0x4000000000000000uLL;
    v8 = self->_has;
  }

  if ((v8 & 0x200) != 0)
  {
    *(v4 + 26) = self->_ambientLux;
    *(v4 + 380) |= 0x200uLL;
  }

  v9 = *(&self->_has + 2);
  if (v9 < 0)
  {
    *(v4 + 379) = self->_probingPatternFailure;
    *(v4 + 97) |= 0x80000000;
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

  *(v4 + 375) = self->_matcherFailure;
  *(v4 + 97) |= 0x8000000u;
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
  *(v4 + 372) = self->_matchDepthFailure;
  *(v4 + 97) |= 0x1000000u;
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
  *(v4 + 373) = self->_matchFloodFailure;
  *(v4 + 97) |= 0x2000000u;
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
  *(v4 + 354) = self->_asFloodFailure;
  *(v4 + 97) |= 0x40u;
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
  *(v4 + 352) = self->_asDepthFailure;
  *(v4 + 97) |= 0x10u;
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
  *(v4 + 376) = self->_onlineTemplateUpdated;
  *(v4 + 97) |= 0x10000000u;
  if ((*(&self->_has + 2) & 0x40000000) != 0)
  {
LABEL_40:
    *(v4 + 378) = self->_passcodeChallengeAllowed;
    *(v4 + 97) |= 0x40000000u;
  }

LABEL_41:
  if ((*(&self->_has + 6) & 8) != 0)
  {
    *(v4 + 71) = self->_featureGenerationError;
    *(v4 + 380) |= 0x8000000000000uLL;
  }

  if ((*(&self->_has + 8) & 4) != 0)
  {
    *(v4 + 86) = self->_sensorTemperature;
    *(v4 + 97) |= 4u;
  }

  if ((*(&self->_has + 5) & 4) != 0)
  {
    *(v4 + 62) = self->_faceDistance;
    *(v4 + 380) |= 0x40000000000uLL;
  }

  if ((*(&self->_has + 10) & 0x40) != 0)
  {
    *(v4 + 370) = self->_hasOcclusion;
    *(v4 + 97) |= 0x400000u;
  }

  v10 = *p_has;
  if ((*p_has & 0x2000000) != 0)
  {
    *(v4 + 42) = self->_camRectX;
    *(v4 + 380) |= 0x2000000uLL;
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

  *(v4 + 43) = self->_camRectY;
  *(v4 + 380) |= 0x4000000uLL;
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
  *(v4 + 41) = self->_camRectW;
  *(v4 + 380) |= 0x1000000uLL;
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
  *(v4 + 40) = self->_camRectH;
  *(v4 + 380) |= 0x800000uLL;
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
  *(v4 + 60) = self->_faceDetectPPMRequestedBudget;
  *(v4 + 380) |= 0x10000000000uLL;
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
  *(v4 + 59) = self->_faceDetectPPMAllocatedBudget;
  *(v4 + 380) |= 0x8000000000uLL;
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
  *(v4 + 37) = self->_bioCheckPPMRequestedBudget;
  *(v4 + 380) |= 0x100000uLL;
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
  *(v4 + 36) = self->_bioCheckPPMAllocatedBudget;
  *(v4 + 380) |= 0x80000uLL;
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
  v4[10] = self->_rfcSetIndex;
  *(v4 + 380) |= 0x40uLL;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_59:
    v4[9] = self->_rfcFrameIndex;
    *(v4 + 380) |= 0x20uLL;
  }

LABEL_60:
  if ((*(&self->_has + 9) & 4) != 0)
  {
    *(v4 + 358) = self->_bioLockout;
    *(v4 + 97) |= 0x400u;
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    *(v4 + 44) = self->_cameraErr;
    *(v4 + 380) |= 0x8000000uLL;
  }

  if ((*(&self->_has + 11) & 4) != 0)
  {
    *(v4 + 374) = self->_matchForUnlock;
    *(v4 + 97) |= 0x4000000u;
  }

  v11 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    *(v4 + 70) = self->_failedUnlockAttemptsFromFD;
    *(v4 + 380) |= 0x4000000000000uLL;
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

  *(v4 + 69) = self->_failedUnlockAttemptsFromBiocheck;
  *(v4 + 380) |= 0x2000000000000uLL;
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
  *(v4 + 68) = self->_failedMatchAttemptsFromFD;
  *(v4 + 380) |= 0x1000000000000uLL;
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
  *(v4 + 67) = self->_failedMatchAttemptsFromBiocheck;
  *(v4 + 380) |= 0x800000000000uLL;
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
  *(v4 + 39) = self->_bioLockoutReason;
  *(v4 + 380) |= 0x400000uLL;
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
  *(v4 + 72) = self->_matchFeatureVectorError;
  *(v4 + 380) |= 0x10000000000000uLL;
  if ((*&self->_has & 0x80000000000000) != 0)
  {
LABEL_73:
    *(v4 + 75) = self->_onlineTemplateAge;
    *(v4 + 380) |= 0x80000000000000uLL;
  }

LABEL_74:
  if ((*(&self->_has + 8) & 8) != 0)
  {
    *(v4 + 87) = self->_shortTermTemplateAge;
    *(v4 + 97) |= 8u;
  }

  v12 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    *(v4 + 54) = self->_faceDetectFaceDistance;
    *(v4 + 380) |= 0x400000000uLL;
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

  *(v4 + 52) = self->_faceDetectCamRectX;
  *(v4 + 380) |= 0x100000000uLL;
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
  *(v4 + 53) = self->_faceDetectCamRectY;
  *(v4 + 380) |= 0x200000000uLL;
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
  *(v4 + 51) = self->_faceDetectCamRectW;
  *(v4 + 380) |= 0x80000000uLL;
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
  *(v4 + 50) = self->_faceDetectCamRectH;
  *(v4 + 380) |= 0x40000000uLL;
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
  *(v4 + 31) = self->_bioCheckFaceDistance;
  *(v4 + 380) |= 0x4000uLL;
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
  *(v4 + 29) = self->_bioCheckCamRectX;
  *(v4 + 380) |= 0x1000uLL;
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
  *(v4 + 30) = self->_bioCheckCamRectY;
  *(v4 + 380) |= 0x2000uLL;
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
  *(v4 + 28) = self->_bioCheckCamRectW;
  *(v4 + 380) |= 0x800uLL;
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
  *(v4 + 27) = self->_bioCheckCamRectH;
  *(v4 + 380) |= 0x400uLL;
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
  *(v4 + 80) = self->_probingPatternFaceDistance;
  *(v4 + 380) |= 0x1000000000000000uLL;
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
  *(v4 + 78) = self->_probingPatternCamRectX;
  *(v4 + 380) |= 0x400000000000000uLL;
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
  *(v4 + 79) = self->_probingPatternCamRectY;
  *(v4 + 380) |= 0x800000000000000uLL;
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
  *(v4 + 77) = self->_probingPatternCamRectW;
  *(v4 + 380) |= 0x200000000000000uLL;
  if ((*&self->_has & 0x100000000000000) != 0)
  {
LABEL_91:
    *(v4 + 76) = self->_probingPatternCamRectH;
    *(v4 + 380) |= 0x100000000000000uLL;
  }

LABEL_92:
  v13 = *(&self->_has + 2);
  if ((v13 & 0x20) != 0)
  {
    *(v4 + 353) = self->_asFailure;
    *(v4 + 97) |= 0x20u;
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

  *(v4 + 355) = self->_autoRetry;
  *(v4 + 97) |= 0x80u;
  if ((*(&self->_has + 2) & 0x100) != 0)
  {
LABEL_95:
    *(v4 + 356) = self->_autoRetryAllowed;
    *(v4 + 97) |= 0x100u;
  }

LABEL_96:
  v14 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    *(v4 + 49) = self->_deviceOrientation;
    *(v4 + 380) |= 0x20000000uLL;
    v14 = self->_has;
  }

  if ((v14 & 0x20000000000000) != 0)
  {
    *(v4 + 73) = self->_matchIdentityCount;
    *(v4 + 380) |= 0x20000000000000uLL;
  }

  v21 = v4;
  if (self->_cameraHWParameters)
  {
    [v4 setCameraHWParameters:?];
    v4 = v21;
  }

  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    *(v4 + 48) = self->_captureMethod;
    *(v4 + 380) |= 0x10000000uLL;
  }

  v15 = *(&self->_has + 2);
  if ((v15 & 0x20000) != 0)
  {
    *(v4 + 365) = self->_engagementInfoFeedbackNoFaceDetected;
    *(v4 + 97) |= 0x20000u;
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

  *(v4 + 362) = self->_engagementInfoFeedbackFaceTooClose;
  *(v4 + 97) |= 0x4000u;
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
  *(v4 + 363) = self->_engagementInfoFeedbackFaceTooFar;
  *(v4 + 97) |= 0x8000u;
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
  *(v4 + 369) = self->_engagementInfoFeedbackPoseOutOfRange;
  *(v4 + 97) |= 0x200000u;
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
  *(v4 + 364) = self->_engagementInfoFeedbackNoAttention;
  *(v4 + 97) |= 0x10000u;
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
  *(v4 + 361) = self->_engagementInfoFeedbackFaceOccluded;
  *(v4 + 97) |= 0x2000u;
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
  *(v4 + 360) = self->_engagementInfoFeedbackCameraObstructed;
  *(v4 + 97) |= 0x1000u;
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
  *(v4 + 367) = self->_engagementInfoFeedbackPartialOutOfFOV;
  *(v4 + 97) |= 0x80000u;
  if ((*(&self->_has + 2) & 0x800) != 0)
  {
LABEL_113:
    *(v4 + 359) = self->_combinedSequenceEnabled;
    *(v4 + 97) |= 0x800u;
  }

LABEL_114:
  if ((*p_has & 8) != 0)
  {
    v4[7] = self->_overallTimeWithRetries;
    *(v4 + 380) |= 8uLL;
  }

  if ((*(&self->_has + 9) & 2) != 0)
  {
    *(v4 + 357) = self->_autoRetryEnabled;
    *(v4 + 97) |= 0x200u;
  }

  if ([(AWDBiometricKitMatchAttempt *)self identityCreationTimesCount])
  {
    [v21 clearIdentityCreationTimes];
    v16 = [(AWDBiometricKitMatchAttempt *)self identityCreationTimesCount];
    if (v16)
    {
      v17 = v16;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v17 = [(NSString *)self->_cameraHWParameters copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_569;
  }

  has = self->_has;
  v6 = *(v4 + 380);
  if ((has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_timestamp != *(v4 + 12))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_569;
  }

  v7 = *(&self->_has + 2);
  v8 = *(v4 + 97);
  if ((v7 & 0x20000000) != 0)
  {
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_569;
    }

    v9 = v4[377];
    if (self->_overallResult)
    {
      if ((v4[377] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[377])
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
    if ((v6 & 4) == 0 || self->_overallTime != *(v4 + 6))
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
    if ((v6 & 2) == 0 || self->_faceDetectEndTime != *(v4 + 5))
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
    if ((v6 & 0x20000000000) == 0 || self->_faceDetectResult != *(v4 + 61))
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
    if ((v6 & 0x800000000) == 0 || self->_faceDetectFrameCount != *(v4 + 55))
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
    if ((v6 & 0x2000000000) == 0 || self->_faceDetectFrameFloodCount != *(v4 + 57))
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
    if ((v6 & 0x4000000000) == 0 || self->_faceDetectFrameSparseCount != *(v4 + 58))
    {
      goto LABEL_569;
    }
  }

  else if ((v6 & 0x4000000000) != 0)
  {
    goto LABEL_569;
  }

  p_has = &self->_has;
  v50 = (v4 + 380);
  if ((has & 0x1000000000) != 0)
  {
    if ((v6 & 0x1000000000) == 0 || self->_faceDetectFrameDenseCount != *(v4 + 56))
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
    if ((v6 & 1) == 0 || self->_bioCheckEndTime != *(v4 + 4))
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
    if ((v6 & 0x200000) == 0 || self->_bioCheckResult != *(v4 + 38))
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
    if ((v6 & 0x8000) == 0 || self->_bioCheckFrameCount != *(v4 + 32))
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
    if ((v6 & 0x20000) == 0 || self->_bioCheckFrameFloodCount != *(v4 + 34))
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
    if ((v6 & 0x40000) == 0 || self->_bioCheckFrameSparseCount != *(v4 + 35))
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
    if ((v6 & 0x10000) == 0 || self->_bioCheckFrameDenseCount != *(v4 + 33))
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
    if ((v6 & 0x10) == 0 || self->_probingPatternEndTime != *(v4 + 8))
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
    if ((v8 & 2) == 0 || self->_probingPatternResult != *(v4 + 85))
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
    if ((v6 & 0x2000000000000000) == 0 || self->_probingPatternFrameCount != *(v4 + 81))
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
    if ((v6 & 0x8000000000000000) == 0 || self->_probingPatternFrameFloodCount != *(v4 + 83))
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
    if ((v8 & 1) == 0 || self->_probingPatternFrameSparseCount != *(v4 + 84))
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
    if ((v6 & 0x4000000000000000) == 0 || self->_probingPatternFrameDenseCount != *(v4 + 82))
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
    if ((v6 & 0x200) == 0 || self->_ambientLux != *(v4 + 26))
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

    v10 = v4[379];
    if (self->_probingPatternFailure)
    {
      if ((v4[379] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[379])
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

    v11 = v4[375];
    if (self->_matcherFailure)
    {
      if ((v4[375] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[375])
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

    v12 = v4[372];
    if (self->_matchDepthFailure)
    {
      if ((v4[372] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[372])
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

    v13 = v4[373];
    if (self->_matchFloodFailure)
    {
      if ((v4[373] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[373])
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

    v14 = v4[354];
    if (self->_asFloodFailure)
    {
      if ((v4[354] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[354])
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

    v15 = v4[352];
    if (self->_asDepthFailure)
    {
      if ((v4[352] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[352])
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

    v16 = v4[376];
    if (self->_onlineTemplateUpdated)
    {
      if ((v4[376] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[376])
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

    v17 = v4[378];
    if (self->_passcodeChallengeAllowed)
    {
      if ((v4[378] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[378])
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
    if ((v6 & 0x8000000000000) == 0 || self->_featureGenerationError != *(v4 + 71))
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
    if ((v8 & 4) == 0 || self->_sensorTemperature != *(v4 + 86))
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
    if ((v6 & 0x40000000000) == 0 || self->_faceDistance != *(v4 + 62))
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

    v18 = v4[370];
    if (self->_hasOcclusion)
    {
      if ((v4[370] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[370])
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
    if ((v6 & 0x2000000) == 0 || self->_camRectX != *(v4 + 42))
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
    if ((v6 & 0x4000000) == 0 || self->_camRectY != *(v4 + 43))
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
    if ((v6 & 0x1000000) == 0 || self->_camRectW != *(v4 + 41))
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
    if ((v6 & 0x800000) == 0 || self->_camRectH != *(v4 + 40))
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
    if ((v6 & 0x10000000000) == 0 || self->_faceDetectPPMRequestedBudget != *(v4 + 60))
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
    if ((v6 & 0x8000000000) == 0 || self->_faceDetectPPMAllocatedBudget != *(v4 + 59))
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
    if ((v6 & 0x100000) == 0 || self->_bioCheckPPMRequestedBudget != *(v4 + 37))
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
    if ((v6 & 0x80000) == 0 || self->_bioCheckPPMAllocatedBudget != *(v4 + 36))
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
    if ((v6 & 0x40) == 0 || self->_rfcSetIndex != *(v4 + 10))
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
    if ((v6 & 0x20) == 0 || self->_rfcFrameIndex != *(v4 + 9))
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

    v19 = v4[358];
    if (self->_bioLockout)
    {
      if ((v4[358] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[358])
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
    if ((v20 & 0x8000000) == 0 || self->_cameraErr != *(v4 + 44))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x8000000) != 0)
  {
    goto LABEL_569;
  }

  v21 = *(v4 + 97);
  if ((v7 & 0x4000000) != 0)
  {
    if ((v21 & 0x4000000) == 0)
    {
      goto LABEL_569;
    }

    v22 = v4[374];
    if (self->_matchForUnlock)
    {
      if ((v4[374] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[374])
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
    if ((v20 & 0x4000000000000) == 0 || self->_failedUnlockAttemptsFromFD != *(v4 + 70))
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
    if ((v20 & 0x2000000000000) == 0 || self->_failedUnlockAttemptsFromBiocheck != *(v4 + 69))
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
    if ((v20 & 0x1000000000000) == 0 || self->_failedMatchAttemptsFromFD != *(v4 + 68))
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
    if ((v20 & 0x800000000000) == 0 || self->_failedMatchAttemptsFromBiocheck != *(v4 + 67))
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
    if ((v20 & 0x400000) == 0 || self->_bioLockoutReason != *(v4 + 39))
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
    if ((v20 & 0x10000000000000) == 0 || self->_matchFeatureVectorError != *(v4 + 72))
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
    if ((v20 & 0x80000000000000) == 0 || self->_onlineTemplateAge != *(v4 + 75))
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
    if ((v21 & 8) == 0 || self->_shortTermTemplateAge != *(v4 + 87))
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
    if ((v20 & 0x400000000) == 0 || self->_faceDetectFaceDistance != *(v4 + 54))
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
    if ((v20 & 0x100000000) == 0 || self->_faceDetectCamRectX != *(v4 + 52))
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
    if ((v20 & 0x200000000) == 0 || self->_faceDetectCamRectY != *(v4 + 53))
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
    if ((v20 & 0x80000000) == 0 || self->_faceDetectCamRectW != *(v4 + 51))
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
    if ((v20 & 0x40000000) == 0 || self->_faceDetectCamRectH != *(v4 + 50))
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
    if ((v20 & 0x4000) == 0 || self->_bioCheckFaceDistance != *(v4 + 31))
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
    if ((v20 & 0x1000) == 0 || self->_bioCheckCamRectX != *(v4 + 29))
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
    if ((v20 & 0x2000) == 0 || self->_bioCheckCamRectY != *(v4 + 30))
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
    if ((v20 & 0x800) == 0 || self->_bioCheckCamRectW != *(v4 + 28))
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
    if ((v20 & 0x400) == 0 || self->_bioCheckCamRectH != *(v4 + 27))
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
    if ((v20 & 0x1000000000000000) == 0 || self->_probingPatternFaceDistance != *(v4 + 80))
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
    if ((v20 & 0x400000000000000) == 0 || self->_probingPatternCamRectX != *(v4 + 78))
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
    if ((v20 & 0x800000000000000) == 0 || self->_probingPatternCamRectY != *(v4 + 79))
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
    if ((v20 & 0x200000000000000) == 0 || self->_probingPatternCamRectW != *(v4 + 77))
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
    if ((v20 & 0x100000000000000) == 0 || self->_probingPatternCamRectH != *(v4 + 76))
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

    v23 = v4[353];
    if (self->_asFailure)
    {
      if ((v4[353] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[353])
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

    v24 = v4[355];
    if (self->_autoRetry)
    {
      if ((v4[355] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[355])
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

    v25 = v4[356];
    if (self->_autoRetryAllowed)
    {
      if ((v4[356] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[356])
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
    if ((v20 & 0x20000000) == 0 || self->_deviceOrientation != *(v4 + 49))
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
    if ((v20 & 0x20000000000000) == 0 || self->_matchIdentityCount != *(v4 + 73))
    {
      goto LABEL_569;
    }
  }

  else if ((v20 & 0x20000000000000) != 0)
  {
    goto LABEL_569;
  }

  cameraHWParameters = self->_cameraHWParameters;
  if (cameraHWParameters | *(v4 + 23) && ![(NSString *)cameraHWParameters isEqual:?])
  {
    goto LABEL_569;
  }

  v27 = *v50;
  if ((*p_has & 0x10000000) != 0)
  {
    if ((v27 & 0x10000000) == 0 || self->_captureMethod != *(v4 + 48))
    {
      goto LABEL_569;
    }
  }

  else if ((v27 & 0x10000000) != 0)
  {
    goto LABEL_569;
  }

  v28 = *(&self->_has + 2);
  v29 = *(v4 + 97);
  if ((v28 & 0x20000) != 0)
  {
    if ((v29 & 0x20000) == 0)
    {
      goto LABEL_569;
    }

    v30 = v4[365];
    if (self->_engagementInfoFeedbackNoFaceDetected)
    {
      if ((v4[365] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[365])
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

    v31 = v4[362];
    if (self->_engagementInfoFeedbackFaceTooClose)
    {
      if ((v4[362] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[362])
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

    v32 = v4[363];
    if (self->_engagementInfoFeedbackFaceTooFar)
    {
      if ((v4[363] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[363])
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

    v33 = v4[369];
    if (self->_engagementInfoFeedbackPoseOutOfRange)
    {
      if ((v4[369] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[369])
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

    v34 = v4[364];
    if (self->_engagementInfoFeedbackNoAttention)
    {
      if ((v4[364] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[364])
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

    v35 = v4[361];
    if (self->_engagementInfoFeedbackFaceOccluded)
    {
      if ((v4[361] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[361])
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

    v36 = v4[360];
    if (self->_engagementInfoFeedbackCameraObstructed)
    {
      if ((v4[360] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[360])
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

    v37 = v4[367];
    if (self->_engagementInfoFeedbackPartialOutOfFOV)
    {
      if ((v4[367] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[367])
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

    v38 = v4[359];
    if (self->_combinedSequenceEnabled)
    {
      if ((v4[359] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[359])
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
    if ((v27 & 8) == 0 || self->_overallTimeWithRetries != *(v4 + 7))
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

    v39 = v4[357];
    if (self->_autoRetryEnabled)
    {
      if ((v4[357] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[357])
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
  v41 = *(v4 + 97);
  if ((v40 & 0x800000) != 0)
  {
    if ((v41 & 0x800000) == 0)
    {
      goto LABEL_569;
    }

    v42 = v4[371];
    if (self->_matchCancelled)
    {
      if ((v4[371] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[371])
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

    v43 = v4[368];
    if (self->_engagementInfoFeedbackPoseMarginal)
    {
      if ((v4[368] & 1) == 0)
      {
        goto LABEL_569;
      }
    }

    else if (v4[368])
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
    if ((v45 & 0x80000000000) == 0 || self->_faceOrientation != *(v4 + 63))
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
    if ((v45 & 0x100000000000) == 0 || self->_facePitch != *(v4 + 64))
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
    if ((v45 & 0x400000000000) == 0 || self->_faceYaw != *(v4 + 66))
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
    if ((v45 & 0x200000000000) == 0 || self->_faceRoll != *(v4 + 65))
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
    if ((v45 & 0x80) == 0 || self->_timeSinceSleep != *(v4 + 11))
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
      v46 = v4[366];
      if (self->_engagementInfoFeedbackNoseAndMouthOccluded)
      {
        if ((v4[366] & 1) == 0)
        {
          goto LABEL_569;
        }

        goto LABEL_564;
      }

      if ((v4[366] & 1) == 0)
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
    if ((v45 & 0x40000000000000) == 0 || self->_matchType != *(v4 + 74))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4 + 380;
  if (v4[381])
  {
    self->_timestamp = *(v4 + 12);
    *&self->_has |= 0x100uLL;
  }

  if ((v4[391] & 0x20) != 0)
  {
    self->_overallResult = v4[377];
    *(&self->_has + 2) |= 0x20000000u;
  }

  v6 = *v5;
  if ((*v5 & 4) != 0)
  {
    self->_overallTime = *(v4 + 6);
    *&self->_has |= 4uLL;
    v6 = *(v4 + 380);
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

  self->_faceDetectEndTime = *(v4 + 5);
  *&self->_has |= 2uLL;
  v6 = *(v4 + 380);
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
  self->_faceDetectResult = *(v4 + 61);
  *&self->_has |= 0x20000000000uLL;
  v6 = *(v4 + 380);
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
  self->_faceDetectFrameCount = *(v4 + 55);
  *&self->_has |= 0x800000000uLL;
  v6 = *(v4 + 380);
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
  self->_faceDetectFrameFloodCount = *(v4 + 57);
  *&self->_has |= 0x2000000000uLL;
  v6 = *(v4 + 380);
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
  self->_faceDetectFrameSparseCount = *(v4 + 58);
  *&self->_has |= 0x4000000000uLL;
  v6 = *(v4 + 380);
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
  self->_faceDetectFrameDenseCount = *(v4 + 56);
  *&self->_has |= 0x1000000000uLL;
  v6 = *(v4 + 380);
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
  self->_bioCheckEndTime = *(v4 + 4);
  *&self->_has |= 1uLL;
  v6 = *(v4 + 380);
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
  self->_bioCheckResult = *(v4 + 38);
  *&self->_has |= 0x200000uLL;
  v6 = *(v4 + 380);
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
  self->_bioCheckFrameCount = *(v4 + 32);
  *&self->_has |= 0x8000uLL;
  v6 = *(v4 + 380);
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
  self->_bioCheckFrameFloodCount = *(v4 + 34);
  *&self->_has |= 0x20000uLL;
  v6 = *(v4 + 380);
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
  self->_bioCheckFrameSparseCount = *(v4 + 35);
  *&self->_has |= 0x40000uLL;
  v6 = *(v4 + 380);
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
  self->_bioCheckFrameDenseCount = *(v4 + 33);
  *&self->_has |= 0x10000uLL;
  if ((*(v4 + 380) & 0x10) != 0)
  {
LABEL_19:
    self->_probingPatternEndTime = *(v4 + 8);
    *&self->_has |= 0x10uLL;
  }

LABEL_20:
  if ((v4[388] & 2) != 0)
  {
    self->_probingPatternResult = *(v4 + 85);
    *(&self->_has + 2) |= 2u;
  }

  v7 = *v5;
  if ((*v5 & 0x2000000000000000) != 0)
  {
    self->_probingPatternFrameCount = *(v4 + 81);
    *&self->_has |= 0x2000000000000000uLL;
    v7 = *(v4 + 380);
  }

  if (v7 < 0)
  {
    self->_probingPatternFrameFloodCount = *(v4 + 83);
    *&self->_has |= 0x8000000000000000;
  }

  if (v4[388])
  {
    self->_probingPatternFrameSparseCount = *(v4 + 84);
    *(&self->_has + 2) |= 1u;
  }

  v8 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    self->_probingPatternFrameDenseCount = *(v4 + 82);
    *&self->_has |= 0x4000000000000000uLL;
    v8 = *(v4 + 380);
  }

  if ((v8 & 0x200) != 0)
  {
    self->_ambientLux = *(v4 + 26);
    *&self->_has |= 0x200uLL;
  }

  v9 = *(v4 + 97);
  if (v9 < 0)
  {
    self->_probingPatternFailure = v4[379];
    *(&self->_has + 2) |= 0x80000000;
    v9 = *(v4 + 97);
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

  self->_matcherFailure = v4[375];
  *(&self->_has + 2) |= 0x8000000u;
  v9 = *(v4 + 97);
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
  self->_matchDepthFailure = v4[372];
  *(&self->_has + 2) |= 0x1000000u;
  v9 = *(v4 + 97);
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
  self->_matchFloodFailure = v4[373];
  *(&self->_has + 2) |= 0x2000000u;
  v9 = *(v4 + 97);
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
  self->_asFloodFailure = v4[354];
  *(&self->_has + 2) |= 0x40u;
  v9 = *(v4 + 97);
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
  self->_asDepthFailure = v4[352];
  *(&self->_has + 2) |= 0x10u;
  v9 = *(v4 + 97);
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
  self->_onlineTemplateUpdated = v4[376];
  *(&self->_has + 2) |= 0x10000000u;
  if ((*(v4 + 97) & 0x40000000) != 0)
  {
LABEL_40:
    self->_passcodeChallengeAllowed = v4[378];
    *(&self->_has + 2) |= 0x40000000u;
  }

LABEL_41:
  if ((v4[386] & 8) != 0)
  {
    self->_featureGenerationError = *(v4 + 71);
    *&self->_has |= 0x8000000000000uLL;
  }

  if ((v4[388] & 4) != 0)
  {
    self->_sensorTemperature = *(v4 + 86);
    *(&self->_has + 2) |= 4u;
  }

  if ((v4[385] & 4) != 0)
  {
    self->_faceDistance = *(v4 + 62);
    *&self->_has |= 0x40000000000uLL;
  }

  if ((v4[390] & 0x40) != 0)
  {
    self->_hasOcclusion = v4[370];
    *(&self->_has + 2) |= 0x400000u;
  }

  v10 = *v5;
  if ((*v5 & 0x2000000) != 0)
  {
    self->_camRectX = *(v4 + 42);
    *&self->_has |= 0x2000000uLL;
    v10 = *(v4 + 380);
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

  self->_camRectY = *(v4 + 43);
  *&self->_has |= 0x4000000uLL;
  v10 = *(v4 + 380);
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
  self->_camRectW = *(v4 + 41);
  *&self->_has |= 0x1000000uLL;
  v10 = *(v4 + 380);
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
  self->_camRectH = *(v4 + 40);
  *&self->_has |= 0x800000uLL;
  v10 = *(v4 + 380);
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
  self->_faceDetectPPMRequestedBudget = *(v4 + 60);
  *&self->_has |= 0x10000000000uLL;
  v10 = *(v4 + 380);
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
  self->_faceDetectPPMAllocatedBudget = *(v4 + 59);
  *&self->_has |= 0x8000000000uLL;
  v10 = *(v4 + 380);
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
  self->_bioCheckPPMRequestedBudget = *(v4 + 37);
  *&self->_has |= 0x100000uLL;
  v10 = *(v4 + 380);
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
  self->_bioCheckPPMAllocatedBudget = *(v4 + 36);
  *&self->_has |= 0x80000uLL;
  v10 = *(v4 + 380);
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
  self->_rfcSetIndex = *(v4 + 10);
  *&self->_has |= 0x40uLL;
  if ((*(v4 + 380) & 0x20) != 0)
  {
LABEL_59:
    self->_rfcFrameIndex = *(v4 + 9);
    *&self->_has |= 0x20uLL;
  }

LABEL_60:
  if ((v4[389] & 4) != 0)
  {
    self->_bioLockout = v4[358];
    *(&self->_has + 2) |= 0x400u;
  }

  if ((v4[383] & 8) != 0)
  {
    self->_cameraErr = *(v4 + 44);
    *&self->_has |= 0x8000000uLL;
  }

  if ((v4[391] & 4) != 0)
  {
    self->_matchForUnlock = v4[374];
    *(&self->_has + 2) |= 0x4000000u;
  }

  v11 = *v5;
  if ((*v5 & 0x4000000000000) != 0)
  {
    self->_failedUnlockAttemptsFromFD = *(v4 + 70);
    *&self->_has |= 0x4000000000000uLL;
    v11 = *(v4 + 380);
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

  self->_failedUnlockAttemptsFromBiocheck = *(v4 + 69);
  *&self->_has |= 0x2000000000000uLL;
  v11 = *(v4 + 380);
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
  self->_failedMatchAttemptsFromFD = *(v4 + 68);
  *&self->_has |= 0x1000000000000uLL;
  v11 = *(v4 + 380);
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
  self->_failedMatchAttemptsFromBiocheck = *(v4 + 67);
  *&self->_has |= 0x800000000000uLL;
  v11 = *(v4 + 380);
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
  self->_bioLockoutReason = *(v4 + 39);
  *&self->_has |= 0x400000uLL;
  v11 = *(v4 + 380);
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
  self->_matchFeatureVectorError = *(v4 + 72);
  *&self->_has |= 0x10000000000000uLL;
  if ((*(v4 + 380) & 0x80000000000000) != 0)
  {
LABEL_73:
    self->_onlineTemplateAge = *(v4 + 75);
    *&self->_has |= 0x80000000000000uLL;
  }

LABEL_74:
  if ((v4[388] & 8) != 0)
  {
    self->_shortTermTemplateAge = *(v4 + 87);
    *(&self->_has + 2) |= 8u;
  }

  v12 = *v5;
  if ((*v5 & 0x400000000) != 0)
  {
    self->_faceDetectFaceDistance = *(v4 + 54);
    *&self->_has |= 0x400000000uLL;
    v12 = *(v4 + 380);
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

  self->_faceDetectCamRectX = *(v4 + 52);
  *&self->_has |= 0x100000000uLL;
  v12 = *(v4 + 380);
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
  self->_faceDetectCamRectY = *(v4 + 53);
  *&self->_has |= 0x200000000uLL;
  v12 = *(v4 + 380);
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
  self->_faceDetectCamRectW = *(v4 + 51);
  *&self->_has |= 0x80000000uLL;
  v12 = *(v4 + 380);
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
  self->_faceDetectCamRectH = *(v4 + 50);
  *&self->_has |= 0x40000000uLL;
  v12 = *(v4 + 380);
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
  self->_bioCheckFaceDistance = *(v4 + 31);
  *&self->_has |= 0x4000uLL;
  v12 = *(v4 + 380);
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
  self->_bioCheckCamRectX = *(v4 + 29);
  *&self->_has |= 0x1000uLL;
  v12 = *(v4 + 380);
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
  self->_bioCheckCamRectY = *(v4 + 30);
  *&self->_has |= 0x2000uLL;
  v12 = *(v4 + 380);
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
  self->_bioCheckCamRectW = *(v4 + 28);
  *&self->_has |= 0x800uLL;
  v12 = *(v4 + 380);
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
  self->_bioCheckCamRectH = *(v4 + 27);
  *&self->_has |= 0x400uLL;
  v12 = *(v4 + 380);
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
  self->_probingPatternFaceDistance = *(v4 + 80);
  *&self->_has |= 0x1000000000000000uLL;
  v12 = *(v4 + 380);
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
  self->_probingPatternCamRectX = *(v4 + 78);
  *&self->_has |= 0x400000000000000uLL;
  v12 = *(v4 + 380);
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
  self->_probingPatternCamRectY = *(v4 + 79);
  *&self->_has |= 0x800000000000000uLL;
  v12 = *(v4 + 380);
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
  self->_probingPatternCamRectW = *(v4 + 77);
  *&self->_has |= 0x200000000000000uLL;
  if ((*(v4 + 380) & 0x100000000000000) != 0)
  {
LABEL_91:
    self->_probingPatternCamRectH = *(v4 + 76);
    *&self->_has |= 0x100000000000000uLL;
  }

LABEL_92:
  v13 = *(v4 + 97);
  if ((v13 & 0x20) != 0)
  {
    self->_asFailure = v4[353];
    *(&self->_has + 2) |= 0x20u;
    v13 = *(v4 + 97);
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

  self->_autoRetry = v4[355];
  *(&self->_has + 2) |= 0x80u;
  if ((*(v4 + 97) & 0x100) != 0)
  {
LABEL_95:
    self->_autoRetryAllowed = v4[356];
    *(&self->_has + 2) |= 0x100u;
  }

LABEL_96:
  v14 = *v5;
  if ((*v5 & 0x20000000) != 0)
  {
    self->_deviceOrientation = *(v4 + 49);
    *&self->_has |= 0x20000000uLL;
    v14 = *(v4 + 380);
  }

  if ((v14 & 0x20000000000000) != 0)
  {
    self->_matchIdentityCount = *(v4 + 73);
    *&self->_has |= 0x20000000000000uLL;
  }

  v21 = v4;
  if (*(v4 + 23))
  {
    [(AWDBiometricKitMatchAttempt *)self setCameraHWParameters:?];
    v4 = v21;
  }

  if ((v5[3] & 0x10) != 0)
  {
    self->_captureMethod = *(v4 + 48);
    *&self->_has |= 0x10000000uLL;
  }

  v15 = *(v5 + 2);
  if ((v15 & 0x20000) != 0)
  {
    self->_engagementInfoFeedbackNoFaceDetected = v4[365];
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

  self->_engagementInfoFeedbackFaceTooClose = v4[362];
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
  self->_engagementInfoFeedbackFaceTooFar = v4[363];
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
  self->_engagementInfoFeedbackPoseOutOfRange = v4[369];
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
  self->_engagementInfoFeedbackNoAttention = v4[364];
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
  self->_engagementInfoFeedbackFaceOccluded = v4[361];
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
  self->_engagementInfoFeedbackCameraObstructed = v4[360];
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
  self->_engagementInfoFeedbackPartialOutOfFOV = v4[367];
  *(&self->_has + 2) |= 0x80000u;
  if ((*(v5 + 2) & 0x800) != 0)
  {
LABEL_113:
    self->_combinedSequenceEnabled = v4[359];
    *(&self->_has + 2) |= 0x800u;
  }

LABEL_114:
  if ((*v5 & 8) != 0)
  {
    self->_overallTimeWithRetries = *(v4 + 7);
    *&self->_has |= 8uLL;
  }

  if ((v5[9] & 2) != 0)
  {
    self->_autoRetryEnabled = v4[357];
    *(&self->_has + 2) |= 0x200u;
  }

  v16 = [v4 identityCreationTimesCount];
  if (v16)
  {
    v17 = v16;
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