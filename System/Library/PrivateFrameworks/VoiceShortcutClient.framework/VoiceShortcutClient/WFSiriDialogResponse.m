@interface WFSiriDialogResponse
- (WFSiriDialogResponse)initWithCoder:(id)a3;
- (WFSiriDialogResponse)initWithDialogResponse:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSiriDialogResponse

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFSiriDialogResponse;
  v4 = a3;
  [(WFSiriActionResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFSiriDialogResponse *)self dialogResponse:v6.receiver];
  [v4 encodeObject:v5 forKey:@"dialogResponse"];
}

- (WFSiriDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFSiriDialogResponse;
  v5 = [(WFSiriActionResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dialogResponse"];
    dialogResponse = v5->_dialogResponse;
    v5->_dialogResponse = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriDialogResponse)initWithDialogResponse:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFSiriDialogResponse;
  v6 = [(WFSiriActionResponse *)&v10 initWithError:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialogResponse, a3);
    v8 = v7;
  }

  return v7;
}

@end