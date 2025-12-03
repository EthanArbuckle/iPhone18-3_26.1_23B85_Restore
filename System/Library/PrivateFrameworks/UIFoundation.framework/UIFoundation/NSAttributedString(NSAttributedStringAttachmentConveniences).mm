@interface NSAttributedString(NSAttributedStringAttachmentConveniences)
+ (id)attributedStringWithAttachment:()NSAttributedStringAttachmentConveniences;
+ (id)attributedStringWithAttachment:()NSAttributedStringAttachmentConveniences attributes:;
- (uint64_t)initWithAttachment:()NSAttributedStringAttachmentConveniences attributes:;
@end

@implementation NSAttributedString(NSAttributedStringAttachmentConveniences)

- (uint64_t)initWithAttachment:()NSAttributedStringAttachmentConveniences attributes:
{
  v6 = [a4 mutableCopy];
  _sharedAttachmentString = [MEMORY[0x1E696AAB0] _sharedAttachmentString];
  [v6 setObject:a3 forKeyedSubscript:@"NSAttachment"];
  v8 = [self initWithString:_sharedAttachmentString attributes:v6];

  return v8;
}

+ (id)attributedStringWithAttachment:()NSAttributedStringAttachmentConveniences
{
  if (attributedStringWithAttachment__onceToken != -1)
  {
    +[NSAttributedString(NSAttributedStringAttachmentConveniences) attributedStringWithAttachment:];
  }

  if (attributedStringWithAttachment__useInitWithAttachment == 1)
  {
    v5 = [self alloc];
    v6 = [v5 initWithAttachment:a3 attributes:MEMORY[0x1E695E0F8]];
  }

  else
  {
    _sharedAttachmentString = [MEMORY[0x1E696AAB0] _sharedAttachmentString];
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString:_sharedAttachmentString];
    [v6 addAttribute:@"NSAttachment" value:a3 range:{0, 1}];
  }

  return v6;
}

+ (id)attributedStringWithAttachment:()NSAttributedStringAttachmentConveniences attributes:
{
  v4 = [[self alloc] initWithAttachment:a3 attributes:a4];

  return v4;
}

@end