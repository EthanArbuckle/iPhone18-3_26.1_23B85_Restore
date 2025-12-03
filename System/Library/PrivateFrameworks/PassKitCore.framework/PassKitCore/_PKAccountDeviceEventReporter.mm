@interface _PKAccountDeviceEventReporter
- (_PKAccountDeviceEventReporter)init;
- (_PKAccountDeviceEventReporter)initWithAccount:(id)account paymentWebService:(id)service;
- (void)reportEventIfNecessary:(int64_t)necessary location:(id)location completion:(id)completion;
@end

@implementation _PKAccountDeviceEventReporter

- (_PKAccountDeviceEventReporter)initWithAccount:(id)account paymentWebService:(id)service
{
  *(&self->super.isa + OBJC_IVAR____PKAccountDeviceEventReporter_account) = account;
  *(&self->super.isa + OBJC_IVAR____PKAccountDeviceEventReporter_paymentWebService) = service;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AccountDeviceEventReporter();
  accountCopy = account;
  serviceCopy = service;
  return [(_PKAccountDeviceEventReporter *)&v9 init];
}

- (void)reportEventIfNecessary:(int64_t)necessary location:(id)location completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  locationCopy = location;
  selfCopy = self;
  sub_1AD3CCF5C(necessary, location, v8, v9);
  sub_1AD3C5FB8(v8);
}

- (_PKAccountDeviceEventReporter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end