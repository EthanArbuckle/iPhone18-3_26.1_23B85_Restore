@interface MTBaseMAPIRequest
- (MTBaseMAPIRequest)init;
@end

@implementation MTBaseMAPIRequest

- (MTBaseMAPIRequest)init
{
  v3 = type metadata accessor for MediaRequestController();
  v4 = [objc_allocWithZone(v3) init];
  v5 = (&self->super.isa + OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController);
  v5[3] = v3;
  v5[4] = &protocol witness table for MediaRequestController;
  *v5 = v4;
  swift_beginAccess();
  v6 = v5[3];
  v7 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 16))(1, v6, v7);
  swift_endAccess();
  v9.receiver = self;
  v9.super_class = type metadata accessor for BaseMAPIRequest();
  return [(MTBaseMAPIRequest *)&v9 init];
}

@end