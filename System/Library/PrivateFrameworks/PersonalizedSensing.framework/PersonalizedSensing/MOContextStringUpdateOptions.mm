@interface MOContextStringUpdateOptions
- (MOContextStringUpdateOptions)init;
- (MOContextStringUpdateOptions)initWithAppendMusicString:(BOOL)string;
- (MOContextStringUpdateOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MOContextStringUpdateOptions

- (MOContextStringUpdateOptions)init
{
  v3.receiver = self;
  v3.super_class = MOContextStringUpdateOptions;
  return [(MOContextStringUpdateOptions *)&v3 init];
}

- (MOContextStringUpdateOptions)initWithAppendMusicString:(BOOL)string
{
  v5.receiver = self;
  v5.super_class = MOContextStringUpdateOptions;
  result = [(MOContextStringUpdateOptions *)&v5 init];
  if (result)
  {
    result->_appendMusicString = string;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextStringUpdateOptions alloc];
  appendMusicString = [(MOContextStringUpdateOptions *)self appendMusicString];

  return [(MOContextStringUpdateOptions *)v4 initWithAppendMusicString:appendMusicString];
}

- (MOContextStringUpdateOptions)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"appendMusicString"];

  return [(MOContextStringUpdateOptions *)self initWithAppendMusicString:v4];
}

@end