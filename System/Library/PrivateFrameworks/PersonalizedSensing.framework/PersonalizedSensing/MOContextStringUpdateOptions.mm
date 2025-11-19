@interface MOContextStringUpdateOptions
- (MOContextStringUpdateOptions)init;
- (MOContextStringUpdateOptions)initWithAppendMusicString:(BOOL)a3;
- (MOContextStringUpdateOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MOContextStringUpdateOptions

- (MOContextStringUpdateOptions)init
{
  v3.receiver = self;
  v3.super_class = MOContextStringUpdateOptions;
  return [(MOContextStringUpdateOptions *)&v3 init];
}

- (MOContextStringUpdateOptions)initWithAppendMusicString:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MOContextStringUpdateOptions;
  result = [(MOContextStringUpdateOptions *)&v5 init];
  if (result)
  {
    result->_appendMusicString = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextStringUpdateOptions alloc];
  v5 = [(MOContextStringUpdateOptions *)self appendMusicString];

  return [(MOContextStringUpdateOptions *)v4 initWithAppendMusicString:v5];
}

- (MOContextStringUpdateOptions)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"appendMusicString"];

  return [(MOContextStringUpdateOptions *)self initWithAppendMusicString:v4];
}

@end