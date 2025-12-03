@interface PLSearchIndexingEvent
- (PLSearchIndexingEvent)initWithDonationCount:(unint64_t)count deletionCount:(unint64_t)deletionCount timestamp:(id)timestamp sampleIdentifier:(id)identifier;
- (PLSearchIndexingEvent)initWithError:(id)error;
- (id)autoBugCaptureEventDictionary;
- (id)description;
@end

@implementation PLSearchIndexingEvent

- (id)description
{
  error = self->_error;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (error)
  {
    [v4 stringWithFormat:@"<%@ %p> Donation failure, error: %@", v6, self, self->_error, v10, v11, v12];
  }

  else
  {
    [v4 stringWithFormat:@"<%@ %p> Donation success, donation count: %lu, deletion count: %lu, timestamp: %@ sample identifier: %@", v6, self, self->_donationCount, self->_deletionCount, self->_timestamp, self->_sampleIdentifier];
  }
  v8 = ;

  return v8;
}

- (PLSearchIndexingEvent)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = PLSearchIndexingEvent;
  v5 = [(PLSearchIndexingEvent *)&v9 init];
  if (v5)
  {
    v6 = [errorCopy copy];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (PLSearchIndexingEvent)initWithDonationCount:(unint64_t)count deletionCount:(unint64_t)deletionCount timestamp:(id)timestamp sampleIdentifier:(id)identifier
{
  timestampCopy = timestamp;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = PLSearchIndexingEvent;
  v12 = [(PLSearchIndexingEvent *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_donationCount = count;
    v12->_deletionCount = deletionCount;
    v14 = [timestampCopy copy];
    timestamp = v13->_timestamp;
    v13->_timestamp = v14;

    v16 = [identifierCopy copy];
    sampleIdentifier = v13->_sampleIdentifier;
    v13->_sampleIdentifier = v16;
  }

  return v13;
}

- (id)autoBugCaptureEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = getkSymptomDiagnosticKeyEventName();
  [v3 setObject:@"SearchIndexDonation" forKeyedSubscript:v4];

  error = [(PLSearchIndexingEvent *)self error];

  if (error)
  {
    v6 = MEMORY[0x1E696AEC0];
    error2 = [(PLSearchIndexingEvent *)self error];
    domain = [error2 domain];
    error3 = [(PLSearchIndexingEvent *)self error];
    v10 = [v6 stringWithFormat:@"Failure - %@ - %lu", domain, objc_msgSend(error3, "code")];
    v11 = getkSymptomDiagnosticKeyEventResult();
    [v3 setObject:v10 forKeyedSubscript:v11];

    v12 = MEMORY[0x1E696AD98];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v14 = [v12 numberWithDouble:?];
    v15 = getkSymptomDiagnosticKeyTimestamp();
    [v3 setObject:v14 forKeyedSubscript:v15];
  }

  else
  {
    v16 = getkSymptomDiagnosticKeyEventResult();
    [v3 setObject:@"Success" forKeyedSubscript:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLSearchIndexingEvent donationCount](self, "donationCount")}];
    v18 = getkSymptomDiagnosticKeyEventCount();
    [v3 setObject:v17 forKeyedSubscript:v18];

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLSearchIndexingEvent deletionCount](self, "deletionCount")}];
    [v3 setObject:v19 forKeyedSubscript:@"DeletionCount"];

    v20 = MEMORY[0x1E696AD98];
    timestamp = [(PLSearchIndexingEvent *)self timestamp];
    [timestamp timeIntervalSinceReferenceDate];
    v22 = [v20 numberWithDouble:?];
    v23 = getkSymptomDiagnosticKeyTimestamp();
    [v3 setObject:v22 forKeyedSubscript:v23];

    date = [(PLSearchIndexingEvent *)self sampleIdentifier];
    [v3 setObject:date forKeyedSubscript:@"SampleIdentifier"];
  }

  v24 = [v3 copy];

  return v24;
}

@end