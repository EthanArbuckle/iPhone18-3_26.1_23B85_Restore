@interface UnifiedMessagingViewController
- (_TtC8VideosUI30UnifiedMessagingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4;
- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5;
@end

@implementation UnifiedMessagingViewController

- (_TtC8VideosUI30UnifiedMessagingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1E3A7B70C(v5, v7, a4);
}

- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4
{
  v5 = a3;
  v6 = self;
  sub_1E3A7B950();
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1E3A7BB68(v6, v7);
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1E3A7C5C8(v8, a4);
}

- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5
{
  v8 = sub_1E4205C64();
  if (a5)
  {
    v9 = sub_1E4205F14();
    a5 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = a3;
  v12 = self;
  sub_1E3A7C7EC(v12, v8, v9, a5);
}

@end