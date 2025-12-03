@interface TrustedRequestXPCProxy
- (void)nextWithCompletion:(id)completion;
- (void)sendWithData:(id)data isComplete:(BOOL)complete completion:(id)completion;
@end

@implementation TrustedRequestXPCProxy

- (void)sendWithData:(id)data isComplete:(BOOL)complete completion:(id)completion
{
  v7 = _Block_copy(completion);
  dataCopy = data;

  v9 = sub_1001CFC00();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  sub_10012EE70(v9, v11, complete, sub_100130C94, v12);

  sub_100011E48(v9, v11);
}

- (void)nextWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_10012F920(sub_1001308C0, v4);
}

@end