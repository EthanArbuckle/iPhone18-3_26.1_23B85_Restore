@interface WLKPlayEvent
- (WLKPlayEvent)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation WLKPlayEvent

- (WLKPlayEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v25.receiver = self;
    v25.super_class = WLKPlayEvent;
    v5 = [(WLKPlayEvent *)&v25 init];
    if (v5)
    {
      v6 = [dictionaryCopy wlk_stringForKey:@"bundleId"];
      v7 = [v6 copy];
      bundleID = v5->_bundleID;
      v5->_bundleID = v7;

      v9 = [dictionaryCopy wlk_stringForKey:@"channelId"];
      v10 = [v9 copy];
      channelID = v5->_channelID;
      v5->_channelID = v10;

      v12 = [dictionaryCopy wlk_stringForKey:@"externalPlayableId"];
      v13 = [v12 copy];
      externalPlayableID = v5->_externalPlayableID;
      v5->_externalPlayableID = v13;

      v15 = [dictionaryCopy wlk_stringForKey:@"showId"];
      v16 = [v15 copy];
      showID = v5->_showID;
      v5->_showID = v16;

      v5->_played = [dictionaryCopy wlk_BOOLForKey:@"isDone" defaultValue:0];
      v18 = [dictionaryCopy wlk_numberForKey:@"mediaLengthInSeconds"];
      v5->_duration = [v18 unsignedIntegerValue];

      v19 = [dictionaryCopy wlk_numberForKey:@"playCursorInSeconds"];
      v5->_elapsedTime = [v19 unsignedIntegerValue];

      v20 = [dictionaryCopy wlk_dateFromMillisecondsSince1970ForKey:@"occurredAt"];
      v21 = [v20 copy];
      occurrenceDate = v5->_occurrenceDate;
      v5->_occurrenceDate = v21;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_played)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p playableID:%@ played:%@ elapsed:%lu Date:%@>", v5, self, self->_externalPlayableID, v7, self->_elapsedTime, self->_occurrenceDate];

  return v8;
}

@end