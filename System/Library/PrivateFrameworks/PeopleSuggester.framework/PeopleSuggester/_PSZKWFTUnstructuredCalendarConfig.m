@interface _PSZKWFTUnstructuredCalendarConfig
- (_PSZKWFTUnstructuredCalendarConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 startSecondsFromQuery:(double)a5 endSecondsFromQuery:(double)a6 priorScoreThreshold:(float)a7;
@end

@implementation _PSZKWFTUnstructuredCalendarConfig

- (_PSZKWFTUnstructuredCalendarConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 startSecondsFromQuery:(double)a5 endSecondsFromQuery:(double)a6 priorScoreThreshold:(float)a7
{
  v13.receiver = self;
  v13.super_class = _PSZKWFTUnstructuredCalendarConfig;
  result = [(_PSZKWFTUnstructuredCalendarConfig *)&v13 init];
  if (result)
  {
    result->_isEnabled = a3;
    result->_defaultConfidenceCategory = a4;
    result->_startSecondsFromQuery = a5;
    result->_endSecondsFromQuery = a6;
    result->_priorScoreThreshold = a7;
  }

  return result;
}

@end