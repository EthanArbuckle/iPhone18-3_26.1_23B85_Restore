@interface PearlCoreAnalyticsSecureFaceDetectEvent
- (BOOL)calculateAndCheckValues;
- (BOOL)postEventExtendedBy:(id)a3;
- (PearlCoreAnalyticsSecureFaceDetectEvent)initWithName:(id)a3;
- (PearlCoreAnalyticsSecureFaceDetectEvent)initWithName:(id)a3 dictionary:(id)a4;
- (void)calculateAndCheckValues;
- (void)reset;
- (void)updateStatus;
@end

@implementation PearlCoreAnalyticsSecureFaceDetectEvent

- (PearlCoreAnalyticsSecureFaceDetectEvent)initWithName:(id)a3
{
  v18[6] = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = PearlCoreAnalyticsSecureFaceDetectEvent;
  v3 = [(PearlCoreAnalyticsEvent *)&v15 initWithName:a3];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x29EDBFD98];
    v6 = *(&v3->super.super.super.isa + v5);
    v18[0] = *MEMORY[0x29EDBFDB8];
    v18[1] = @"sequenceStartDate";
    v18[2] = @"sequenceEndDate";
    v18[3] = @"sessionID";
    v18[4] = @"timeout";
    v18[5] = @"lastFeedback";
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v18 count:6];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];
    v9 = *(&v4->super.super.super.isa + v5);
    *(&v4->super.super.super.isa + v5) = v8;

    v16 = @"secureFaceDetectTimeBounded";
    v17 = 0x2A1E03978;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = *MEMORY[0x29EDBFD88];
    v12 = *(&v4->super.super.super.isa + v11);
    *(&v4->super.super.super.isa + v11) = v10;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v4;
}

- (PearlCoreAnalyticsSecureFaceDetectEvent)initWithName:(id)a3 dictionary:(id)a4
{
  v6 = a3;
  v7 = [MEMORY[0x29EDB8E00] dictionaryWithDictionary:a4];
  v8 = [v7 objectForKey:@"sequenceStartDate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PearlCoreAnalyticsSecureFaceDetectEvent *)self initWithName:&v16 dictionary:&v17];
LABEL_9:
    sequenceEndDate = v15;
    v9 = v16;
    v11 = v17;
    goto LABEL_5;
  }

  [v7 removeObjectForKey:@"sequenceStartDate"];
  v9 = [v7 objectForKey:@"sequenceEndDate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PearlCoreAnalyticsSecureFaceDetectEvent *)self initWithName:v9 dictionary:&v15, &v16, &v17];
    goto LABEL_9;
  }

  [v7 removeObjectForKey:@"sequenceEndDate"];
  v14.receiver = self;
  v14.super_class = PearlCoreAnalyticsSecureFaceDetectEvent;
  v10 = [(BiometricKitCoreAnalyticsEvent *)&v14 initWithName:v6 dictionary:v7];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sequenceStartDate, v8);
    v9 = v9;
    sequenceEndDate = v11->_sequenceEndDate;
    v11->_sequenceEndDate = v9;
LABEL_5:
  }

  return v11;
}

- (BOOL)postEventExtendedBy:(id)a3
{
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_ERROR, "PearlCoreAnalyticsSecureFaceDetectEvent postEvent unsupported\n", v5, 2u);
  }

  return 0;
}

- (void)updateStatus
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (BOOL)calculateAndCheckValues
{
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v20 = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "PearlCoreAnalyticsSecureFaceDetectEvent calculateAndCheckValues\n", v20, 2u);
  }

  if (self->_sequenceStartDate)
  {
    sequenceEndDate = self->_sequenceEndDate;
    if (sequenceEndDate)
    {
      v5 = MEMORY[0x29EDBA070];
      [(NSDate *)sequenceEndDate timeIntervalSinceDate:?];
      v7 = [v5 numberWithUnsignedLongLong:(v6 * 1000.0)];
      secureFaceDetectTime = self->_secureFaceDetectTime;
      self->_secureFaceDetectTime = v7;

      v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_secureFaceDetectTime, "unsignedIntValue") / 0xAuLL}];
      secureFaceDetectTimeBounded = self->_secureFaceDetectTimeBounded;
      self->_secureFaceDetectTimeBounded = v9;

      if ([(NSNumber *)self->_secureFaceDetectFaceDetected BOOLValue])
      {
        v11 = &unk_2A1E03858;
      }

      else
      {
        if (([(NSNumber *)self->_lastFeedback unsignedIntValue]& 0x10) != 0)
        {
          v13 = MEMORY[0x29EDBA070];
          v14 = ![(NSNumber *)self->_timeout BOOLValue];
          v15 = 12;
          v16 = 18;
        }

        else if (([(NSNumber *)self->_lastFeedback unsignedIntValue]& 2) != 0)
        {
          v13 = MEMORY[0x29EDBA070];
          v14 = ![(NSNumber *)self->_timeout BOOLValue];
          v15 = 13;
          v16 = 19;
        }

        else if (([(NSNumber *)self->_lastFeedback unsignedIntValue]& 4) != 0)
        {
          v13 = MEMORY[0x29EDBA070];
          v14 = ![(NSNumber *)self->_timeout BOOLValue];
          v15 = 14;
          v16 = 20;
        }

        else if (([(NSNumber *)self->_lastFeedback unsignedIntValue]& 0x20) != 0 || ([(NSNumber *)self->_lastFeedback unsignedIntValue]& 0x800) != 0)
        {
          v13 = MEMORY[0x29EDBA070];
          v14 = ![(NSNumber *)self->_timeout BOOLValue];
          v15 = 16;
          v16 = 22;
        }

        else
        {
          v12 = [(NSNumber *)self->_lastFeedback unsignedIntValue];
          v13 = MEMORY[0x29EDBA070];
          v14 = ![(NSNumber *)self->_timeout BOOLValue];
          if ((v12 & 8) != 0)
          {
            v15 = 15;
            v16 = 21;
          }

          else
          {
            v15 = 11;
            v16 = 17;
          }
        }

        if (v14)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        v11 = [v13 numberWithInt:v17];
      }

      secureFaceDetectResult = self->_secureFaceDetectResult;
      self->_secureFaceDetectResult = v11;

      [(BiometricKitCoreAnalyticsEvent *)self updateBoundedFieldValue];
    }

    else
    {
      [PearlCoreAnalyticsSecureFaceDetectEvent calculateAndCheckValues];
    }
  }

  else
  {
    [PearlCoreAnalyticsSecureFaceDetectEvent calculateAndCheckValues];
  }

  return 1;
}

- (void)reset
{
  v21.receiver = self;
  v21.super_class = PearlCoreAnalyticsSecureFaceDetectEvent;
  [(PearlCoreAnalyticsEvent *)&v21 reset];
  secureFaceDetectFaceDetected = self->_secureFaceDetectFaceDetected;
  v4 = MEMORY[0x29EDB8EA8];
  self->_secureFaceDetectFaceDetected = MEMORY[0x29EDB8EA8];

  secureFaceDetectPayingAttention = self->_secureFaceDetectPayingAttention;
  self->_secureFaceDetectPayingAttention = v4;

  secureFaceDetectOccludedFeatures = self->_secureFaceDetectOccludedFeatures;
  self->_secureFaceDetectOccludedFeatures = v4;

  secureFaceDetectCoachingStatusNoFaceDetected = self->_secureFaceDetectCoachingStatusNoFaceDetected;
  self->_secureFaceDetectCoachingStatusNoFaceDetected = v4;

  secureFaceDetectCoachingStatusFaceTooClose = self->_secureFaceDetectCoachingStatusFaceTooClose;
  self->_secureFaceDetectCoachingStatusFaceTooClose = v4;

  secureFaceDetectCoachingStatusFaceTooFar = self->_secureFaceDetectCoachingStatusFaceTooFar;
  self->_secureFaceDetectCoachingStatusFaceTooFar = v4;

  secureFaceDetectCoachingStatusPoseOutOfRange = self->_secureFaceDetectCoachingStatusPoseOutOfRange;
  self->_secureFaceDetectCoachingStatusPoseOutOfRange = v4;

  secureFaceDetectCoachingStatusNoAttention = self->_secureFaceDetectCoachingStatusNoAttention;
  self->_secureFaceDetectCoachingStatusNoAttention = v4;

  secureFaceDetectCoachingStatusFaceOccluded = self->_secureFaceDetectCoachingStatusFaceOccluded;
  self->_secureFaceDetectCoachingStatusFaceOccluded = v4;

  secureFaceDetectCoachingStatusCameraObstructed = self->_secureFaceDetectCoachingStatusCameraObstructed;
  self->_secureFaceDetectCoachingStatusCameraObstructed = v4;

  secureFaceDetectCoachingStatusPartialOutOfFOV = self->_secureFaceDetectCoachingStatusPartialOutOfFOV;
  self->_secureFaceDetectCoachingStatusPartialOutOfFOV = v4;

  secureFaceDetectCoachingStatusDepthCameraObstructed = self->_secureFaceDetectCoachingStatusDepthCameraObstructed;
  self->_secureFaceDetectCoachingStatusDepthCameraObstructed = v4;

  secureFaceDetectCoachingStatusFPDFailure = self->_secureFaceDetectCoachingStatusFPDFailure;
  self->_secureFaceDetectCoachingStatusFPDFailure = v4;

  secureFaceDetectCoachingStatusPoseMarginal = self->_secureFaceDetectCoachingStatusPoseMarginal;
  self->_secureFaceDetectCoachingStatusPoseMarginal = v4;

  secureFaceDetectCoachingStatusNoseAndMouthOccluded = self->_secureFaceDetectCoachingStatusNoseAndMouthOccluded;
  self->_secureFaceDetectCoachingStatusNoseAndMouthOccluded = v4;

  secureFaceDetectFrameCount = self->_secureFaceDetectFrameCount;
  self->_secureFaceDetectFrameCount = &unk_2A1E03858;

  secureFaceDetectResult = self->_secureFaceDetectResult;
  self->_secureFaceDetectResult = &unk_2A1E03870;
}

- (void)initWithName:(void *)a3 dictionary:(void *)a4 .cold.1(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v8 = __osLog;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v11 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v12 = 51;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, 0x30u);
  }

  *a4 = 0;
  *a3 = 0;
  *a2 = a1;
  v9 = *MEMORY[0x29EDCA608];
}

- (void)initWithName:(void *)a3 dictionary:(void *)a4 .cold.2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v15 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v10 = __osLog;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v13 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v14 = 54;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v12, 0x30u);
  }

  *a5 = 0;
  *a4 = a2;
  *a3 = a1;
  v11 = *MEMORY[0x29EDCA608];
}

- (void)calculateAndCheckValues
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

@end