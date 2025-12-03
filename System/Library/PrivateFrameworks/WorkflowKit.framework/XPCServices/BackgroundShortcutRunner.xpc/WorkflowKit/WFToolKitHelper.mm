@interface WFToolKitHelper
+ (id)decodeSearchStringInEncodedQuery:(id)query error:(id *)error;
+ (int64_t)valueSetTypeForDefinition:(id)definition;
+ (void)createActionFromEncodedToolInvocation:(NSData *)invocation fetchingDefaultValues:(BOOL)values completion:(id)completion;
+ (void)fetchToolInvocationSummaryForInvocation:(NSData *)invocation fetchingDefaultValues:(BOOL)values variableSource:(WFVariableDataSource *)source runSource:(NSString *)runSource completionBlock:(id)block;
+ (void)produceEncodedDisplayRepresentationForRequest:(NSData *)request completionBlock:(id)block;
+ (void)produceEncodedTypedValuesFromPossibleStates:(NSArray *)states ofParameter:(WFParameter *)parameter inAction:(WFAction *)action encodedOptions:(NSData *)options completionBlock:(id)block;
+ (void)runLinkQuery:(NSData *)query valueSet:(NSData *)set encodedOptions:(NSData *)options completionBlock:(id)block;
@end

@implementation WFToolKitHelper

+ (void)createActionFromEncodedToolInvocation:(NSData *)invocation fetchingDefaultValues:(BOOL)values completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = invocation;
  *(v9 + 24) = values;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  invocationCopy = invocation;

  sub_1000639A8();
}

+ (int64_t)valueSetTypeForDefinition:(id)definition
{
  definitionCopy = definition;
  v4 = sub_1000889D8();
  v6 = v5;

  v7 = static ToolKitHelper.decodeValueSetType(encodedDefinition:)();
  sub_10005ABBC(v4, v6);
  return v7;
}

+ (void)runLinkQuery:(NSData *)query valueSet:(NSData *)set encodedOptions:(NSData *)options completionBlock:(id)block
{
  v10 = _Block_copy(block);
  v11 = swift_allocObject();
  v11[2] = query;
  v11[3] = set;
  v11[4] = options;
  v11[5] = v10;
  v11[6] = self;
  queryCopy = query;
  setCopy = set;
  optionsCopy = options;

  sub_1000639A8();
}

+ (id)decodeSearchStringInEncodedQuery:(id)query error:(id *)error
{
  queryCopy = query;
  v5 = sub_1000889D8();
  v7 = v6;

  static ToolKitHelper.decodeSearchString(in:)();
  sub_10005ABBC(v5, v7);
  v8 = sub_10008A238();

  return v8;
}

+ (void)produceEncodedTypedValuesFromPossibleStates:(NSArray *)states ofParameter:(WFParameter *)parameter inAction:(WFAction *)action encodedOptions:(NSData *)options completionBlock:(id)block
{
  v12 = _Block_copy(block);
  v13 = swift_allocObject();
  v13[2] = states;
  v13[3] = parameter;
  v13[4] = action;
  v13[5] = options;
  v13[6] = v12;
  v13[7] = self;
  statesCopy = states;
  parameterCopy = parameter;
  actionCopy = action;
  optionsCopy = options;

  sub_1000639A8();
}

+ (void)produceEncodedDisplayRepresentationForRequest:(NSData *)request completionBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  v7[2] = request;
  v7[3] = v6;
  v7[4] = self;
  requestCopy = request;

  sub_1000639A8();
}

+ (void)fetchToolInvocationSummaryForInvocation:(NSData *)invocation fetchingDefaultValues:(BOOL)values variableSource:(WFVariableDataSource *)source runSource:(NSString *)runSource completionBlock:(id)block
{
  v12 = _Block_copy(block);
  v13 = swift_allocObject();
  *(v13 + 16) = invocation;
  *(v13 + 24) = values;
  *(v13 + 32) = source;
  *(v13 + 40) = runSource;
  *(v13 + 48) = v12;
  *(v13 + 56) = self;
  invocationCopy = invocation;
  swift_unknownObjectRetain();
  runSourceCopy = runSource;

  sub_1000639A8();
}

@end