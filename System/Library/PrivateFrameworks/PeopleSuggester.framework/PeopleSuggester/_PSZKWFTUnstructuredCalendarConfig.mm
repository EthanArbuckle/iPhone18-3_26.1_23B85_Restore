@interface _PSZKWFTUnstructuredCalendarConfig
- (_PSZKWFTUnstructuredCalendarConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category startSecondsFromQuery:(double)query endSecondsFromQuery:(double)fromQuery priorScoreThreshold:(float)threshold;
@end

@implementation _PSZKWFTUnstructuredCalendarConfig

- (_PSZKWFTUnstructuredCalendarConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category startSecondsFromQuery:(double)query endSecondsFromQuery:(double)fromQuery priorScoreThreshold:(float)threshold
{
  v13.receiver = self;
  v13.super_class = _PSZKWFTUnstructuredCalendarConfig;
  result = [(_PSZKWFTUnstructuredCalendarConfig *)&v13 init];
  if (result)
  {
    result->_isEnabled = enabled;
    result->_defaultConfidenceCategory = category;
    result->_startSecondsFromQuery = query;
    result->_endSecondsFromQuery = fromQuery;
    result->_priorScoreThreshold = threshold;
  }

  return result;
}

@end