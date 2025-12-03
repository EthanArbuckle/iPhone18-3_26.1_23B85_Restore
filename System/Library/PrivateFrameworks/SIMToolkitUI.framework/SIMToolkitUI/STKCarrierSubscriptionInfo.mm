@interface STKCarrierSubscriptionInfo
- (STKCarrierSubscriptionInfo)initWithShowClass0SMSFromField:(BOOL)field canShowClass0SMSOverInCallAlerts:(BOOL)alerts ussdAlwaysFilteredPatterns:(id)patterns ussdSometimesFilteredPatterns:(id)filteredPatterns;
@end

@implementation STKCarrierSubscriptionInfo

- (STKCarrierSubscriptionInfo)initWithShowClass0SMSFromField:(BOOL)field canShowClass0SMSOverInCallAlerts:(BOOL)alerts ussdAlwaysFilteredPatterns:(id)patterns ussdSometimesFilteredPatterns:(id)filteredPatterns
{
  patternsCopy = patterns;
  filteredPatternsCopy = filteredPatterns;
  v21.receiver = self;
  v21.super_class = STKCarrierSubscriptionInfo;
  v12 = [(STKCarrierSubscriptionInfo *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_canShowClass0SMSOverInCallAlerts = alerts;
    v12->_showClass0SMSFromField = field;
    v14 = [(NSArray *)v12->_ussdAlwaysFilteredPatterns copy];
    ussdAlwaysFilteredPatterns = v13->_ussdAlwaysFilteredPatterns;
    v13->_ussdAlwaysFilteredPatterns = v14;

    v16 = [(NSArray *)v13->_ussdSometimesFilteredPatterns copy];
    ussdSometimesFilteredPatterns = v13->_ussdSometimesFilteredPatterns;
    v13->_ussdSometimesFilteredPatterns = v16;

    v18 = [[STKUSSDFilter alloc] initWithAlwaysFilteredPatterns:patternsCopy sometimesFilteredPatterns:filteredPatternsCopy];
    ussdFilter = v13->_ussdFilter;
    v13->_ussdFilter = v18;
  }

  return v13;
}

@end