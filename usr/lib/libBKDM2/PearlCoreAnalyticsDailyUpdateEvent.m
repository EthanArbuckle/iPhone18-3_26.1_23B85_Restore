@interface PearlCoreAnalyticsDailyUpdateEvent
- (BOOL)postEventExtendedBy:(id)a3;
- (PearlCoreAnalyticsDailyUpdateEvent)initWithName:(id)a3 dictionary:(id)a4;
- (PearlCoreAnalyticsDailyUpdateEvent)initWithPersistedData;
- (void)calculateDailyValues;
- (void)reset;
- (void)updateDailyMatchValues:(id *)a3;
@end

@implementation PearlCoreAnalyticsDailyUpdateEvent

- (PearlCoreAnalyticsDailyUpdateEvent)initWithName:(id)a3 dictionary:(id)a4
{
  v6 = a3;
  v7 = [MEMORY[0x29EDB8E00] dictionaryWithDictionary:a4];
  v8 = [v7 objectForKey:@"yogiErrorDate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    [v7 removeObjectForKey:@"yogiErrorDate"];
  }

  else
  {
    v9 = 0;
  }

  v17.receiver = self;
  v17.super_class = PearlCoreAnalyticsDailyUpdateEvent;
  v10 = [(BiometricKitCoreAnalyticsEvent *)&v17 initWithName:v6 dictionary:v7];
  v11 = v10;
  if (v10)
  {
    v12 = *MEMORY[0x29EDBFD98];
    v13 = *(&v10->super.super.super.isa + v12);
    *(&v10->super.super.super.isa + v12) = &unk_2A1E03AD8;

    v14 = objc_alloc_init(AWDBiometricKitDailyUpdate);
    awdMetric = v11->super._awdMetric;
    v11->super._awdMetric = &v14->super;

    objc_storeStrong(&v11->_yogiErrorDate, v9);
  }

  return v11;
}

- (PearlCoreAnalyticsDailyUpdateEvent)initWithPersistedData
{
  v3.receiver = self;
  v3.super_class = PearlCoreAnalyticsDailyUpdateEvent;
  return [(BiometricKitCoreAnalyticsEvent *)&v3 initWithPersistedDataWithName:@"com.apple.biometrickit.pearl.dailyUpdate"];
}

- (void)calculateDailyValues
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
    *v24 = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "PearlCoreAnalyticsDailyUpdateEvent calculateDailyValues\n", v24, 2u);
  }

  if ([(NSNumber *)self->_totalMatchAttempts unsignedIntValue])
  {
    v4 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{1000 * -[NSNumber unsignedIntValue](self->_totalMatchAttemptsFailed, "unsignedIntValue") / -[NSNumber unsignedIntValue](self->_totalMatchAttempts, "unsignedIntValue")}];
    totalFRR = self->_totalFRR;
    self->_totalFRR = v4;
  }

  if ([(NSNumber *)self->_totalMatchAttemptsFaceDetected unsignedIntValue])
  {
    v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{1000 * -[NSNumber unsignedIntValue](self->_totalMatchAttemptsFaceDetectedFailed, "unsignedIntValue") / -[NSNumber unsignedIntValue](self->_totalMatchAttemptsFaceDetected, "unsignedIntValue")}];
    totalFaceDetectedFRR = self->_totalFaceDetectedFRR;
    self->_totalFaceDetectedFRR = v6;
  }

  if ([(NSNumber *)self->_matchAttemptsType0 unsignedIntValue])
  {
    v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{1000 * -[NSNumber unsignedIntValue](self->_matchAttemptsFailedType0, "unsignedIntValue") / -[NSNumber unsignedIntValue](self->_matchAttemptsType0, "unsignedIntValue")}];
    type0FRR = self->_type0FRR;
    self->_type0FRR = v8;
  }

  if ([(NSNumber *)self->_matchAttemptsFaceDetectedType0 unsignedIntValue])
  {
    v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{1000 * -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedFailedType0, "unsignedIntValue") / -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedType0, "unsignedIntValue")}];
    type0FaceDetectedFRR = self->_type0FaceDetectedFRR;
    self->_type0FaceDetectedFRR = v10;
  }

  if ([(NSNumber *)self->_matchAttemptsFaceDetectedType0NoGlasses unsignedIntValue])
  {
    v12 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{1000 * -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedFailedType0NoGlasses, "unsignedIntValue") / -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedType0NoGlasses, "unsignedIntValue")}];
    type0FaceDetectedNoGlassesFRR = self->_type0FaceDetectedNoGlassesFRR;
    self->_type0FaceDetectedNoGlassesFRR = v12;
  }

  if ([(NSNumber *)self->_matchAttemptsFaceDetectedType0WithGlasses unsignedIntValue])
  {
    v14 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{1000 * -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedFailedType0WithGlasses, "unsignedIntValue") / -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedType0WithGlasses, "unsignedIntValue")}];
    type0FaceDetectedWithGlassesFRR = self->_type0FaceDetectedWithGlassesFRR;
    self->_type0FaceDetectedWithGlassesFRR = v14;
  }

  if ([(NSNumber *)self->_matchAttemptsType1 unsignedIntValue])
  {
    v16 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{1000 * -[NSNumber unsignedIntValue](self->_matchAttemptsFailedType1, "unsignedIntValue") / -[NSNumber unsignedIntValue](self->_matchAttemptsType1, "unsignedIntValue")}];
    type1FRR = self->_type1FRR;
    self->_type1FRR = v16;
  }

  if ([(NSNumber *)self->_matchAttemptsFaceDetectedType1 unsignedIntValue])
  {
    v18 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{1000 * -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedFailedType1, "unsignedIntValue") / -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedType1, "unsignedIntValue")}];
    type1FaceDetectedFRR = self->_type1FaceDetectedFRR;
    self->_type1FaceDetectedFRR = v18;
  }

  if ([(NSNumber *)self->_matchAttemptsFaceDetectedType1NoGlasses unsignedIntValue])
  {
    v20 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{1000 * -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedFailedType1NoGlasses, "unsignedIntValue") / -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedType1NoGlasses, "unsignedIntValue")}];
    type1FaceDetectedNoGlassesFRR = self->_type1FaceDetectedNoGlassesFRR;
    self->_type1FaceDetectedNoGlassesFRR = v20;
  }

  if ([(NSNumber *)self->_matchAttemptsFaceDetectedType1WithGlasses unsignedIntValue])
  {
    v22 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{1000 * -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedFailedType1WithGlasses, "unsignedIntValue") / -[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedType1WithGlasses, "unsignedIntValue")}];
    type1FaceDetectedWithGlassesFRR = self->_type1FaceDetectedWithGlassesFRR;
    self->_type1FaceDetectedWithGlassesFRR = v22;
  }

  [(BiometricKitCoreAnalyticsEvent *)self updateBoundedFieldValue];
}

- (BOOL)postEventExtendedBy:(id)a3
{
  v6.receiver = self;
  v6.super_class = PearlCoreAnalyticsDailyUpdateEvent;
  v4 = [(PearlCoreAnalyticsEvent *)&v6 postEventExtendedBy:a3];
  [(BiometricKitCoreAnalyticsEvent *)self persistData];
  return v4;
}

- (void)reset
{
  v3 = self->_yogiErrorDate;
  v44.receiver = self;
  v44.super_class = PearlCoreAnalyticsDailyUpdateEvent;
  [(PearlCoreAnalyticsEvent *)&v44 reset];
  v4 = objc_alloc_init(AWDBiometricKitDailyUpdate);
  awdMetric = self->super._awdMetric;
  self->super._awdMetric = &v4->super;

  yogiErrorDate = self->_yogiErrorDate;
  self->_yogiErrorDate = v3;
  v7 = v3;

  totalMatchAttempts = self->_totalMatchAttempts;
  self->_totalMatchAttempts = &unk_2A1E03888;

  totalMatchAttemptsSuccessful = self->_totalMatchAttemptsSuccessful;
  self->_totalMatchAttemptsSuccessful = &unk_2A1E03888;

  totalMatchAttemptsFailed = self->_totalMatchAttemptsFailed;
  self->_totalMatchAttemptsFailed = &unk_2A1E03888;

  totalMatchAttemptsFaceDetected = self->_totalMatchAttemptsFaceDetected;
  self->_totalMatchAttemptsFaceDetected = &unk_2A1E03888;

  totalMatchAttemptsFaceDetectedSuccessful = self->_totalMatchAttemptsFaceDetectedSuccessful;
  self->_totalMatchAttemptsFaceDetectedSuccessful = &unk_2A1E03888;

  totalMatchAttemptsFaceDetectedFailed = self->_totalMatchAttemptsFaceDetectedFailed;
  self->_totalMatchAttemptsFaceDetectedFailed = &unk_2A1E03888;

  totalMatchAttemptsFaceDetectedNoGlasses = self->_totalMatchAttemptsFaceDetectedNoGlasses;
  self->_totalMatchAttemptsFaceDetectedNoGlasses = &unk_2A1E03888;

  totalMatchAttemptsFaceDetectedSuccessfulNoGlasses = self->_totalMatchAttemptsFaceDetectedSuccessfulNoGlasses;
  self->_totalMatchAttemptsFaceDetectedSuccessfulNoGlasses = &unk_2A1E03888;

  totalMatchAttemptsFaceDetectedFailedNoGlasses = self->_totalMatchAttemptsFaceDetectedFailedNoGlasses;
  self->_totalMatchAttemptsFaceDetectedFailedNoGlasses = &unk_2A1E03888;

  totalMatchAttemptsFaceDetectedWithGlasses = self->_totalMatchAttemptsFaceDetectedWithGlasses;
  self->_totalMatchAttemptsFaceDetectedWithGlasses = &unk_2A1E03888;

  totalMatchAttemptsFaceDetectedSuccessfulWithGlasses = self->_totalMatchAttemptsFaceDetectedSuccessfulWithGlasses;
  self->_totalMatchAttemptsFaceDetectedSuccessfulWithGlasses = &unk_2A1E03888;

  totalMatchAttemptsFaceDetectedFailedWithGlasses = self->_totalMatchAttemptsFaceDetectedFailedWithGlasses;
  self->_totalMatchAttemptsFaceDetectedFailedWithGlasses = &unk_2A1E03888;

  matchAttemptsType0 = self->_matchAttemptsType0;
  self->_matchAttemptsType0 = &unk_2A1E03888;

  matchAttemptsSuccessfulType0 = self->_matchAttemptsSuccessfulType0;
  self->_matchAttemptsSuccessfulType0 = &unk_2A1E03888;

  matchAttemptsFailedType0 = self->_matchAttemptsFailedType0;
  self->_matchAttemptsFailedType0 = &unk_2A1E03888;

  matchAttemptsFaceDetectedType0 = self->_matchAttemptsFaceDetectedType0;
  self->_matchAttemptsFaceDetectedType0 = &unk_2A1E03888;

  matchAttemptsFaceDetectedSuccessfulType0 = self->_matchAttemptsFaceDetectedSuccessfulType0;
  self->_matchAttemptsFaceDetectedSuccessfulType0 = &unk_2A1E03888;

  matchAttemptsFaceDetectedFailedType0 = self->_matchAttemptsFaceDetectedFailedType0;
  self->_matchAttemptsFaceDetectedFailedType0 = &unk_2A1E03888;

  matchAttemptsFaceDetectedType0NoGlasses = self->_matchAttemptsFaceDetectedType0NoGlasses;
  self->_matchAttemptsFaceDetectedType0NoGlasses = &unk_2A1E03888;

  matchAttemptsFaceDetectedSuccessfulType0NoGlasses = self->_matchAttemptsFaceDetectedSuccessfulType0NoGlasses;
  self->_matchAttemptsFaceDetectedSuccessfulType0NoGlasses = &unk_2A1E03888;

  matchAttemptsFaceDetectedFailedType0NoGlasses = self->_matchAttemptsFaceDetectedFailedType0NoGlasses;
  self->_matchAttemptsFaceDetectedFailedType0NoGlasses = &unk_2A1E03888;

  matchAttemptsFaceDetectedType0WithGlasses = self->_matchAttemptsFaceDetectedType0WithGlasses;
  self->_matchAttemptsFaceDetectedType0WithGlasses = &unk_2A1E03888;

  matchAttemptsFaceDetectedSuccessfulType0WithGlasses = self->_matchAttemptsFaceDetectedSuccessfulType0WithGlasses;
  self->_matchAttemptsFaceDetectedSuccessfulType0WithGlasses = &unk_2A1E03888;

  matchAttemptsFaceDetectedFailedType0WithGlasses = self->_matchAttemptsFaceDetectedFailedType0WithGlasses;
  self->_matchAttemptsFaceDetectedFailedType0WithGlasses = &unk_2A1E03888;

  matchAttemptsType1 = self->_matchAttemptsType1;
  self->_matchAttemptsType1 = &unk_2A1E03888;

  matchAttemptsSuccessfulType1 = self->_matchAttemptsSuccessfulType1;
  self->_matchAttemptsSuccessfulType1 = &unk_2A1E03888;

  matchAttemptsFailedType1 = self->_matchAttemptsFailedType1;
  self->_matchAttemptsFailedType1 = &unk_2A1E03888;

  matchAttemptsFaceDetectedType1 = self->_matchAttemptsFaceDetectedType1;
  self->_matchAttemptsFaceDetectedType1 = &unk_2A1E03888;

  matchAttemptsFaceDetectedSuccessfulType1 = self->_matchAttemptsFaceDetectedSuccessfulType1;
  self->_matchAttemptsFaceDetectedSuccessfulType1 = &unk_2A1E03888;

  matchAttemptsFaceDetectedFailedType1 = self->_matchAttemptsFaceDetectedFailedType1;
  self->_matchAttemptsFaceDetectedFailedType1 = &unk_2A1E03888;

  matchAttemptsFaceDetectedType1NoGlasses = self->_matchAttemptsFaceDetectedType1NoGlasses;
  self->_matchAttemptsFaceDetectedType1NoGlasses = &unk_2A1E03888;

  matchAttemptsFaceDetectedSuccessfulType1NoGlasses = self->_matchAttemptsFaceDetectedSuccessfulType1NoGlasses;
  self->_matchAttemptsFaceDetectedSuccessfulType1NoGlasses = &unk_2A1E03888;

  matchAttemptsFaceDetectedFailedType1NoGlasses = self->_matchAttemptsFaceDetectedFailedType1NoGlasses;
  self->_matchAttemptsFaceDetectedFailedType1NoGlasses = &unk_2A1E03888;

  matchAttemptsFaceDetectedType1WithGlasses = self->_matchAttemptsFaceDetectedType1WithGlasses;
  self->_matchAttemptsFaceDetectedType1WithGlasses = &unk_2A1E03888;

  matchAttemptsFaceDetectedSuccessfulType1WithGlasses = self->_matchAttemptsFaceDetectedSuccessfulType1WithGlasses;
  self->_matchAttemptsFaceDetectedSuccessfulType1WithGlasses = &unk_2A1E03888;

  matchAttemptsFaceDetectedFailedType1WithGlasses = self->_matchAttemptsFaceDetectedFailedType1WithGlasses;
  self->_matchAttemptsFaceDetectedFailedType1WithGlasses = &unk_2A1E03888;
}

- (void)updateDailyMatchValues:(id *)a3
{
  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_totalMatchAttempts, "unsignedIntValue") + 1}];
  totalMatchAttempts = self->_totalMatchAttempts;
  self->_totalMatchAttempts = v5;

  if (BYTE5(a3->var2) == 1)
  {
    v7 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_totalMatchAttemptsSuccessful, "unsignedIntValue") + 1}];
    totalMatchAttemptsSuccessful = self->_totalMatchAttemptsSuccessful;
    self->_totalMatchAttemptsSuccessful = v7;

    if (a3->var39.var6)
    {
      v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsType1, "unsignedIntValue") + 1}];
      matchAttemptsType1 = self->_matchAttemptsType1;
      self->_matchAttemptsType1 = v9;

      v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsSuccessfulType1, "unsignedIntValue") + 1}];
      matchAttemptsSuccessfulType1 = self->_matchAttemptsSuccessfulType1;
      self->_matchAttemptsSuccessfulType1 = v11;

      if (!*(&a3->var9 + 1))
      {
        v13 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_totalMatchAttemptsFaceDetected, "unsignedIntValue") + 1}];
        totalMatchAttemptsFaceDetected = self->_totalMatchAttemptsFaceDetected;
        self->_totalMatchAttemptsFaceDetected = v13;

        v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_totalMatchAttemptsFaceDetectedSuccessful, "unsignedIntValue") + 1}];
        totalMatchAttemptsFaceDetectedSuccessful = self->_totalMatchAttemptsFaceDetectedSuccessful;
        self->_totalMatchAttemptsFaceDetectedSuccessful = v15;

        v17 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedType1, "unsignedIntValue") + 1}];
        matchAttemptsFaceDetectedType1 = self->_matchAttemptsFaceDetectedType1;
        self->_matchAttemptsFaceDetectedType1 = v17;

        v19 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedSuccessfulType1, "unsignedIntValue") + 1}];
        matchAttemptsFaceDetectedSuccessfulType1 = self->_matchAttemptsFaceDetectedSuccessfulType1;
        self->_matchAttemptsFaceDetectedSuccessfulType1 = v19;

        v21 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedNoGlasses;
        v22 = !a3->var39.var7;
        if (a3->var39.var7)
        {
          v21 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedWithGlasses;
          v23 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedSuccessfulWithGlasses;
        }

        else
        {
          v23 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedSuccessfulNoGlasses;
        }

        if (a3->var39.var7)
        {
          v24 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedType1WithGlasses;
        }

        else
        {
          v24 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedType1NoGlasses;
        }

        v25 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedSuccessfulType1NoGlasses;
        v26 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedSuccessfulType1WithGlasses;
LABEL_36:
        if (v22)
        {
          v65 = v25;
        }

        else
        {
          v65 = v26;
        }

        v66 = *v21;
        v67 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(*(&self->super.super.super.isa + v66), "unsignedIntValue") + 1}];
        v68 = *(&self->super.super.super.isa + v66);
        *(&self->super.super.super.isa + v66) = v67;

        v69 = *v23;
        v70 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(*(&self->super.super.super.isa + v69), "unsignedIntValue") + 1}];
        v71 = *(&self->super.super.super.isa + v69);
        *(&self->super.super.super.isa + v69) = v70;

        v72 = *v24;
        v73 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(*(&self->super.super.super.isa + v72), "unsignedIntValue") + 1}];
        v74 = *(&self->super.super.super.isa + v72);
        *(&self->super.super.super.isa + v72) = v73;

        v75 = *v65;
        v76 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(*(&self->super.super.super.isa + v75), "unsignedIntValue") + 1}];
        v77 = *(&self->super.super.super.isa + v75);
        *(&self->super.super.super.isa + v75) = v76;
      }
    }

    else
    {
      v41 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsType0, "unsignedIntValue") + 1}];
      matchAttemptsType0 = self->_matchAttemptsType0;
      self->_matchAttemptsType0 = v41;

      v43 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsSuccessfulType0, "unsignedIntValue") + 1}];
      matchAttemptsSuccessfulType0 = self->_matchAttemptsSuccessfulType0;
      self->_matchAttemptsSuccessfulType0 = v43;

      if (!*(&a3->var9 + 1))
      {
        v45 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_totalMatchAttemptsFaceDetected, "unsignedIntValue") + 1}];
        v46 = self->_totalMatchAttemptsFaceDetected;
        self->_totalMatchAttemptsFaceDetected = v45;

        v47 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_totalMatchAttemptsFaceDetectedSuccessful, "unsignedIntValue") + 1}];
        v48 = self->_totalMatchAttemptsFaceDetectedSuccessful;
        self->_totalMatchAttemptsFaceDetectedSuccessful = v47;

        v49 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedType0, "unsignedIntValue") + 1}];
        matchAttemptsFaceDetectedType0 = self->_matchAttemptsFaceDetectedType0;
        self->_matchAttemptsFaceDetectedType0 = v49;

        v51 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedSuccessfulType0, "unsignedIntValue") + 1}];
        matchAttemptsFaceDetectedSuccessfulType0 = self->_matchAttemptsFaceDetectedSuccessfulType0;
        self->_matchAttemptsFaceDetectedSuccessfulType0 = v51;

        v21 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedNoGlasses;
        v22 = !a3->var39.var7;
        if (a3->var39.var7)
        {
          v21 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedWithGlasses;
          v23 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedSuccessfulWithGlasses;
        }

        else
        {
          v23 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedSuccessfulNoGlasses;
        }

        if (a3->var39.var7)
        {
          v24 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedType0WithGlasses;
        }

        else
        {
          v24 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedType0NoGlasses;
        }

        v25 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedSuccessfulType0NoGlasses;
        v26 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedSuccessfulType0WithGlasses;
        goto LABEL_36;
      }
    }
  }

  else
  {
    v27 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_totalMatchAttemptsFailed, "unsignedIntValue") + 1}];
    totalMatchAttemptsFailed = self->_totalMatchAttemptsFailed;
    self->_totalMatchAttemptsFailed = v27;

    if (a3->var39.var6)
    {
      v29 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsType1, "unsignedIntValue") + 1}];
      v30 = self->_matchAttemptsType1;
      self->_matchAttemptsType1 = v29;

      v31 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsFailedType1, "unsignedIntValue") + 1}];
      matchAttemptsFailedType1 = self->_matchAttemptsFailedType1;
      self->_matchAttemptsFailedType1 = v31;

      if (!*(&a3->var9 + 1))
      {
        v33 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_totalMatchAttemptsFaceDetected, "unsignedIntValue") + 1}];
        v34 = self->_totalMatchAttemptsFaceDetected;
        self->_totalMatchAttemptsFaceDetected = v33;

        v35 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_totalMatchAttemptsFaceDetectedFailed, "unsignedIntValue") + 1}];
        totalMatchAttemptsFaceDetectedFailed = self->_totalMatchAttemptsFaceDetectedFailed;
        self->_totalMatchAttemptsFaceDetectedFailed = v35;

        v37 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedType1, "unsignedIntValue") + 1}];
        v38 = self->_matchAttemptsFaceDetectedType1;
        self->_matchAttemptsFaceDetectedType1 = v37;

        v39 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedFailedType1, "unsignedIntValue") + 1}];
        matchAttemptsFaceDetectedFailedType1 = self->_matchAttemptsFaceDetectedFailedType1;
        self->_matchAttemptsFaceDetectedFailedType1 = v39;

        v21 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedNoGlasses;
        v22 = !a3->var39.var7;
        if (a3->var39.var7)
        {
          v21 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedWithGlasses;
          v23 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedFailedWithGlasses;
        }

        else
        {
          v23 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedFailedNoGlasses;
        }

        if (a3->var39.var7)
        {
          v24 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedType1WithGlasses;
        }

        else
        {
          v24 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedType1NoGlasses;
        }

        v25 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedFailedType1NoGlasses;
        v26 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedFailedType1WithGlasses;
        goto LABEL_36;
      }
    }

    else
    {
      v53 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsType0, "unsignedIntValue") + 1}];
      v54 = self->_matchAttemptsType0;
      self->_matchAttemptsType0 = v53;

      v55 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsFailedType0, "unsignedIntValue") + 1}];
      matchAttemptsFailedType0 = self->_matchAttemptsFailedType0;
      self->_matchAttemptsFailedType0 = v55;

      if (!*(&a3->var9 + 1))
      {
        v57 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_totalMatchAttemptsFaceDetected, "unsignedIntValue") + 1}];
        v58 = self->_totalMatchAttemptsFaceDetected;
        self->_totalMatchAttemptsFaceDetected = v57;

        v59 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_totalMatchAttemptsFaceDetectedFailed, "unsignedIntValue") + 1}];
        v60 = self->_totalMatchAttemptsFaceDetectedFailed;
        self->_totalMatchAttemptsFaceDetectedFailed = v59;

        v61 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedType0, "unsignedIntValue") + 1}];
        v62 = self->_matchAttemptsFaceDetectedType0;
        self->_matchAttemptsFaceDetectedType0 = v61;

        v63 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_matchAttemptsFaceDetectedFailedType0, "unsignedIntValue") + 1}];
        matchAttemptsFaceDetectedFailedType0 = self->_matchAttemptsFaceDetectedFailedType0;
        self->_matchAttemptsFaceDetectedFailedType0 = v63;

        v21 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedNoGlasses;
        v22 = !a3->var39.var7;
        if (a3->var39.var7)
        {
          v21 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedWithGlasses;
          v23 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedFailedWithGlasses;
        }

        else
        {
          v23 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__totalMatchAttemptsFaceDetectedFailedNoGlasses;
        }

        if (a3->var39.var7)
        {
          v24 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedType0WithGlasses;
        }

        else
        {
          v24 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedType0NoGlasses;
        }

        v25 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedFailedType0NoGlasses;
        v26 = &OBJC_IVAR___PearlCoreAnalyticsDailyUpdateEvent__matchAttemptsFaceDetectedFailedType0WithGlasses;
        goto LABEL_36;
      }
    }
  }

  [(BiometricKitCoreAnalyticsEvent *)self persistData];
}

@end