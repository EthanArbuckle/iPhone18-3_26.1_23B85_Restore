@interface SCDAFParticipation
- (SCDAFParticipation)initWithAdvertisement:(id)advertisement alarmState:(id)state boosts:(id)boosts cdaId:(id)id device:(id)device mediaState:(id)mediaState nearbyDevices:(id)devices rawGoodnessScore:(double)self0 requestId:(id)self1 requestStartDate:(id)self2 result:(unint64_t)self3 seenAdvertisements:(id)self4 timeSinceLastTriggerInMilliseconds:(id)self5 timeSinceLastWinInMilliseconds:(id)self6 timerState:(id)self7 triggerType:(id)self8 trumpReasons:(id)self9 userRequestText:(id)text voiceTriggerDate:(id)triggerDate winnerAdvertisement:(id)winnerAdvertisement;
- (SCDAFParticipation)initWithAdvertisement:(id)advertisement boosts:(id)boosts cdaId:(id)id rawGoodnessScore:(double)score requestStartDate:(id)date result:(unint64_t)result seenAdvertisements:(id)advertisements timeSinceLastTriggerInMilliseconds:(id)self0 timeSinceLastWinInMilliseconds:(id)self1 triggerType:(id)self2 trumpReasons:(id)self3 voiceTriggerDate:(id)self4 winnerAdvertisement:(id)self5;
- (SCDAFParticipation)initWithCoder:(id)coder;
- (SCDAFParticipation)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initNearMiss;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCDAFParticipation

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  dictionaryRepresentation = [(SCDAFParticipation *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", dictionaryRepresentation];

  return v4;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  advertisement = [(SCDAFParticipation *)self advertisement];

  if (advertisement)
  {
    advertisement2 = [(SCDAFParticipation *)self advertisement];
    dictionaryRepresentation = [advertisement2 dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"advertisement"];
  }

  winnerAdvertisement = [(SCDAFParticipation *)self winnerAdvertisement];

  if (winnerAdvertisement)
  {
    winnerAdvertisement2 = [(SCDAFParticipation *)self winnerAdvertisement];
    dictionaryRepresentation2 = [winnerAdvertisement2 dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"winnerAdvertisement"];
  }

  seenAdvertisements = [(SCDAFParticipation *)self seenAdvertisements];

  if (seenAdvertisements)
  {
    seenAdvertisements2 = [(SCDAFParticipation *)self seenAdvertisements];
    v12 = [SCDAFAdvertisement arrayDictionaryRepresentation:seenAdvertisements2];
    [dictionary setObject:v12 forKeyedSubscript:@"seenAdvertisements"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFParticipation result](self, "result")}];
  [dictionary setObject:v13 forKeyedSubscript:@"result"];

  v14 = MEMORY[0x277CCABB0];
  [(SCDAFParticipation *)self rawGoodnessScore];
  v15 = [v14 numberWithDouble:?];
  [dictionary setObject:v15 forKeyedSubscript:@"rawGoodnessScore"];

  device = [(SCDAFParticipation *)self device];

  if (device)
  {
    device2 = [(SCDAFParticipation *)self device];
    dictionaryRepresentation3 = [device2 dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"device"];
  }

  requestStartDate = [(SCDAFParticipation *)self requestStartDate];

  if (requestStartDate)
  {
    requestStartDate2 = [(SCDAFParticipation *)self requestStartDate];
    [dictionary setObject:requestStartDate2 forKeyedSubscript:@"requestStartDate"];
  }

  voiceTriggerDate = [(SCDAFParticipation *)self voiceTriggerDate];

  if (voiceTriggerDate)
  {
    voiceTriggerDate2 = [(SCDAFParticipation *)self voiceTriggerDate];
    [dictionary setObject:voiceTriggerDate2 forKeyedSubscript:@"voiceTriggerDate"];
  }

  userRequestText = [(SCDAFParticipation *)self userRequestText];
  v24 = [userRequestText length];

  if (v24)
  {
    userRequestText2 = [(SCDAFParticipation *)self userRequestText];
    [dictionary setObject:userRequestText2 forKeyedSubscript:@"userRequestText"];
  }

  trumpReasons = [(SCDAFParticipation *)self trumpReasons];
  v27 = [trumpReasons count];

  if (v27)
  {
    trumpReasons2 = [(SCDAFParticipation *)self trumpReasons];
    [dictionary setObject:trumpReasons2 forKeyedSubscript:@"trumpReasons"];
  }

  nearbyDevices = [(SCDAFParticipation *)self nearbyDevices];
  v30 = [nearbyDevices count];

  if (v30)
  {
    nearbyDevices2 = [(SCDAFParticipation *)self nearbyDevices];
    v32 = [SCDAFDevice arrayDictionaryRepresentation:nearbyDevices2];
    [dictionary setObject:v32 forKeyedSubscript:@"nearbyDevices"];
  }

  boosts = [(SCDAFParticipation *)self boosts];
  v34 = [boosts count];

  if (v34)
  {
    boosts2 = [(SCDAFParticipation *)self boosts];
    v36 = [SCDAFBoost arrayDictionaryRepresentation:boosts2];
    [dictionary setObject:v36 forKeyedSubscript:@"boosts"];
  }

  requestId = [(SCDAFParticipation *)self requestId];
  v38 = [requestId length];

  if (v38)
  {
    requestId2 = [(SCDAFParticipation *)self requestId];
    [dictionary setObject:requestId2 forKeyedSubscript:@"requestId"];
  }

  cdaId = [(SCDAFParticipation *)self cdaId];
  v41 = [cdaId length];

  if (v41)
  {
    cdaId2 = [(SCDAFParticipation *)self cdaId];
    [dictionary setObject:cdaId2 forKeyedSubscript:@"cdaId"];
  }

  alarmState = [(SCDAFParticipation *)self alarmState];
  [dictionary setObject:alarmState forKeyedSubscript:@"alarmState"];

  timerState = [(SCDAFParticipation *)self timerState];
  [dictionary setObject:timerState forKeyedSubscript:@"timerState"];

  mediaState = [(SCDAFParticipation *)self mediaState];
  [dictionary setObject:mediaState forKeyedSubscript:@"mediaState"];

  triggerType = [(SCDAFParticipation *)self triggerType];
  [dictionary setObject:triggerType forKeyedSubscript:@"triggerType"];

  timeSinceLastWinInMilliseconds = [(SCDAFParticipation *)self timeSinceLastWinInMilliseconds];
  [dictionary setObject:timeSinceLastWinInMilliseconds forKeyedSubscript:@"timeSinceLastWinInMilliseconds"];

  timeSinceTriggerInMilliseconds = [(SCDAFParticipation *)self timeSinceTriggerInMilliseconds];
  [dictionary setObject:timeSinceTriggerInMilliseconds forKeyedSubscript:@"timeSinceTriggerInMilliseconds"];

  v49 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v49;
}

- (SCDAFParticipation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawGoodnessScore"];
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestStartDate"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voiceTriggerDate"];
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userRequestText"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"advertisement"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"winnerAdvertisement"];
  v25 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"seenAdvertisements"];
  v14 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"trumpReasons"];
  v18 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"boosts"];
  v13 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"nearbyDevices"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cdaId"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alarmState"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timerState"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaState"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeSinceLastWinInMilliseconds"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeSinceTriggerInMilliseconds"];

  v9 = [SCDAFParticipation alloc];
  [v27 floatValue];
  v15 = -[SCDAFParticipation initWithAdvertisement:alarmState:boosts:cdaId:device:mediaState:nearbyDevices:rawGoodnessScore:requestId:requestStartDate:result:seenAdvertisements:timeSinceLastTriggerInMilliseconds:timeSinceLastWinInMilliseconds:timerState:triggerType:trumpReasons:userRequestText:voiceTriggerDate:winnerAdvertisement:](v9, "initWithAdvertisement:alarmState:boosts:cdaId:device:mediaState:nearbyDevices:rawGoodnessScore:requestId:requestStartDate:result:seenAdvertisements:timeSinceLastTriggerInMilliseconds:timeSinceLastWinInMilliseconds:timerState:triggerType:trumpReasons:userRequestText:voiceTriggerDate:winnerAdvertisement:", v19, v5, v18, v17, v20, v16, v10, v13, v4, v28, [v22 integerValue], v25, v8, v7, v12, v6, v14, v26, v23, v24);

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  rawGoodnessScore = self->_rawGoodnessScore;
  coderCopy = coder;
  v6 = [v4 numberWithDouble:rawGoodnessScore];
  [coderCopy encodeObject:v6 forKey:@"rawGoodnessScore"];

  [coderCopy encodeObject:self->_requestStartDate forKey:@"requestStartDate"];
  [coderCopy encodeObject:self->_voiceTriggerDate forKey:@"voiceTriggerDate"];
  [coderCopy encodeObject:self->_userRequestText forKey:@"userRequestText"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_result];
  [coderCopy encodeObject:v7 forKey:@"result"];

  [coderCopy encodeObject:self->_device forKey:@"device"];
  [coderCopy encodeObject:self->_advertisement forKey:@"advertisement"];
  [coderCopy encodeObject:self->_winnerAdvertisement forKey:@"winnerAdvertisement"];
  [coderCopy encodeObject:self->_seenAdvertisements forKey:@"seenAdvertisements"];
  [coderCopy encodeObject:self->_boosts forKey:@"boosts"];
  [coderCopy encodeObject:self->_trumpReasons forKey:@"trumpReasons"];
  [coderCopy encodeObject:self->_nearbyDevices forKey:@"nearbyDevices"];
  [coderCopy encodeObject:self->_requestId forKey:@"requestId"];
  [coderCopy encodeObject:self->_cdaId forKey:@"cdaId"];
  [coderCopy encodeObject:self->_alarmState forKey:@"alarmState"];
  [coderCopy encodeObject:self->_timerState forKey:@"timerState"];
  [coderCopy encodeObject:self->_mediaState forKey:@"mediaState"];
  [coderCopy encodeObject:self->_triggerType forKey:@"triggerType"];
  [coderCopy encodeObject:self->_timeSinceLastWinInMilliseconds forKey:@"timeSinceLastWinInMilliseconds"];
  [coderCopy encodeObject:self->_timeSinceTriggerInMilliseconds forKey:@"timeSinceTriggerInMilliseconds"];
}

- (SCDAFParticipation)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v86.receiver = self;
  v86.super_class = SCDAFParticipation;
  v5 = [(SCDAFParticipation *)&v86 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"winnerAdvertisement"];

    if (v6)
    {
      v7 = [SCDAFAdvertisement alloc];
      v8 = [representationCopy objectForKeyedSubscript:@"advertisement"];
      v9 = [(SCDAFAdvertisement *)v7 initWithDictionaryRepresentation:v8];
      advertisement = v5->_advertisement;
      v5->_advertisement = v9;
    }

    v11 = [representationCopy objectForKeyedSubscript:@"result"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [representationCopy objectForKeyedSubscript:@"result"];
      v5->_result = [v13 integerValue];
    }

    v14 = [representationCopy objectForKeyedSubscript:@"boosts"];

    if (v14)
    {
      v15 = [representationCopy objectForKeyedSubscript:@"boosts"];
      v16 = [SCDAFBoost boostsArrayWithDictionaryRepresentation:v15];
      boosts = v5->_boosts;
      v5->_boosts = v16;
    }

    v18 = [representationCopy objectForKeyedSubscript:@"rawGoodnessScore"];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if (v19)
    {
      v20 = [representationCopy objectForKeyedSubscript:@"rawGoodnessScore"];
      v5->_rawGoodnessScore = [v20 integerValue];
    }

    v21 = [SCDAFDevice alloc];
    v22 = [representationCopy objectForKeyedSubscript:@"device"];
    v23 = [(SCDAFDevice *)v21 initWithDictionaryRepresentation:v22];
    device = v5->_device;
    v5->_device = v23;

    v25 = [representationCopy objectForKeyedSubscript:@"requestStartDate"];
    objc_opt_class();
    LOBYTE(v22) = objc_opt_isKindOfClass();

    if (v22)
    {
      v26 = [representationCopy objectForKeyedSubscript:@"requestStartDate"];
      requestStartDate = v5->_requestStartDate;
      v5->_requestStartDate = v26;
    }

    v28 = [representationCopy objectForKeyedSubscript:@"requestStartDate"];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if (v29)
    {
      v30 = [representationCopy objectForKeyedSubscript:@"voiceTriggerDate"];
      voiceTriggerDate = v5->_voiceTriggerDate;
      v5->_voiceTriggerDate = v30;
    }

    v32 = [representationCopy objectForKeyedSubscript:@"seenAdvertisements"];
    v33 = [SCDAFAdvertisement advertisementsArrayWithDictionaryRepresentation:v32];
    seenAdvertisements = v5->_seenAdvertisements;
    v5->_seenAdvertisements = v33;

    array = [MEMORY[0x277CBEB18] array];
    v36 = [representationCopy objectForKeyedSubscript:@"trumpReasons"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __55__SCDAFParticipation_initWithDictionaryRepresentation___block_invoke;
      v84[3] = &unk_279BD9E80;
      v85 = array;
      [v36 enumerateObjectsUsingBlock:v84];
    }

    objc_storeStrong(&v5->_trumpReasons, array);
    v37 = [representationCopy objectForKeyedSubscript:@"nearbyDevices"];
    v38 = [SCDAFDevice devicesArrayWithDictionaryRepresentation:v37];
    nearbyDevices = v5->_nearbyDevices;
    v5->_nearbyDevices = v38;

    v40 = [representationCopy objectForKeyedSubscript:@"userRequestText"];
    objc_opt_class();
    LOBYTE(v37) = objc_opt_isKindOfClass();

    if (v37)
    {
      v41 = [representationCopy objectForKeyedSubscript:@"userRequestText"];
      v42 = [v41 copy];
      userRequestText = v5->_userRequestText;
      v5->_userRequestText = v42;
    }

    v44 = [representationCopy objectForKeyedSubscript:@"winnerAdvertisement"];

    if (v44)
    {
      v45 = [SCDAFAdvertisement alloc];
      v46 = [representationCopy objectForKeyedSubscript:@"winnerAdvertisement"];
      v47 = [(SCDAFAdvertisement *)v45 initWithDictionaryRepresentation:v46];
      winnerAdvertisement = v5->_winnerAdvertisement;
      v5->_winnerAdvertisement = v47;
    }

    v49 = [representationCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    v50 = objc_opt_isKindOfClass();

    if (v50)
    {
      v51 = [representationCopy objectForKeyedSubscript:@"requestId"];
      v52 = [v51 copy];
      requestId = v5->_requestId;
      v5->_requestId = v52;
    }

    v54 = [representationCopy objectForKeyedSubscript:@"cdaId"];
    objc_opt_class();
    v55 = objc_opt_isKindOfClass();

    if (v55)
    {
      v56 = [representationCopy objectForKeyedSubscript:@"cdaId"];
      v57 = [v56 copy];
      cdaId = v5->_cdaId;
      v5->_cdaId = v57;
    }

    v59 = [representationCopy objectForKeyedSubscript:@"alarmState"];
    objc_opt_class();
    v60 = objc_opt_isKindOfClass();

    if (v60)
    {
      v61 = [representationCopy objectForKeyedSubscript:@"alarmState"];
      alarmState = v5->_alarmState;
      v5->_alarmState = v61;
    }

    v63 = [representationCopy objectForKeyedSubscript:@"timerState"];
    objc_opt_class();
    v64 = objc_opt_isKindOfClass();

    if (v64)
    {
      v65 = [representationCopy objectForKeyedSubscript:@"timerState"];
      timerState = v5->_timerState;
      v5->_timerState = v65;
    }

    v67 = [representationCopy objectForKeyedSubscript:@"mediaState"];
    objc_opt_class();
    v68 = objc_opt_isKindOfClass();

    if (v68)
    {
      v69 = [representationCopy objectForKeyedSubscript:@"mediaState"];
      mediaState = v5->_mediaState;
      v5->_mediaState = v69;
    }

    v71 = [representationCopy objectForKeyedSubscript:@"triggerType"];
    objc_opt_class();
    v72 = objc_opt_isKindOfClass();

    if (v72)
    {
      v73 = [representationCopy objectForKeyedSubscript:@"triggerType"];
      triggerType = v5->_triggerType;
      v5->_triggerType = v73;
    }

    v75 = [representationCopy objectForKeyedSubscript:@"timeSinceLastWinInMilliseconds"];
    objc_opt_class();
    v76 = objc_opt_isKindOfClass();

    if (v76)
    {
      v77 = [representationCopy objectForKeyedSubscript:@"timeSinceLastWinInMilliseconds"];
      timeSinceLastWinInMilliseconds = v5->_timeSinceLastWinInMilliseconds;
      v5->_timeSinceLastWinInMilliseconds = v77;
    }

    v79 = [representationCopy objectForKeyedSubscript:@"timeSinceTriggerInMilliseconds"];
    objc_opt_class();
    v80 = objc_opt_isKindOfClass();

    if (v80)
    {
      v81 = [representationCopy objectForKeyedSubscript:@"timeSinceTriggerInMilliseconds"];
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

- (SCDAFParticipation)initWithAdvertisement:(id)advertisement alarmState:(id)state boosts:(id)boosts cdaId:(id)id device:(id)device mediaState:(id)mediaState nearbyDevices:(id)devices rawGoodnessScore:(double)self0 requestId:(id)self1 requestStartDate:(id)self2 result:(unint64_t)self3 seenAdvertisements:(id)self4 timeSinceLastTriggerInMilliseconds:(id)self5 timeSinceLastWinInMilliseconds:(id)self6 timerState:(id)self7 triggerType:(id)self8 trumpReasons:(id)self9 userRequestText:(id)text voiceTriggerDate:(id)triggerDate winnerAdvertisement:(id)winnerAdvertisement
{
  advertisementCopy = advertisement;
  stateCopy = state;
  stateCopy2 = state;
  boostsCopy = boosts;
  boostsCopy2 = boosts;
  idCopy = id;
  deviceCopy = device;
  deviceCopy2 = device;
  mediaStateCopy = mediaState;
  mediaStateCopy2 = mediaState;
  devicesCopy = devices;
  requestIdCopy = requestId;
  dateCopy = date;
  advertisementsCopy = advertisements;
  millisecondsCopy = milliseconds;
  inMillisecondsCopy = inMilliseconds;
  timerStateCopy = timerState;
  typeCopy = type;
  reasonsCopy = reasons;
  textCopy = text;
  triggerDateCopy = triggerDate;
  winnerAdvertisementCopy = winnerAdvertisement;
  v57.receiver = self;
  v57.super_class = SCDAFParticipation;
  v35 = [(SCDAFParticipation *)&v57 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_advertisement, advertisement);
    objc_storeStrong(&v36->_alarmState, stateCopy);
    objc_storeStrong(&v36->_boosts, boostsCopy);
    objc_storeStrong(&v36->_cdaId, id);
    objc_storeStrong(&v36->_device, deviceCopy);
    objc_storeStrong(&v36->_mediaState, mediaStateCopy);
    objc_storeStrong(&v36->_nearbyDevices, devices);
    v36->_rawGoodnessScore = score;
    objc_storeStrong(&v36->_requestId, requestId);
    objc_storeStrong(&v36->_requestStartDate, date);
    v36->_result = result;
    objc_storeStrong(&v36->_seenAdvertisements, advertisements);
    objc_storeStrong(&v36->_timeSinceTriggerInMilliseconds, milliseconds);
    objc_storeStrong(&v36->_timeSinceLastWinInMilliseconds, inMilliseconds);
    objc_storeStrong(&v36->_timerState, timerState);
    objc_storeStrong(&v36->_triggerType, type);
    objc_storeStrong(&v36->_trumpReasons, reasons);
    objc_storeStrong(&v36->_voiceTriggerDate, triggerDate);
    objc_storeStrong(&v36->_userRequestText, text);
    objc_storeStrong(&v36->_winnerAdvertisement, winnerAdvertisement);
    v37 = objc_alloc_init(SCDAFDevice);
    device = v36->_device;
    v36->_device = v37;
  }

  return v36;
}

- (SCDAFParticipation)initWithAdvertisement:(id)advertisement boosts:(id)boosts cdaId:(id)id rawGoodnessScore:(double)score requestStartDate:(id)date result:(unint64_t)result seenAdvertisements:(id)advertisements timeSinceLastTriggerInMilliseconds:(id)self0 timeSinceLastWinInMilliseconds:(id)self1 triggerType:(id)self2 trumpReasons:(id)self3 voiceTriggerDate:(id)self4 winnerAdvertisement:(id)self5
{
  advertisementCopy = advertisement;
  boostsCopy = boosts;
  idCopy = id;
  idCopy2 = id;
  dateCopy = date;
  dateCopy2 = date;
  advertisementsCopy = advertisements;
  millisecondsCopy = milliseconds;
  inMillisecondsCopy = inMilliseconds;
  typeCopy = type;
  reasonsCopy = reasons;
  triggerDateCopy = triggerDate;
  winnerAdvertisementCopy = winnerAdvertisement;
  v39.receiver = self;
  v39.super_class = SCDAFParticipation;
  v25 = [(SCDAFParticipation *)&v39 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_advertisement, advertisement);
    objc_storeStrong(&v26->_boosts, boosts);
    objc_storeStrong(&v26->_cdaId, idCopy);
    v26->_rawGoodnessScore = score;
    objc_storeStrong(&v26->_requestStartDate, dateCopy);
    v26->_result = result;
    objc_storeStrong(&v26->_seenAdvertisements, advertisements);
    objc_storeStrong(&v26->_timeSinceTriggerInMilliseconds, milliseconds);
    objc_storeStrong(&v26->_timeSinceLastWinInMilliseconds, inMilliseconds);
    objc_storeStrong(&v26->_triggerType, type);
    objc_storeStrong(&v26->_trumpReasons, reasons);
    objc_storeStrong(&v26->_voiceTriggerDate, triggerDate);
    objc_storeStrong(&v26->_winnerAdvertisement, winnerAdvertisement);
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