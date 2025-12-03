@interface SCLSettingsSyncContext
- (NSArray)recoveryHistory;
- (SCLSettingsSyncContext)init;
- (SCLSettingsSyncContext)initWithCoder:(id)coder;
- (void)addRecoveryHistory:(unint64_t)history;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLSettingsSyncContext

- (SCLSettingsSyncContext)init
{
  v6.receiver = self;
  v6.super_class = SCLSettingsSyncContext;
  v2 = [(SCLSettingsSyncContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    recoveryHistory = v2->_recoveryHistory;
    v2->_recoveryHistory = v3;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SCLSettingsSyncContext syncStatus](self forKey:{"syncStatus"), @"syncStatus"}];
  messageIdentifier = [(SCLSettingsSyncContext *)self messageIdentifier];
  [coderCopy encodeObject:messageIdentifier forKey:@"messageIdentifier"];

  error = [(SCLSettingsSyncContext *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  recoveryHistory = [(SCLSettingsSyncContext *)self recoveryHistory];
  [coderCopy encodeObject:recoveryHistory forKey:@"recoveryHistory"];
}

- (SCLSettingsSyncContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SCLSettingsSyncContext;
  v5 = [(SCLSettingsSyncContext *)&v17 init];
  if (v5)
  {
    v5->_syncStatus = [coderCopy decodeIntegerForKey:@"syncStatus"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageIdentifier"];
    messageIdentifier = v5->_messageIdentifier;
    v5->_messageIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"recoveryHistory"];
    v14 = [v13 mutableCopy];
    recoveryHistory = v5->_recoveryHistory;
    v5->_recoveryHistory = v14;
  }

  return v5;
}

- (NSArray)recoveryHistory
{
  v2 = [(NSMutableArray *)self->_recoveryHistory copy];

  return v2;
}

- (void)addRecoveryHistory:(unint64_t)history
{
  recoveryHistory = self->_recoveryHistory;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:history];
  [(NSMutableArray *)recoveryHistory insertObject:v5 atIndex:0];

  if ([(NSMutableArray *)self->_recoveryHistory count]>= 0xB)
  {
    v6 = self->_recoveryHistory;

    [(NSMutableArray *)v6 removeLastObject];
  }
}

@end