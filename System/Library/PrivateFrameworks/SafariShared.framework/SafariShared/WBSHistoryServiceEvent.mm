@interface WBSHistoryServiceEvent
- (WBSHistoryServiceEvent)initWithCoder:(id)coder;
- (WBSHistoryServiceEvent)initWithEventID:(int64_t)d type:(id)type time:(id)time value:(id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHistoryServiceEvent

- (WBSHistoryServiceEvent)initWithEventID:(int64_t)d type:(id)type time:(id)time value:(id)value
{
  typeCopy = type;
  timeCopy = time;
  valueCopy = value;
  v23.receiver = self;
  v23.super_class = WBSHistoryServiceEvent;
  v13 = [(WBSHistoryServiceEvent *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v13->_eventID = d;
    v15 = [typeCopy copy];
    eventType = v14->_eventType;
    v14->_eventType = v15;

    v17 = [timeCopy copy];
    time = v14->_time;
    v14->_time = v17;

    v19 = [valueCopy copy];
    value = v14->_value;
    v14->_value = v19;

    v21 = v14;
  }

  return v14;
}

- (WBSHistoryServiceEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = WBSHistoryServiceEvent;
  v5 = [(WBSHistoryServiceEvent *)&v23 init];
  if (v5)
  {
    v5->_eventID = [coderCopy decodeInt64ForKey:@"eventID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    eventType = v5->_eventType;
    v5->_eventType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    time = v5->_time;
    v5->_time = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v10 setWithObjects:{v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"value"];
    value = v5->_value;
    v5->_value = v19;

    v21 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  eventID = self->_eventID;
  coderCopy = coder;
  [coderCopy encodeInt64:eventID forKey:@"eventID"];
  [coderCopy encodeObject:self->_eventType forKey:@"type"];
  [coderCopy encodeObject:self->_time forKey:@"time"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

@end