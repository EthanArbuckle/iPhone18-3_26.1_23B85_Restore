@interface _PSZKWFTCalendarEventConfig
- (_PSZKWFTCalendarEventConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category startSecondsFromQuery:(double)query endSecondsFromQuery:(double)fromQuery urlDomainsToSkip:(id)skip maxOtherParticipants:(unint64_t)participants;
@end

@implementation _PSZKWFTCalendarEventConfig

- (_PSZKWFTCalendarEventConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category startSecondsFromQuery:(double)query endSecondsFromQuery:(double)fromQuery urlDomainsToSkip:(id)skip maxOtherParticipants:(unint64_t)participants
{
  skipCopy = skip;
  v19.receiver = self;
  v19.super_class = _PSZKWFTCalendarEventConfig;
  v16 = [(_PSZKWFTCalendarEventConfig *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_isEnabled = enabled;
    v16->_defaultConfidenceCategory = category;
    v16->_startSecondsFromQuery = query;
    v16->_endSecondsFromQuery = fromQuery;
    objc_storeStrong(&v16->_urlDomainsToSkip, skip);
    v17->_maxOtherParticipants = participants;
  }

  return v17;
}

@end