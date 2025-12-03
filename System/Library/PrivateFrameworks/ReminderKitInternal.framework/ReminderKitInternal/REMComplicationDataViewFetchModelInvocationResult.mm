@interface REMComplicationDataViewFetchModelInvocationResult
- (REMComplicationDataViewFetchModelInvocationResult)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMComplicationDataViewFetchModelInvocationResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  REMComplicationDataView.FetchModelInvocation.Result.encode(with:)(coderCopy);
}

- (REMComplicationDataViewFetchModelInvocationResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end