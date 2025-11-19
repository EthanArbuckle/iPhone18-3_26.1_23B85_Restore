@interface SSSDescriptorCollectionBox
- (NSString)description;
- (SSSDescriptorCollectionBox)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSSDescriptorCollectionBox

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26A090974(v4);
}

- (NSString)description
{
  v2 = self;
  sub_26A090F84();

  v3 = sub_26A09DE74();

  return v3;
}

- (SSSDescriptorCollectionBox)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end