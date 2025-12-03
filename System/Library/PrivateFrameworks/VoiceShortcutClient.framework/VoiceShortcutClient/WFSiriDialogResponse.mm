@interface WFSiriDialogResponse
- (WFSiriDialogResponse)initWithCoder:(id)coder;
- (WFSiriDialogResponse)initWithDialogResponse:(id)response;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriDialogResponse

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFSiriDialogResponse;
  coderCopy = coder;
  [(WFSiriActionResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFSiriDialogResponse *)self dialogResponse:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"dialogResponse"];
}

- (WFSiriDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFSiriDialogResponse;
  v5 = [(WFSiriActionResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dialogResponse"];
    dialogResponse = v5->_dialogResponse;
    v5->_dialogResponse = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriDialogResponse)initWithDialogResponse:(id)response
{
  responseCopy = response;
  v10.receiver = self;
  v10.super_class = WFSiriDialogResponse;
  v6 = [(WFSiriActionResponse *)&v10 initWithError:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialogResponse, response);
    v8 = v7;
  }

  return v7;
}

@end