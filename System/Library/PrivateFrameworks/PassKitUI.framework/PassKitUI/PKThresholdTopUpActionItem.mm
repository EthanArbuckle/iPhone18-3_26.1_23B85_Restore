@interface PKThresholdTopUpActionItem
- (PKThresholdTopUpActionItem)initWithIdentifier:(id)identifier cancelInProgress:(BOOL)progress cancelAutoReloadUnavailable:(BOOL)unavailable;
@end

@implementation PKThresholdTopUpActionItem

- (PKThresholdTopUpActionItem)initWithIdentifier:(id)identifier cancelInProgress:(BOOL)progress cancelAutoReloadUnavailable:(BOOL)unavailable
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PKThresholdTopUpActionItem;
  v10 = [(PKThresholdTopUpActionItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
    v11->_cancelInProgress = progress;
    v11->_cancelAutoReloadUnavailable = unavailable;
  }

  return v11;
}

@end