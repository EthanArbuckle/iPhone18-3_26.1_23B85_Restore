@interface RSGroupEdge
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RSGroupEdge

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(RSGroupEdge);
  objc_storeStrong(&v4->source_object_uuid, self->source_object_uuid);
  objc_storeStrong(&v4->target_object_uuid, self->target_object_uuid);
  return v4;
}

@end