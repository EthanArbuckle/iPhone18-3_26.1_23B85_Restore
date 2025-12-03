@interface PIAutoLoopAnalysisRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
@end

@implementation PIAutoLoopAnalysisRequest

- (id)newRenderJob
{
  v3 = [PIAutoLoopAnalysisJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = PIAutoLoopAnalysisRequest;
  result = [(NURenderRequest *)&v5 copyWithZone:zone];
  *(result + 20) = self->_flavor;
  return result;
}

@end