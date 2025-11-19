@interface PLAssetResourceUploadWorkItem
- (NSString)description;
- (id)copyWithZone:(void *)a3;
@end

@implementation PLAssetResourceUploadWorkItem

- (id)copyWithZone:(void *)a3
{
  sub_19BF40534(v5);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  v3 = sub_19C5C494C();
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_19BF40684();

  v3 = sub_19C5C45CC();

  return v3;
}

@end