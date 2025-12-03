@interface UIStoreResponseDelegate
- (_TtC10PodcastsUI23UIStoreResponseDelegate)init;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation UIStoreResponseDelegate

- (_TtC10PodcastsUI23UIStoreResponseDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UIStoreResponseDelegate();
  return [(UIStoreResponseDelegate *)&v3 init];
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  requestCopy = request;
  sub_21B486094(requestCopy, sub_21B486460, v8, &unk_282CB7E78, sub_21B486514, &block_descriptor_35);
}

- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  requestCopy = request;
  sub_21B486094(requestCopy, sub_21B486460, v8, &unk_282CB7E00, sub_21B4864C8, &block_descriptor_26);
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  requestCopy = request;
  sub_21B486094(requestCopy, sub_21B486460, v8, &unk_282CB7D88, sub_21B486468, &block_descriptor_9);
}

@end