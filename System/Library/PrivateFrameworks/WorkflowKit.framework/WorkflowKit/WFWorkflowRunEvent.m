@interface WFWorkflowRunEvent
- (WFWorkflowRunEvent)initWithCoder:(id)a3;
- (WFWorkflowRunEvent)initWithIdentifier:(id)a3 workflow:(id)a4 source:(id)a5 date:(id)a6 triggerID:(id)a7 outcome:(int64_t)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowRunEvent

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = WFWorkflowRunEvent;
  v4 = a3;
  [(WFWorkflowRunEvent *)&v9 encodeWithCoder:v4];
  v5 = [(WFWorkflowRunEvent *)self workflow:v9.receiver];
  [v4 encodeObject:v5 forKey:@"workflow"];

  v6 = [(WFWorkflowRunEvent *)self source];
  [v4 encodeObject:v6 forKey:@"source"];

  v7 = [(WFWorkflowRunEvent *)self date];
  [v4 encodeObject:v7 forKey:@"date"];

  v8 = [(WFWorkflowRunEvent *)self triggerID];
  [v4 encodeObject:v8 forKey:@"triggerID"];

  [v4 encodeInteger:-[WFWorkflowRunEvent outcome](self forKey:{"outcome"), @"outcome"}];
}

- (WFWorkflowRunEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFWorkflowRunEvent;
  v5 = [(WFWorkflowRunEvent *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflow"];
    workflow = v5->_workflow;
    v5->_workflow = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"triggerID"];
    triggerID = v5->_triggerID;
    v5->_triggerID = v12;

    v5->_outcome = [v4 decodeIntegerForKey:@"outcome"];
    v14 = v5;
  }

  return v5;
}

- (WFWorkflowRunEvent)initWithIdentifier:(id)a3 workflow:(id)a4 source:(id)a5 date:(id)a6 triggerID:(id)a7 outcome:(int64_t)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v25.receiver = self;
  v25.super_class = WFWorkflowRunEvent;
  v19 = [(WFWorkflowRunEvent *)&v25 initWithIdentifier:a3 objectType:5];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_workflow, a4);
    objc_storeStrong(&v20->_source, a5);
    objc_storeStrong(&v20->_date, a6);
    v21 = [v18 copy];
    triggerID = v20->_triggerID;
    v20->_triggerID = v21;

    v20->_outcome = a8;
    v23 = v20;
  }

  return v20;
}

@end