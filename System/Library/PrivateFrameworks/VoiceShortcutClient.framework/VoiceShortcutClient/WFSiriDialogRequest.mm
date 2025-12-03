@interface WFSiriDialogRequest
- (WFSiriDialogRequest)initWithCoder:(id)coder;
- (WFSiriDialogRequest)initWithDialogRequest:(id)request;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFSiriDialogRequest;
  coderCopy = coder;
  [(WFSiriActionRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFSiriDialogRequest *)self dialogRequest:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"dialogRequest"];
}

- (WFSiriDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFSiriDialogRequest;
  v5 = [(WFSiriActionRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dialogRequest"];
    dialogRequest = v5->_dialogRequest;
    v5->_dialogRequest = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriDialogRequest)initWithDialogRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = WFSiriDialogRequest;
  v6 = [(WFSiriActionRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialogRequest, request);
    v8 = v7;
  }

  return v7;
}

@end