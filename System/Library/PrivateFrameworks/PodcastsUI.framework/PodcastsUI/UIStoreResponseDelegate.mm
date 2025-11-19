@interface UIStoreResponseDelegate
- (_TtC10PodcastsUI23UIStoreResponseDelegate)init;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6;
@end

@implementation UIStoreResponseDelegate

- (_TtC10PodcastsUI23UIStoreResponseDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UIStoreResponseDelegate();
  return [(UIStoreResponseDelegate *)&v3 init];
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a5;
  sub_21B486094(v9, sub_21B486460, v8, &unk_282CB7E78, sub_21B486514, &block_descriptor_35);
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a5;
  sub_21B486094(v9, sub_21B486460, v8, &unk_282CB7E00, sub_21B4864C8, &block_descriptor_26);
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a5;
  sub_21B486094(v9, sub_21B486460, v8, &unk_282CB7D88, sub_21B486468, &block_descriptor_9);
}

@end