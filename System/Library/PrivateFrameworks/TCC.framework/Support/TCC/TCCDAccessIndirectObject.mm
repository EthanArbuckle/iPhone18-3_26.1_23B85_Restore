@interface TCCDAccessIndirectObject
+ (id)unusedIndirectObject;
- (TCCDAccessIndirectObject)initWithType:(int64_t)type;
- (id)description;
@end

@implementation TCCDAccessIndirectObject

+ (id)unusedIndirectObject
{
  if (qword_1000C1098 != -1)
  {
    sub_100028A4C();
  }

  v3 = qword_1000C10A0;

  return v3;
}

- (TCCDAccessIndirectObject)initWithType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = TCCDAccessIndirectObject;
  v4 = [(TCCDAccessIndirectObject *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TCCDAccessIndirectObject *)v4 setType:type];
  }

  return v5;
}

- (id)description
{
  if ([(TCCDAccessIndirectObject *)self type])
  {
    return @"<Unknown>";
  }

  else
  {
    return @"Unused";
  }
}

@end