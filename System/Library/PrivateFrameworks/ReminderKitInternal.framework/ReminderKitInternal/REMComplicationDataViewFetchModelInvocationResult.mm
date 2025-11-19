@interface REMComplicationDataViewFetchModelInvocationResult
- (REMComplicationDataViewFetchModelInvocationResult)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMComplicationDataViewFetchModelInvocationResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  REMComplicationDataView.FetchModelInvocation.Result.encode(with:)(v4);
}

- (REMComplicationDataViewFetchModelInvocationResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end