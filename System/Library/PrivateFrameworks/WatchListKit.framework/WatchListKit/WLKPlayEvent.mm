@interface WLKPlayEvent
- (WLKPlayEvent)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation WLKPlayEvent

- (WLKPlayEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v25.receiver = self;
    v25.super_class = WLKPlayEvent;
    v5 = [(WLKPlayEvent *)&v25 init];
    if (v5)
    {
      v6 = [v4 wlk_stringForKey:@"bundleId"];
      v7 = [v6 copy];
      bundleID = v5->_bundleID;
      v5->_bundleID = v7;

      v9 = [v4 wlk_stringForKey:@"channelId"];
      v10 = [v9 copy];
      channelID = v5->_channelID;
      v5->_channelID = v10;

      v12 = [v4 wlk_stringForKey:@"externalPlayableId"];
      v13 = [v12 copy];
      externalPlayableID = v5->_externalPlayableID;
      v5->_externalPlayableID = v13;

      v15 = [v4 wlk_stringForKey:@"showId"];
      v16 = [v15 copy];
      showID = v5->_showID;
      v5->_showID = v16;

      v5->_played = [v4 wlk_BOOLForKey:@"isDone" defaultValue:0];
      v18 = [v4 wlk_numberForKey:@"mediaLengthInSeconds"];
      v5->_duration = [v18 unsignedIntegerValue];

      v19 = [v4 wlk_numberForKey:@"playCursorInSeconds"];
      v5->_elapsedTime = [v19 unsignedIntegerValue];

      v20 = [v4 wlk_dateFromMillisecondsSince1970ForKey:@"occurredAt"];
      v21 = [v20 copy];
      occurrenceDate = v5->_occurrenceDate;
      v5->_occurrenceDate = v21;
    }

    self = v5;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
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