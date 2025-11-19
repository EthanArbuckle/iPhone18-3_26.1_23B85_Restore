@interface PKThresholdTopUpActionItem
- (PKThresholdTopUpActionItem)initWithIdentifier:(id)a3 cancelInProgress:(BOOL)a4 cancelAutoReloadUnavailable:(BOOL)a5;
@end

@implementation PKThresholdTopUpActionItem

- (PKThresholdTopUpActionItem)initWithIdentifier:(id)a3 cancelInProgress:(BOOL)a4 cancelAutoReloadUnavailable:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PKThresholdTopUpActionItem;
  v10 = [(PKThresholdTopUpActionItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, a3);
    v11->_cancelInProgress = a4;
    v11->_cancelAutoReloadUnavailable = a5;
  }

  return v11;
}

@end