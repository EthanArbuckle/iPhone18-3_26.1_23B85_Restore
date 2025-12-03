@interface SPQueryResponse
- (SPQueryResponse)initWithTask:(id)task;
- (id)copy;
- (id)description;
@end

@implementation SPQueryResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  kind = [(SPQueryResponse *)self kind];
  state = [(SPQueryResponse *)self state];
  task = [(SPQueryResponse *)self task];
  resultSections = [(SPQueryResponse *)self resultSections];
  v8 = [v3 stringWithFormat:@"kind:%lu state:%luu task:%@ sections:%@", kind, state, task, resultSections];

  return v8;
}

- (id)copy
{
  v3 = objc_alloc(objc_opt_class());
  task = [(SPQueryResponse *)self task];
  v5 = [v3 initWithTask:task];

  resultSections = [(SPQueryResponse *)self resultSections];
  [v5 setResultSections:resultSections];

  sessionEntityString = [(SPQueryResponse *)self sessionEntityString];
  [v5 setSessionEntityString:sessionEntityString];

  [v5 setState:{-[SPQueryResponse state](self, "state")}];
  [v5 setKind:{-[SPQueryResponse kind](self, "kind")}];
  ecrGroundedOutput = [(SPQueryResponse *)self ecrGroundedOutput];
  [v5 setEcrGroundedOutput:ecrGroundedOutput];

  ecrGroundedPersons = [(SPQueryResponse *)self ecrGroundedPersons];
  [v5 setEcrGroundedPersons:ecrGroundedPersons];

  return v5;
}

- (SPQueryResponse)initWithTask:(id)task
{
  taskCopy = task;
  v8.receiver = self;
  v8.super_class = SPQueryResponse;
  v5 = [(SPQueryResponse *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SPQueryResponse *)v5 setTask:taskCopy];
  }

  return v6;
}

@end