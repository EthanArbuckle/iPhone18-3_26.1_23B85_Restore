@interface WBSHistoryServiceEvent
- (WBSHistoryServiceEvent)initWithCoder:(id)a3;
- (WBSHistoryServiceEvent)initWithEventID:(int64_t)a3 type:(id)a4 time:(id)a5 value:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSHistoryServiceEvent

- (WBSHistoryServiceEvent)initWithEventID:(int64_t)a3 type:(id)a4 time:(id)a5 value:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = WBSHistoryServiceEvent;
  v13 = [(WBSHistoryServiceEvent *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v13->_eventID = a3;
    v15 = [v10 copy];
    eventType = v14->_eventType;
    v14->_eventType = v15;

    v17 = [v11 copy];
    time = v14->_time;
    v14->_time = v17;

    v19 = [v12 copy];
    value = v14->_value;
    v14->_value = v19;

    v21 = v14;
  }

  return v14;
}

- (WBSHistoryServiceEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = WBSHistoryServiceEvent;
  v5 = [(WBSHistoryServiceEvent *)&v23 init];
  if (v5)
  {
    v5->_eventID = [v4 decodeInt64ForKey:@"eventID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    eventType = v5->_eventType;
    v5->_eventType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
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
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"value"];
    value = v5->_value;
    v5->_value = v19;

    v21 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  eventID = self->_eventID;
  v5 = a3;
  [v5 encodeInt64:eventID forKey:@"eventID"];
  [v5 encodeObject:self->_eventType forKey:@"type"];
  [v5 encodeObject:self->_time forKey:@"time"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

@end