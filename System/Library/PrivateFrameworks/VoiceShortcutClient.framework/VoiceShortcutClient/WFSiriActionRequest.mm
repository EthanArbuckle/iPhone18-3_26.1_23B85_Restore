@interface WFSiriActionRequest
- (WFSiriActionRequest)init;
- (WFSiriActionRequest)initWithCoder:(id)a3;
@end

@implementation WFSiriActionRequest

- (WFSiriActionRequest)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFSiriActionRequest;
  v3 = [(WFSiriActionRequest *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (WFSiriActionRequest)init
{
  v3.receiver = self;
  v3.super_class = WFSiriActionRequest;
  return [(WFSiriActionRequest *)&v3 init];
}

@end