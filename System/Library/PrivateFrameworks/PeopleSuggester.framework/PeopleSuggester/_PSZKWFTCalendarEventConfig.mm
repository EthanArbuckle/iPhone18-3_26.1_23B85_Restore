@interface _PSZKWFTCalendarEventConfig
- (_PSZKWFTCalendarEventConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 startSecondsFromQuery:(double)a5 endSecondsFromQuery:(double)a6 urlDomainsToSkip:(id)a7 maxOtherParticipants:(unint64_t)a8;
@end

@implementation _PSZKWFTCalendarEventConfig

- (_PSZKWFTCalendarEventConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 startSecondsFromQuery:(double)a5 endSecondsFromQuery:(double)a6 urlDomainsToSkip:(id)a7 maxOtherParticipants:(unint64_t)a8
{
  v15 = a7;
  v19.receiver = self;
  v19.super_class = _PSZKWFTCalendarEventConfig;
  v16 = [(_PSZKWFTCalendarEventConfig *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_isEnabled = a3;
    v16->_defaultConfidenceCategory = a4;
    v16->_startSecondsFromQuery = a5;
    v16->_endSecondsFromQuery = a6;
    objc_storeStrong(&v16->_urlDomainsToSkip, a7);
    v17->_maxOtherParticipants = a8;
  }

  return v17;
}

@end