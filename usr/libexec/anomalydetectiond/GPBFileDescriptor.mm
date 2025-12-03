@interface GPBFileDescriptor
- (GPBFileDescriptor)initWithPackage:(id)package objcPrefix:(id)prefix syntax:(unsigned __int8)syntax;
- (GPBFileDescriptor)initWithPackage:(id)package syntax:(unsigned __int8)syntax;
- (void)dealloc;
@end

@implementation GPBFileDescriptor

- (GPBFileDescriptor)initWithPackage:(id)package objcPrefix:(id)prefix syntax:(unsigned __int8)syntax
{
  v10.receiver = self;
  v10.super_class = GPBFileDescriptor;
  v8 = [(GPBFileDescriptor *)&v10 init];
  if (v8)
  {
    v8->package_ = [package copy];
    v8->objcPrefix_ = [prefix copy];
    v8->syntax_ = syntax;
  }

  return v8;
}

- (GPBFileDescriptor)initWithPackage:(id)package syntax:(unsigned __int8)syntax
{
  v8.receiver = self;
  v8.super_class = GPBFileDescriptor;
  v6 = [(GPBFileDescriptor *)&v8 init];
  if (v6)
  {
    v6->package_ = [package copy];
    v6->syntax_ = syntax;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GPBFileDescriptor;
  [(GPBFileDescriptor *)&v3 dealloc];
}

@end