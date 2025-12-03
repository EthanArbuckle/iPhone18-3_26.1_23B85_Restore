@interface FPProcessGroup
- (BOOL)isEqual:(id)equal;
- (void)addProcess:(id)process;
@end

@implementation FPProcessGroup

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([(FPProcessGroup *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v7.receiver = self;
    v7.super_class = FPProcessGroup;
    v5 = [(FPProcessGroupMinimal *)&v7 isEqual:equalCopy];
  }

  else
  {
    v5 = self == equalCopy;
  }

  return v5;
}

- (void)addProcess:(id)process
{
  processCopy = process;
  _os_crash();
  __break(1u);
}

@end