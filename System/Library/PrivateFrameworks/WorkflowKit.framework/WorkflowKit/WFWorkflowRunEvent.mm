@interface WFWorkflowRunEvent
- (WFWorkflowRunEvent)initWithCoder:(id)coder;
- (WFWorkflowRunEvent)initWithIdentifier:(id)identifier workflow:(id)workflow source:(id)source date:(id)date triggerID:(id)d outcome:(int64_t)outcome;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowRunEvent

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = WFWorkflowRunEvent;
  coderCopy = coder;
  [(WFWorkflowRunEvent *)&v9 encodeWithCoder:coderCopy];
  v5 = [(WFWorkflowRunEvent *)self workflow:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"workflow"];

  source = [(WFWorkflowRunEvent *)self source];
  [coderCopy encodeObject:source forKey:@"source"];

  date = [(WFWorkflowRunEvent *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  triggerID = [(WFWorkflowRunEvent *)self triggerID];
  [coderCopy encodeObject:triggerID forKey:@"triggerID"];

  [coderCopy encodeInteger:-[WFWorkflowRunEvent outcome](self forKey:{"outcome"), @"outcome"}];
}

- (WFWorkflowRunEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WFWorkflowRunEvent;
  v5 = [(WFWorkflowRunEvent *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflow"];
    workflow = v5->_workflow;
    v5->_workflow = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerID"];
    triggerID = v5->_triggerID;
    v5->_triggerID = v12;

    v5->_outcome = [coderCopy decodeIntegerForKey:@"outcome"];
    v14 = v5;
  }

  return v5;
}

- (WFWorkflowRunEvent)initWithIdentifier:(id)identifier workflow:(id)workflow source:(id)source date:(id)date triggerID:(id)d outcome:(int64_t)outcome
{
  workflowCopy = workflow;
  sourceCopy = source;
  dateCopy = date;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = WFWorkflowRunEvent;
  v19 = [(WFWorkflowRunEvent *)&v25 initWithIdentifier:identifier objectType:5];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_workflow, workflow);
    objc_storeStrong(&v20->_source, source);
    objc_storeStrong(&v20->_date, date);
    v21 = [dCopy copy];
    triggerID = v20->_triggerID;
    v20->_triggerID = v21;

    v20->_outcome = outcome;
    v23 = v20;
  }

  return v20;
}

@end