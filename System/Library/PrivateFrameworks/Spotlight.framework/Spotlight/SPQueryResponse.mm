@interface SPQueryResponse
- (SPQueryResponse)initWithTask:(id)a3;
- (id)copy;
- (id)description;
@end

@implementation SPQueryResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SPQueryResponse *)self kind];
  v5 = [(SPQueryResponse *)self state];
  v6 = [(SPQueryResponse *)self task];
  v7 = [(SPQueryResponse *)self resultSections];
  v8 = [v3 stringWithFormat:@"kind:%lu state:%luu task:%@ sections:%@", v4, v5, v6, v7];

  return v8;
}

- (id)copy
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(SPQueryResponse *)self task];
  v5 = [v3 initWithTask:v4];

  v6 = [(SPQueryResponse *)self resultSections];
  [v5 setResultSections:v6];

  v7 = [(SPQueryResponse *)self sessionEntityString];
  [v5 setSessionEntityString:v7];

  [v5 setState:{-[SPQueryResponse state](self, "state")}];
  [v5 setKind:{-[SPQueryResponse kind](self, "kind")}];
  v8 = [(SPQueryResponse *)self ecrGroundedOutput];
  [v5 setEcrGroundedOutput:v8];

  v9 = [(SPQueryResponse *)self ecrGroundedPersons];
  [v5 setEcrGroundedPersons:v9];

  return v5;
}

- (SPQueryResponse)initWithTask:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SPQueryResponse;
  v5 = [(SPQueryResponse *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SPQueryResponse *)v5 setTask:v4];
  }

  return v6;
}

@end