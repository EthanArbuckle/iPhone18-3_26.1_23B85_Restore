@interface SCDAFParticipation
- (SCDAFParticipation)initWithAdvertisement:(id)a3 alarmState:(id)a4 boosts:(id)a5 cdaId:(id)a6 device:(id)a7 mediaState:(id)a8 nearbyDevices:(id)a9 rawGoodnessScore:(double)a10 requestId:(id)a11 requestStartDate:(id)a12 result:(unint64_t)a13 seenAdvertisements:(id)a14 timeSinceLastTriggerInMilliseconds:(id)a15 timeSinceLastWinInMilliseconds:(id)a16 timerState:(id)a17 triggerType:(id)a18 trumpReasons:(id)a19 userRequestText:(id)a20 voiceTriggerDate:(id)a21 winnerAdvertisement:(id)a22;
- (SCDAFParticipation)initWithAdvertisement:(id)a3 boosts:(id)a4 cdaId:(id)a5 rawGoodnessScore:(double)a6 requestStartDate:(id)a7 result:(unint64_t)a8 seenAdvertisements:(id)a9 timeSinceLastTriggerInMilliseconds:(id)a10 timeSinceLastWinInMilliseconds:(id)a11 triggerType:(id)a12 trumpReasons:(id)a13 voiceTriggerDate:(id)a14 winnerAdvertisement:(id)a15;
- (SCDAFParticipation)initWithCoder:(id)a3;
- (SCDAFParticipation)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initNearMiss;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCDAFParticipation

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SCDAFParticipation *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(SCDAFParticipation *)self advertisement];

  if (v4)
  {
    v5 = [(SCDAFParticipation *)self advertisement];
    v6 = [v5 dictionaryRepresentation];
    [v3 setObject:v6 forKeyedSubscript:@"advertisement"];
  }

  v7 = [(SCDAFParticipation *)self winnerAdvertisement];

  if (v7)
  {
    v8 = [(SCDAFParticipation *)self winnerAdvertisement];
    v9 = [v8 dictionaryRepresentation];
    [v3 setObject:v9 forKeyedSubscript:@"winnerAdvertisement"];
  }

  v10 = [(SCDAFParticipation *)self seenAdvertisements];

  if (v10)
  {
    v11 = [(SCDAFParticipation *)self seenAdvertisements];
    v12 = [SCDAFAdvertisement arrayDictionaryRepresentation:v11];
    [v3 setObject:v12 forKeyedSubscript:@"seenAdvertisements"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFParticipation result](self, "result")}];
  [v3 setObject:v13 forKeyedSubscript:@"result"];

  v14 = MEMORY[0x277CCABB0];
  [(SCDAFParticipation *)self rawGoodnessScore];
  v15 = [v14 numberWithDouble:?];
  [v3 setObject:v15 forKeyedSubscript:@"rawGoodnessScore"];

  v16 = [(SCDAFParticipation *)self device];

  if (v16)
  {
    v17 = [(SCDAFParticipation *)self device];
    v18 = [v17 dictionaryRepresentation];
    [v3 setObject:v18 forKeyedSubscript:@"device"];
  }

  v19 = [(SCDAFParticipation *)self requestStartDate];

  if (v19)
  {
    v20 = [(SCDAFParticipation *)self requestStartDate];
    [v3 setObject:v20 forKeyedSubscript:@"requestStartDate"];
  }

  v21 = [(SCDAFParticipation *)self voiceTriggerDate];

  if (v21)
  {
    v22 = [(SCDAFParticipation *)self voiceTriggerDate];
    [v3 setObject:v22 forKeyedSubscript:@"voiceTriggerDate"];
  }

  v23 = [(SCDAFParticipation *)self userRequestText];
  v24 = [v23 length];

  if (v24)
  {
    v25 = [(SCDAFParticipation *)self userRequestText];
    [v3 setObject:v25 forKeyedSubscript:@"userRequestText"];
  }

  v26 = [(SCDAFParticipation *)self trumpReasons];
  v27 = [v26 count];

  if (v27)
  {
    v28 = [(SCDAFParticipation *)self trumpReasons];
    [v3 setObject:v28 forKeyedSubscript:@"trumpReasons"];
  }

  v29 = [(SCDAFParticipation *)self nearbyDevices];
  v30 = [v29 count];

  if (v30)
  {
    v31 = [(SCDAFParticipation *)self nearbyDevices];
    v32 = [SCDAFDevice arrayDictionaryRepresentation:v31];
    [v3 setObject:v32 forKeyedSubscript:@"nearbyDevices"];
  }

  v33 = [(SCDAFParticipation *)self boosts];
  v34 = [v33 count];

  if (v34)
  {
    v35 = [(SCDAFParticipation *)self boosts];
    v36 = [SCDAFBoost arrayDictionaryRepresentation:v35];
    [v3 setObject:v36 forKeyedSubscript:@"boosts"];
  }

  v37 = [(SCDAFParticipation *)self requestId];
  v38 = [v37 length];

  if (v38)
  {
    v39 = [(SCDAFParticipation *)self requestId];
    [v3 setObject:v39 forKeyedSubscript:@"requestId"];
  }

  v40 = [(SCDAFParticipation *)self cdaId];
  v41 = [v40 length];

  if (v41)
  {
    v42 = [(SCDAFParticipation *)self cdaId];
    [v3 setObject:v42 forKeyedSubscript:@"cdaId"];
  }

  v43 = [(SCDAFParticipation *)self alarmState];
  [v3 setObject:v43 forKeyedSubscript:@"alarmState"];

  v44 = [(SCDAFParticipation *)self timerState];
  [v3 setObject:v44 forKeyedSubscript:@"timerState"];

  v45 = [(SCDAFParticipation *)self mediaState];
  [v3 setObject:v45 forKeyedSubscript:@"mediaState"];

  v46 = [(SCDAFParticipation *)self triggerType];
  [v3 setObject:v46 forKeyedSubscript:@"triggerType"];

  v47 = [(SCDAFParticipation *)self timeSinceLastWinInMilliseconds];
  [v3 setObject:v47 forKeyedSubscript:@"timeSinceLastWinInMilliseconds"];

  v48 = [(SCDAFParticipation *)self timeSinceTriggerInMilliseconds];
  [v3 setObject:v48 forKeyedSubscript:@"timeSinceTriggerInMilliseconds"];

  v49 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v49;
}

- (SCDAFParticipation)initWithCoder:(id)a3
{
  v3 = a3;
  v27 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"rawGoodnessScore"];
  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"requestStartDate"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"voiceTriggerDate"];
  v26 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"userRequestText"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"result"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"device"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"advertisement"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"winnerAdvertisement"];
  v25 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"seenAdvertisements"];
  v14 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"trumpReasons"];
  v18 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"boosts"];
  v13 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"nearbyDevices"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"cdaId"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"alarmState"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"timerState"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mediaState"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"triggerType"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"timeSinceLastWinInMilliseconds"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"timeSinceTriggerInMilliseconds"];

  v9 = [SCDAFParticipation alloc];
  [v27 floatValue];
  v15 = -[SCDAFParticipation initWithAdvertisement:alarmState:boosts:cdaId:device:mediaState:nearbyDevices:rawGoodnessScore:requestId:requestStartDate:result:seenAdvertisements:timeSinceLastTriggerInMilliseconds:timeSinceLastWinInMilliseconds:timerState:triggerType:trumpReasons:userRequestText:voiceTriggerDate:winnerAdvertisement:](v9, "initWithAdvertisement:alarmState:boosts:cdaId:device:mediaState:nearbyDevices:rawGoodnessScore:requestId:requestStartDate:result:seenAdvertisements:timeSinceLastTriggerInMilliseconds:timeSinceLastWinInMilliseconds:timerState:triggerType:trumpReasons:userRequestText:voiceTriggerDate:winnerAdvertisement:", v19, v5, v18, v17, v20, v16, v10, v13, v4, v28, [v22 integerValue], v25, v8, v7, v12, v6, v14, v26, v23, v24);

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  rawGoodnessScore = self->_rawGoodnessScore;
  v8 = a3;
  v6 = [v4 numberWithDouble:rawGoodnessScore];
  [v8 encodeObject:v6 forKey:@"rawGoodnessScore"];

  [v8 encodeObject:self->_requestStartDate forKey:@"requestStartDate"];
  [v8 encodeObject:self->_voiceTriggerDate forKey:@"voiceTriggerDate"];
  [v8 encodeObject:self->_userRequestText forKey:@"userRequestText"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_result];
  [v8 encodeObject:v7 forKey:@"result"];

  [v8 encodeObject:self->_device forKey:@"device"];
  [v8 encodeObject:self->_advertisement forKey:@"advertisement"];
  [v8 encodeObject:self->_winnerAdvertisement forKey:@"winnerAdvertisement"];
  [v8 encodeObject:self->_seenAdvertisements forKey:@"seenAdvertisements"];
  [v8 encodeObject:self->_boosts forKey:@"boosts"];
  [v8 encodeObject:self->_trumpReasons forKey:@"trumpReasons"];
  [v8 encodeObject:self->_nearbyDevices forKey:@"nearbyDevices"];
  [v8 encodeObject:self->_requestId forKey:@"requestId"];
  [v8 encodeObject:self->_cdaId forKey:@"cdaId"];
  [v8 encodeObject:self->_alarmState forKey:@"alarmState"];
  [v8 encodeObject:self->_timerState forKey:@"timerState"];
  [v8 encodeObject:self->_mediaState forKey:@"mediaState"];
  [v8 encodeObject:self->_triggerType forKey:@"triggerType"];
  [v8 encodeObject:self->_timeSinceLastWinInMilliseconds forKey:@"timeSinceLastWinInMilliseconds"];
  [v8 encodeObject:self->_timeSinceTriggerInMilliseconds forKey:@"timeSinceTriggerInMilliseconds"];
}

- (SCDAFParticipation)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v86.receiver = self;
  v86.super_class = SCDAFParticipation;
  v5 = [(SCDAFParticipation *)&v86 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"winnerAdvertisement"];

    if (v6)
    {
      v7 = [SCDAFAdvertisement alloc];
      v8 = [v4 objectForKeyedSubscript:@"advertisement"];
      v9 = [(SCDAFAdvertisement *)v7 initWithDictionaryRepresentation:v8];
      advertisement = v5->_advertisement;
      v5->_advertisement = v9;
    }

    v11 = [v4 objectForKeyedSubscript:@"result"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [v4 objectForKeyedSubscript:@"result"];
      v5->_result = [v13 integerValue];
    }

    v14 = [v4 objectForKeyedSubscript:@"boosts"];

    if (v14)
    {
      v15 = [v4 objectForKeyedSubscript:@"boosts"];
      v16 = [SCDAFBoost boostsArrayWithDictionaryRepresentation:v15];
      boosts = v5->_boosts;
      v5->_boosts = v16;
    }

    v18 = [v4 objectForKeyedSubscript:@"rawGoodnessScore"];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if (v19)
    {
      v20 = [v4 objectForKeyedSubscript:@"rawGoodnessScore"];
      v5->_rawGoodnessScore = [v20 integerValue];
    }

    v21 = [SCDAFDevice alloc];
    v22 = [v4 objectForKeyedSubscript:@"device"];
    v23 = [(SCDAFDevice *)v21 initWithDictionaryRepresentation:v22];
    device = v5->_device;
    v5->_device = v23;

    v25 = [v4 objectForKeyedSubscript:@"requestStartDate"];
    objc_opt_class();
    LOBYTE(v22) = objc_opt_isKindOfClass();

    if (v22)
    {
      v26 = [v4 objectForKeyedSubscript:@"requestStartDate"];
      requestStartDate = v5->_requestStartDate;
      v5->_requestStartDate = v26;
    }

    v28 = [v4 objectForKeyedSubscript:@"requestStartDate"];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if (v29)
    {
      v30 = [v4 objectForKeyedSubscript:@"voiceTriggerDate"];
      voiceTriggerDate = v5->_voiceTriggerDate;
      v5->_voiceTriggerDate = v30;
    }

    v32 = [v4 objectForKeyedSubscript:@"seenAdvertisements"];
    v33 = [SCDAFAdvertisement advertisementsArrayWithDictionaryRepresentation:v32];
    seenAdvertisements = v5->_seenAdvertisements;
    v5->_seenAdvertisements = v33;

    v35 = [MEMORY[0x277CBEB18] array];
    v36 = [v4 objectForKeyedSubscript:@"trumpReasons"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __55__SCDAFParticipation_initWithDictionaryRepresentation___block_invoke;
      v84[3] = &unk_279BD9E80;
      v85 = v35;
      [v36 enumerateObjectsUsingBlock:v84];
    }

    objc_storeStrong(&v5->_trumpReasons, v35);
    v37 = [v4 objectForKeyedSubscript:@"nearbyDevices"];
    v38 = [SCDAFDevice devicesArrayWithDictionaryRepresentation:v37];
    nearbyDevices = v5->_nearbyDevices;
    v5->_nearbyDevices = v38;

    v40 = [v4 objectForKeyedSubscript:@"userRequestText"];
    objc_opt_class();
    LOBYTE(v37) = objc_opt_isKindOfClass();

    if (v37)
    {
      v41 = [v4 objectForKeyedSubscript:@"userRequestText"];
      v42 = [v41 copy];
      userRequestText = v5->_userRequestText;
      v5->_userRequestText = v42;
    }

    v44 = [v4 objectForKeyedSubscript:@"winnerAdvertisement"];

    if (v44)
    {
      v45 = [SCDAFAdvertisement alloc];
      v46 = [v4 objectForKeyedSubscript:@"winnerAdvertisement"];
      v47 = [(SCDAFAdvertisement *)v45 initWithDictionaryRepresentation:v46];
      winnerAdvertisement = v5->_winnerAdvertisement;
      v5->_winnerAdvertisement = v47;
    }

    v49 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    v50 = objc_opt_isKindOfClass();

    if (v50)
    {
      v51 = [v4 objectForKeyedSubscript:@"requestId"];
      v52 = [v51 copy];
      requestId = v5->_requestId;
      v5->_requestId = v52;
    }

    v54 = [v4 objectForKeyedSubscript:@"cdaId"];
    objc_opt_class();
    v55 = objc_opt_isKindOfClass();

    if (v55)
    {
      v56 = [v4 objectForKeyedSubscript:@"cdaId"];
      v57 = [v56 copy];
      cdaId = v5->_cdaId;
      v5->_cdaId = v57;
    }

    v59 = [v4 objectForKeyedSubscript:@"alarmState"];
    objc_opt_class();
    v60 = objc_opt_isKindOfClass();

    if (v60)
    {
      v61 = [v4 objectForKeyedSubscript:@"alarmState"];
      alarmState = v5->_alarmState;
      v5->_alarmState = v61;
    }

    v63 = [v4 objectForKeyedSubscript:@"timerState"];
    objc_opt_class();
    v64 = objc_opt_isKindOfClass();

    if (v64)
    {
      v65 = [v4 objectForKeyedSubscript:@"timerState"];
      timerState = v5->_timerState;
      v5->_timerState = v65;
    }

    v67 = [v4 objectForKeyedSubscript:@"mediaState"];
    objc_opt_class();
    v68 = objc_opt_isKindOfClass();

    if (v68)
    {
      v69 = [v4 objectForKeyedSubscript:@"mediaState"];
      mediaState = v5->_mediaState;
      v5->_mediaState = v69;
    }

    v71 = [v4 objectForKeyedSubscript:@"triggerType"];
    objc_opt_class();
    v72 = objc_opt_isKindOfClass();

    if (v72)
    {
      v73 = [v4 objectForKeyedSubscript:@"triggerType"];
      triggerType = v5->_triggerType;
      v5->_triggerType = v73;
    }

    v75 = [v4 objectForKeyedSubscript:@"timeSinceLastWinInMilliseconds"];
    objc_opt_class();
    v76 = objc_opt_isKindOfClass();

    if (v76)
    {
      v77 = [v4 objectForKeyedSubscript:@"timeSinceLastWinInMilliseconds"];
      timeSinceLastWinInMilliseconds = v5->_timeSinceLastWinInMilliseconds;
      v5->_timeSinceLastWinInMilliseconds = v77;
    }

    v79 = [v4 objectForKeyedSubscript:@"timeSinceTriggerInMilliseconds"];
    objc_opt_class();
    v80 = objc_opt_isKindOfClass();

    if (v80)
    {
      v81 = [v4 objectForKeyedSubscript:@"timeSinceTriggerInMilliseconds"];
      timeSinceTriggerInMilliseconds = v5->_timeSinceTriggerInMilliseconds;
      v5->_timeSinceTriggerInMilliseconds = v81;
    }
  }

  return v5;
}

void __55__SCDAFParticipation_initWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v6 integerValue];
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    [v4 addObject:v5];
  }
}

- (SCDAFParticipation)initWithAdvertisement:(id)a3 alarmState:(id)a4 boosts:(id)a5 cdaId:(id)a6 device:(id)a7 mediaState:(id)a8 nearbyDevices:(id)a9 rawGoodnessScore:(double)a10 requestId:(id)a11 requestStartDate:(id)a12 result:(unint64_t)a13 seenAdvertisements:(id)a14 timeSinceLastTriggerInMilliseconds:(id)a15 timeSinceLastWinInMilliseconds:(id)a16 timerState:(id)a17 triggerType:(id)a18 trumpReasons:(id)a19 userRequestText:(id)a20 voiceTriggerDate:(id)a21 winnerAdvertisement:(id)a22
{
  v56 = a3;
  v41 = a4;
  v55 = a4;
  v42 = a5;
  v53 = a5;
  v52 = a6;
  v43 = a7;
  v49 = a7;
  v44 = a8;
  v48 = a8;
  v47 = a9;
  v28 = a11;
  v54 = a12;
  v51 = a14;
  v50 = a15;
  v29 = a16;
  v30 = a17;
  v31 = a18;
  v32 = a19;
  v33 = a20;
  v34 = a21;
  v46 = a22;
  v57.receiver = self;
  v57.super_class = SCDAFParticipation;
  v35 = [(SCDAFParticipation *)&v57 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_advertisement, a3);
    objc_storeStrong(&v36->_alarmState, v41);
    objc_storeStrong(&v36->_boosts, v42);
    objc_storeStrong(&v36->_cdaId, a6);
    objc_storeStrong(&v36->_device, v43);
    objc_storeStrong(&v36->_mediaState, v44);
    objc_storeStrong(&v36->_nearbyDevices, a9);
    v36->_rawGoodnessScore = a10;
    objc_storeStrong(&v36->_requestId, a11);
    objc_storeStrong(&v36->_requestStartDate, a12);
    v36->_result = a13;
    objc_storeStrong(&v36->_seenAdvertisements, a14);
    objc_storeStrong(&v36->_timeSinceTriggerInMilliseconds, a15);
    objc_storeStrong(&v36->_timeSinceLastWinInMilliseconds, a16);
    objc_storeStrong(&v36->_timerState, a17);
    objc_storeStrong(&v36->_triggerType, a18);
    objc_storeStrong(&v36->_trumpReasons, a19);
    objc_storeStrong(&v36->_voiceTriggerDate, a21);
    objc_storeStrong(&v36->_userRequestText, a20);
    objc_storeStrong(&v36->_winnerAdvertisement, a22);
    v37 = objc_alloc_init(SCDAFDevice);
    device = v36->_device;
    v36->_device = v37;
  }

  return v36;
}

- (SCDAFParticipation)initWithAdvertisement:(id)a3 boosts:(id)a4 cdaId:(id)a5 rawGoodnessScore:(double)a6 requestStartDate:(id)a7 result:(unint64_t)a8 seenAdvertisements:(id)a9 timeSinceLastTriggerInMilliseconds:(id)a10 timeSinceLastWinInMilliseconds:(id)a11 triggerType:(id)a12 trumpReasons:(id)a13 voiceTriggerDate:(id)a14 winnerAdvertisement:(id)a15
{
  v38 = a3;
  v37 = a4;
  v29 = a5;
  v36 = a5;
  v30 = a7;
  v35 = a7;
  v34 = a9;
  v33 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v39.receiver = self;
  v39.super_class = SCDAFParticipation;
  v25 = [(SCDAFParticipation *)&v39 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_advertisement, a3);
    objc_storeStrong(&v26->_boosts, a4);
    objc_storeStrong(&v26->_cdaId, v29);
    v26->_rawGoodnessScore = a6;
    objc_storeStrong(&v26->_requestStartDate, v30);
    v26->_result = a8;
    objc_storeStrong(&v26->_seenAdvertisements, a9);
    objc_storeStrong(&v26->_timeSinceTriggerInMilliseconds, a10);
    objc_storeStrong(&v26->_timeSinceLastWinInMilliseconds, a11);
    objc_storeStrong(&v26->_triggerType, a12);
    objc_storeStrong(&v26->_trumpReasons, a13);
    objc_storeStrong(&v26->_voiceTriggerDate, a14);
    objc_storeStrong(&v26->_winnerAdvertisement, a15);
  }

  return v26;
}

- (id)initNearMiss
{
  v7.receiver = self;
  v7.super_class = SCDAFParticipation;
  v2 = [(SCDAFParticipation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_result = 1;
    v4 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    requestStartDate = v3->_requestStartDate;
    v3->_requestStartDate = v4;
  }

  return v3;
}

@end