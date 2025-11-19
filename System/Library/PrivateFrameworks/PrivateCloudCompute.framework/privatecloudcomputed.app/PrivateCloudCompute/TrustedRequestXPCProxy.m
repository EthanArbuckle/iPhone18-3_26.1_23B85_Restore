@interface TrustedRequestXPCProxy
- (void)nextWithCompletion:(id)a3;
- (void)sendWithData:(id)a3 isComplete:(BOOL)a4 completion:(id)a5;
@end

@implementation TrustedRequestXPCProxy

- (void)sendWithData:(id)a3 isComplete:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a3;

  v9 = sub_1001CFC00();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  sub_10012EE70(v9, v11, a4, sub_100130C94, v12);

  sub_100011E48(v9, v11);
}

- (void)nextWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_10012F920(sub_1001308C0, v4);
}

@end