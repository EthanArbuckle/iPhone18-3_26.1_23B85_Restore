@interface RTPeopleDiscoverySingleContactRecord
- (RTPeopleDiscoverySingleContactRecord)initWithCoder:(id)a3;
- (RTPeopleDiscoverySingleContactRecord)initWithContactID:(id)a3 withAdvertisement:(id)a4;
- (double)getTotalInteractionDuration;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (void)closeInteractionSession:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mergeWithAnotherSingleContactRecord:(id)a3;
- (void)updateRSSIDistribution:(int64_t)a3;
- (void)updateSingleContactRecordOnAdvReceived:(id)a3;
@end

@implementation RTPeopleDiscoverySingleContactRecord

- (RTPeopleDiscoverySingleContactRecord)initWithContactID:(id)a3 withAdvertisement:(id)a4
{
  v23[5] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = RTPeopleDiscoverySingleContactRecord;
  v9 = [(RTPeopleDiscoverySingleContactRecord *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactID, a3);
    v11 = [v8 scanDate];
    firstObservation = v10->_firstObservation;
    v10->_firstObservation = v11;

    v13 = [v8 scanDate];
    latestAdvertisementDate = v10->_latestAdvertisementDate;
    v10->_latestAdvertisementDate = v13;

    v10->_numAdvReceived = 1;
    v22[0] = &unk_28459CE28;
    v22[1] = &unk_28459CE58;
    v23[0] = &unk_28459CE40;
    v23[1] = &unk_28459CE40;
    v22[2] = &unk_28459CE70;
    v22[3] = &unk_28459CE88;
    v23[2] = &unk_28459CE40;
    v23[3] = &unk_28459CE40;
    v22[4] = &unk_28459CEA0;
    v23[4] = &unk_28459CE40;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v15];
    RSSIDistribution = v10->_RSSIDistribution;
    v10->_RSSIDistribution = v16;

    -[RTPeopleDiscoverySingleContactRecord updateRSSIDistribution:](v10, "updateRSSIDistribution:", [v8 rssi]);
    v18 = objc_alloc_init(MEMORY[0x277CBEA60]);
    interactionSessions = v10->_interactionSessions;
    v10->_interactionSessions = v18;
  }

  return v10;
}

- (void)updateSingleContactRecordOnAdvReceived:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    latestAdvertisementDate = self->_latestAdvertisementDate;
    v7 = [v4 scanDate];
    v8 = [(NSDate *)latestAdvertisementDate compare:v7];

    if (v8 != 1)
    {
      v9 = [v5 scanDate];
      v10 = self->_latestAdvertisementDate;
      self->_latestAdvertisementDate = v9;

      -[RTPeopleDiscoverySingleContactRecord updateRSSIDistribution:](self, "updateRSSIDistribution:", [v5 rssi]);
    }

    ++self->_numAdvReceived;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: advertisement", v12, 2u);
    }
  }
}

- (void)closeInteractionSession:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        contactID = self->_contactID;
        v15 = 138412290;
        v16 = contactID;
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "Closing current interaction session for contact %@", &v15, 0xCu);
      }
    }

    v7 = objc_alloc(MEMORY[0x277D011C0]);
    latestAdvertisementDate = self->_latestAdvertisementDate;
    p_latestAdvertisementDate = &self->_latestAdvertisementDate;
    v10 = [v7 initWithFirstObject:*(p_latestAdvertisementDate - 1) secondObject:latestAdvertisementDate];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:p_latestAdvertisementDate[3]];
    [(NSDate *)v11 addObject:v10];
    v12 = p_latestAdvertisementDate[3];
    p_latestAdvertisementDate[3] = v11;
    v13 = v11;

    objc_storeStrong(p_latestAdvertisementDate - 1, a3);
    objc_storeStrong(p_latestAdvertisementDate, a3);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: nextSessionStartDate", &v15, 2u);
    }
  }
}

- (double)getTotalInteractionDuration
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_interactionSessions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 secondObject];
        v11 = [v9 firstObject];
        [v10 timeIntervalSinceDate:v11];
        v7 = v7 + v12;
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  [(NSDate *)self->_latestAdvertisementDate timeIntervalSinceDate:self->_firstObservation];
  return v7 + v13;
}

- (void)updateRSSIDistribution:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_RSSIDistribution;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if ([v10 integerValue] < a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = [(NSMutableDictionary *)self->_RSSIDistribution objectForKeyedSubscript:v11];
    v13 = [v12 integerValue];

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13 + 1];
    [(NSMutableDictionary *)self->_RSSIDistribution setObject:v14 forKeyedSubscript:v11];
  }

  else
  {
LABEL_9:

LABEL_12:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v20 = a3;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Update RSSI distribution failed, RSSI: %ld", buf, 0xCu);
    }
  }
}

- (void)mergeWithAnotherSingleContactRecord:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  contactID = self->_contactID;
  v6 = [v4 contactID];

  if (contactID == v6)
  {
    self->_numAdvReceived += [v4 numAdvReceived];
    firstObservation = self->_firstObservation;
    v8 = [v4 firstObservation];
    v9 = [(NSDate *)firstObservation earlierDate:v8];
    v10 = self->_firstObservation;
    self->_firstObservation = v9;

    v11 = [v4 latestAdvertisementDate];
    latestAdvertisementDate = self->_latestAdvertisementDate;
    if (v11)
    {
      v13 = [v4 latestAdvertisementDate];
      v14 = [(NSDate *)latestAdvertisementDate laterDate:v13];
      v15 = self->_latestAdvertisementDate;
      self->_latestAdvertisementDate = v14;
    }

    else
    {
      v16 = latestAdvertisementDate;
      v13 = self->_latestAdvertisementDate;
      self->_latestAdvertisementDate = v16;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [v4 RSSIDistribution];
    v17 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v30 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          v21 = [(NSMutableDictionary *)self->_RSSIDistribution objectForKeyedSubscript:v20];

          if (v21)
          {
            v22 = [(NSMutableDictionary *)self->_RSSIDistribution objectForKeyedSubscript:v20];
            v23 = [v22 integerValue];
            [v4 RSSIDistribution];
            v25 = v24 = v4;
            v26 = [v25 objectForKeyedSubscript:v20];
            v27 = [v26 integerValue];

            v4 = v24;
            v28 = [MEMORY[0x277CCABB0] numberWithInteger:v27 + v23];
            [(NSMutableDictionary *)self->_RSSIDistribution setObject:v28 forKeyedSubscript:v20];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v18);
    }
  }
}

- (id)descriptionDictionary
{
  v12[4] = *MEMORY[0x277D85DE8];
  contactID = self->_contactID;
  firstObservation = self->_firstObservation;
  v12[0] = contactID;
  v11[0] = @"ContactID";
  v11[1] = @"firstObservation";
  v5 = [(NSDate *)firstObservation getFormattedDateString];
  v12[1] = v5;
  v11[2] = @"lastObservation";
  latestAdvertisementDate = self->_latestAdvertisementDate;
  if (latestAdvertisementDate)
  {
    v7 = [(NSDate *)self->_latestAdvertisementDate getFormattedDateString];
  }

  else
  {
    v7 = @"-";
  }

  v12[2] = v7;
  v11[3] = @"numOfObservations";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numAdvReceived];
  v12[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  if (latestAdvertisementDate)
  {
  }

  return v9;
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(RTPeopleDiscoverySingleContactRecord *)self descriptionDictionary];
  v11 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v2 error:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", buf, 0x16u);
    }

    v6 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NSString *)self->_contactID copy];
  v6 = [(NSDate *)self->_firstObservation copy];
  v7 = [v4 initWithContactID:v5 withAdvertisement:v6];

  return v7;
}

- (RTPeopleDiscoverySingleContactRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = RTPeopleDiscoverySingleContactRecord;
  v5 = [(RTPeopleDiscoverySingleContactRecord *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ContactID"];
    contactID = v5->_contactID;
    v5->_contactID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstObservation"];
    firstObservation = v5->_firstObservation;
    v5->_firstObservation = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastObservation"];
    latestAdvertisementDate = v5->_latestAdvertisementDate;
    v5->_latestAdvertisementDate = v10;

    v5->_numAdvReceived = [v4 decodeIntegerForKey:@"numOfObservations"];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"RSSIDistribution"];
    RSSIDistribution = v5->_RSSIDistribution;
    v5->_RSSIDistribution = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contactID = self->_contactID;
  v5 = a3;
  [v5 encodeObject:contactID forKey:@"ContactID"];
  [v5 encodeObject:self->_firstObservation forKey:@"firstObservation"];
  [v5 encodeObject:self->_latestAdvertisementDate forKey:@"lastObservation"];
  [v5 encodeInteger:self->_numAdvReceived forKey:@"numOfObservations"];
  [v5 encodeObject:self->_RSSIDistribution forKey:@"RSSIDistribution"];
}

@end