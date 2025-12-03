@interface SHSheetScrollingTest
- (SHSheetScrollingTest)initWithBSXPCCoder:(id)coder;
- (SHSheetScrollingTest)initWithName:(id)name type:(int64_t)type completionHandler:(id)handler;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SHSheetScrollingTest

- (SHSheetScrollingTest)initWithName:(id)name type:(int64_t)type completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = SHSheetScrollingTest;
  v10 = [(SHSheetScrollingTest *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_type = type;
    v13 = [handlerCopy copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v13;
  }

  return v10;
}

- (SHSheetScrollingTest)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeInt64ForKey:@"type"];

  v7 = [(SHSheetScrollingTest *)self initWithName:v5 type:v6 completionHandler:0];
  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  name = [(SHSheetScrollingTest *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInt64:-[SHSheetScrollingTest type](self forKey:{"type"), @"type"}];
}

@end