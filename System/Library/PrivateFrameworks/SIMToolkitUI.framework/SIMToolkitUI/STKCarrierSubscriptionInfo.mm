@interface STKCarrierSubscriptionInfo
- (STKCarrierSubscriptionInfo)initWithShowClass0SMSFromField:(BOOL)a3 canShowClass0SMSOverInCallAlerts:(BOOL)a4 ussdAlwaysFilteredPatterns:(id)a5 ussdSometimesFilteredPatterns:(id)a6;
@end

@implementation STKCarrierSubscriptionInfo

- (STKCarrierSubscriptionInfo)initWithShowClass0SMSFromField:(BOOL)a3 canShowClass0SMSOverInCallAlerts:(BOOL)a4 ussdAlwaysFilteredPatterns:(id)a5 ussdSometimesFilteredPatterns:(id)a6
{
  v10 = a5;
  v11 = a6;
  v21.receiver = self;
  v21.super_class = STKCarrierSubscriptionInfo;
  v12 = [(STKCarrierSubscriptionInfo *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_canShowClass0SMSOverInCallAlerts = a4;
    v12->_showClass0SMSFromField = a3;
    v14 = [(NSArray *)v12->_ussdAlwaysFilteredPatterns copy];
    ussdAlwaysFilteredPatterns = v13->_ussdAlwaysFilteredPatterns;
    v13->_ussdAlwaysFilteredPatterns = v14;

    v16 = [(NSArray *)v13->_ussdSometimesFilteredPatterns copy];
    ussdSometimesFilteredPatterns = v13->_ussdSometimesFilteredPatterns;
    v13->_ussdSometimesFilteredPatterns = v16;

    v18 = [[STKUSSDFilter alloc] initWithAlwaysFilteredPatterns:v10 sometimesFilteredPatterns:v11];
    ussdFilter = v13->_ussdFilter;
    v13->_ussdFilter = v18;
  }

  return v13;
}

@end