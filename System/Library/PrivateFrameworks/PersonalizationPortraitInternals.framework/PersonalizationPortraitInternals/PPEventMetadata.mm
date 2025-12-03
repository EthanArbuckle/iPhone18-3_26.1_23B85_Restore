@interface PPEventMetadata
+ (PPEventMetadata)eventMetadataWithTitlesAndParticipants:(id)participants earliestStartTime:(double)time eventCount:(unint64_t)count eventHasAlarmCount:(unint64_t)alarmCount;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEventMetadata:(id)metadata;
- (PPEventMetadata)initWithTitlesAndParticipants:(id)participants earliestStartTime:(double)time eventCount:(unint64_t)count eventHasAlarmCount:(unint64_t)alarmCount;
- (id)copyWithReplacementEarliestStartTime:(double)time;
- (id)copyWithReplacementEventCount:(unint64_t)count;
- (id)copyWithReplacementEventHasAlarmCount:(unint64_t)count;
- (id)copyWithReplacementTitlesAndParticipants:(id)participants;
- (id)description;
- (unint64_t)_hash;
@end

@implementation PPEventMetadata

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  titlesAndParticipants = self->_titlesAndParticipants;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_earliestStartTime];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_eventCount];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_eventHasAlarmCount];
  v8 = [v3 initWithFormat:@"<PPEventMetadata | titlesAndParticipants:%@ earliestStartTime:%@ eventCount:%@ eventHasAlarmCount:%@>", titlesAndParticipants, v5, v6, v7];

  return v8;
}

- (unint64_t)_hash
{
  v3 = [(NSDictionary *)self->_titlesAndParticipants hash];
  earliestStartTime = self->_earliestStartTime;
  if (earliestStartTime < 0.0)
  {
    earliestStartTime = -earliestStartTime;
  }

  *v4.i64 = floor(earliestStartTime + 0.5);
  v7 = (earliestStartTime - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v5, v4).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

  v10 = self->_eventCount - (v9 - v3 + 32 * v3) + 32 * (v9 - v3 + 32 * v3);
  return self->_eventHasAlarmCount - v10 + 32 * v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPEventMetadata *)self isEqualToEventMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToEventMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (!metadataCopy)
  {
    goto LABEL_9;
  }

  v6 = self->_titlesAndParticipants == 0;
  titlesAndParticipants = [metadataCopy titlesAndParticipants];
  v8 = titlesAndParticipants != 0;

  if (v6 == v8)
  {
    goto LABEL_9;
  }

  titlesAndParticipants = self->_titlesAndParticipants;
  if (titlesAndParticipants)
  {
    titlesAndParticipants2 = [v5 titlesAndParticipants];
    v11 = [(NSDictionary *)titlesAndParticipants isEqual:titlesAndParticipants2];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  [v5 earliestStartTime];
  earliestStartTime = self->_earliestStartTime;
  [v5 earliestStartTime];
  if (earliestStartTime == v13 && (eventCount = self->_eventCount, eventCount == [v5 eventCount]))
  {
    eventHasAlarmCount = self->_eventHasAlarmCount;
    v16 = eventHasAlarmCount == [v5 eventHasAlarmCount];
  }

  else
  {
LABEL_9:
    v16 = 0;
  }

  return v16;
}

- (id)copyWithReplacementEventHasAlarmCount:(unint64_t)count
{
  v5 = objc_alloc(objc_opt_class());
  titlesAndParticipants = self->_titlesAndParticipants;
  earliestStartTime = self->_earliestStartTime;
  eventCount = self->_eventCount;

  return [v5 initWithTitlesAndParticipants:titlesAndParticipants earliestStartTime:eventCount eventCount:count eventHasAlarmCount:earliestStartTime];
}

- (id)copyWithReplacementEventCount:(unint64_t)count
{
  v5 = objc_alloc(objc_opt_class());
  titlesAndParticipants = self->_titlesAndParticipants;
  earliestStartTime = self->_earliestStartTime;
  eventHasAlarmCount = self->_eventHasAlarmCount;

  return [v5 initWithTitlesAndParticipants:titlesAndParticipants earliestStartTime:count eventCount:eventHasAlarmCount eventHasAlarmCount:earliestStartTime];
}

- (id)copyWithReplacementEarliestStartTime:(double)time
{
  v5 = objc_alloc(objc_opt_class());
  titlesAndParticipants = self->_titlesAndParticipants;
  eventCount = self->_eventCount;
  eventHasAlarmCount = self->_eventHasAlarmCount;

  return [v5 initWithTitlesAndParticipants:titlesAndParticipants earliestStartTime:eventCount eventCount:eventHasAlarmCount eventHasAlarmCount:time];
}

- (id)copyWithReplacementTitlesAndParticipants:(id)participants
{
  participantsCopy = participants;
  v5 = [objc_alloc(objc_opt_class()) initWithTitlesAndParticipants:participantsCopy earliestStartTime:self->_eventCount eventCount:self->_eventHasAlarmCount eventHasAlarmCount:self->_earliestStartTime];

  return v5;
}

- (PPEventMetadata)initWithTitlesAndParticipants:(id)participants earliestStartTime:(double)time eventCount:(unint64_t)count eventHasAlarmCount:(unint64_t)alarmCount
{
  participantsCopy = participants;
  if (!participantsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPEventTuples.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"titlesAndParticipants != nil"}];
  }

  v17.receiver = self;
  v17.super_class = PPEventMetadata;
  v13 = [(PPEventMetadata *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_titlesAndParticipants, participants);
    v14->_earliestStartTime = time;
    v14->_eventCount = count;
    v14->_eventHasAlarmCount = alarmCount;
    v14->_ocnt_precomputedHash = [(PPEventMetadata *)v14 _hash];
  }

  return v14;
}

+ (PPEventMetadata)eventMetadataWithTitlesAndParticipants:(id)participants earliestStartTime:(double)time eventCount:(unint64_t)count eventHasAlarmCount:(unint64_t)alarmCount
{
  participantsCopy = participants;
  v11 = [[self alloc] initWithTitlesAndParticipants:participantsCopy earliestStartTime:count eventCount:alarmCount eventHasAlarmCount:time];

  return v11;
}

@end