@interface WFToolKitHelper
+ (id)decodeSearchStringInEncodedQuery:(id)a3 error:(id *)a4;
+ (int64_t)valueSetTypeForDefinition:(id)a3;
+ (void)createActionFromEncodedToolInvocation:(NSData *)a3 fetchingDefaultValues:(BOOL)a4 completion:(id)a5;
+ (void)fetchToolInvocationSummaryForInvocation:(NSData *)a3 fetchingDefaultValues:(BOOL)a4 variableSource:(WFVariableDataSource *)a5 runSource:(NSString *)a6 completionBlock:(id)a7;
+ (void)produceEncodedDisplayRepresentationForRequest:(NSData *)a3 completionBlock:(id)a4;
+ (void)produceEncodedTypedValuesFromPossibleStates:(NSArray *)a3 ofParameter:(WFParameter *)a4 inAction:(WFAction *)a5 encodedOptions:(NSData *)a6 completionBlock:(id)a7;
+ (void)runLinkQuery:(NSData *)a3 valueSet:(NSData *)a4 encodedOptions:(NSData *)a5 completionBlock:(id)a6;
@end

@implementation WFToolKitHelper

+ (void)createActionFromEncodedToolInvocation:(NSData *)a3 fetchingDefaultValues:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  v10 = a3;

  sub_1000639A8();
}

+ (int64_t)valueSetTypeForDefinition:(id)a3
{
  v3 = a3;
  v4 = sub_1000889D8();
  v6 = v5;

  v7 = static ToolKitHelper.decodeValueSetType(encodedDefinition:)();
  sub_10005ABBC(v4, v6);
  return v7;
}

+ (void)runLinkQuery:(NSData *)a3 valueSet:(NSData *)a4 encodedOptions:(NSData *)a5 completionBlock:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;

  sub_1000639A8();
}

+ (id)decodeSearchStringInEncodedQuery:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_1000889D8();
  v7 = v6;

  static ToolKitHelper.decodeSearchString(in:)();
  sub_10005ABBC(v5, v7);
  v8 = sub_10008A238();

  return v8;
}

+ (void)produceEncodedTypedValuesFromPossibleStates:(NSArray *)a3 ofParameter:(WFParameter *)a4 inAction:(WFAction *)a5 encodedOptions:(NSData *)a6 completionBlock:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = a1;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;

  sub_1000639A8();
}

+ (void)produceEncodedDisplayRepresentationForRequest:(NSData *)a3 completionBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  sub_1000639A8();
}

+ (void)fetchToolInvocationSummaryForInvocation:(NSData *)a3 fetchingDefaultValues:(BOOL)a4 variableSource:(WFVariableDataSource *)a5 runSource:(NSString *)a6 completionBlock:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = v12;
  *(v13 + 56) = a1;
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = a6;

  sub_1000639A8();
}

@end