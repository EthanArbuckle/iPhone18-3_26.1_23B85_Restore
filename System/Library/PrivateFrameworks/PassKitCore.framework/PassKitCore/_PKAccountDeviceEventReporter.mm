@interface _PKAccountDeviceEventReporter
- (_PKAccountDeviceEventReporter)init;
- (_PKAccountDeviceEventReporter)initWithAccount:(id)a3 paymentWebService:(id)a4;
- (void)reportEventIfNecessary:(int64_t)a3 location:(id)a4 completion:(id)a5;
@end

@implementation _PKAccountDeviceEventReporter

- (_PKAccountDeviceEventReporter)initWithAccount:(id)a3 paymentWebService:(id)a4
{
  *(&self->super.isa + OBJC_IVAR____PKAccountDeviceEventReporter_account) = a3;
  *(&self->super.isa + OBJC_IVAR____PKAccountDeviceEventReporter_paymentWebService) = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AccountDeviceEventReporter();
  v6 = a3;
  v7 = a4;
  return [(_PKAccountDeviceEventReporter *)&v9 init];
}

- (void)reportEventIfNecessary:(int64_t)a3 location:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1AD3D02C4;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4;
  v11 = self;
  sub_1AD3CCF5C(a3, a4, v8, v9);
  sub_1AD3C5FB8(v8);
}

- (_PKAccountDeviceEventReporter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end