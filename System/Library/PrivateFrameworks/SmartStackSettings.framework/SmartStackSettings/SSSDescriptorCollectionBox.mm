@interface SSSDescriptorCollectionBox
- (NSString)description;
- (SSSDescriptorCollectionBox)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSSDescriptorCollectionBox

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_26A090974(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
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