@interface SHSheetScrollingTest
- (SHSheetScrollingTest)initWithBSXPCCoder:(id)a3;
- (SHSheetScrollingTest)initWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SHSheetScrollingTest

- (SHSheetScrollingTest)initWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = SHSheetScrollingTest;
  v10 = [(SHSheetScrollingTest *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_type = a4;
    v13 = [v9 copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v13;
  }

  return v10;
}

- (SHSheetScrollingTest)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeInt64ForKey:@"type"];

  v7 = [(SHSheetScrollingTest *)self initWithName:v5 type:v6 completionHandler:0];
  return v7;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5 = a3;
  v4 = [(SHSheetScrollingTest *)self name];
  [v5 encodeObject:v4 forKey:@"name"];

  [v5 encodeInt64:-[SHSheetScrollingTest type](self forKey:{"type"), @"type"}];
}

@end