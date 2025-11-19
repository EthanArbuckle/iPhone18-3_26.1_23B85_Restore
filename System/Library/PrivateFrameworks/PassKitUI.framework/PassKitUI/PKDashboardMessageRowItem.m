@interface PKDashboardMessageRowItem
- (BOOL)isEqual:(id)a3;
- (PKDashboardMessageRowItem)initWithMessages:(id)a3 currentMessageIndex:(int64_t)a4 messagesViewDelegate:(id)a5;
- (PKDashboardMessagesViewDelegate)messagesViewDelegate;
- (unint64_t)hash;
@end

@implementation PKDashboardMessageRowItem

- (PKDashboardMessageRowItem)initWithMessages:(id)a3 currentMessageIndex:(int64_t)a4 messagesViewDelegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PKDashboardMessageRowItem;
  v11 = [(PKDashboardMessageRowItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_messages, a3);
    v12->_currentMessageIndex = a4;
    objc_storeWeak(&v12->_messagesViewDelegate, v10);
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained(&self->_messagesViewDelegate);
  [v3 safelyAddObject:WeakRetained];

  [v3 safelyAddObject:self->_messages];
  PKCombinedHash();
  v5 = PKIntegerHash();

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_messagesViewDelegate);
    v8 = objc_loadWeakRetained(v6 + 3);
    v9 = PKEqualObjects() && PKEqualObjects() && self->_currentMessageIndex == v6[2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PKDashboardMessagesViewDelegate)messagesViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_messagesViewDelegate);

  return WeakRetained;
}

@end