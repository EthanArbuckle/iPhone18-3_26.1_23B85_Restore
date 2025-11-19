@interface UIPurchaseDelegate
- (_TtC10PodcastsUI18UIPurchaseDelegate)init;
- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5;
@end

@implementation UIPurchaseDelegate

- (_TtC10PodcastsUI18UIPurchaseDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC10PodcastsUI18UIPurchaseDelegate_senderWindow) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for UIPurchaseDelegate();
  return [(UIPurchaseDelegate *)&v3 init];
}

- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_21B4879DC(v10, v11, sub_21B487D3C, v9, "Got authentication request for purchase with buyParams: %@", &unk_282CB8048, sub_21B487D38, sub_21B48606C);
}

- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_21B4879DC(v10, v11, sub_21B487CF4, v9, "Got dialog request for purchase with buyParams: %@", &unk_282CB8020, sub_21B487D10, sub_21B48601C);
}

- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_21B4879DC(v10, v11, sub_21B487D3C, v9, "Got engagementRequest request for purchase with buyParams: %@", &unk_282CB7FF8, sub_21B487D38, sub_21B486044);
}

@end