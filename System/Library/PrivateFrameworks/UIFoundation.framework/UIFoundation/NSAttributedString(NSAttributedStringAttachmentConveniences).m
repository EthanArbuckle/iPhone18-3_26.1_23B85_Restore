@interface NSAttributedString(NSAttributedStringAttachmentConveniences)
+ (id)attributedStringWithAttachment:()NSAttributedStringAttachmentConveniences;
+ (id)attributedStringWithAttachment:()NSAttributedStringAttachmentConveniences attributes:;
- (uint64_t)initWithAttachment:()NSAttributedStringAttachmentConveniences attributes:;
@end

@implementation NSAttributedString(NSAttributedStringAttachmentConveniences)

- (uint64_t)initWithAttachment:()NSAttributedStringAttachmentConveniences attributes:
{
  v6 = [a4 mutableCopy];
  v7 = [MEMORY[0x1E696AAB0] _sharedAttachmentString];
  [v6 setObject:a3 forKeyedSubscript:@"NSAttachment"];
  v8 = [a1 initWithString:v7 attributes:v6];

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
    v5 = [a1 alloc];
    v6 = [v5 initWithAttachment:a3 attributes:MEMORY[0x1E695E0F8]];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAB0] _sharedAttachmentString];
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString:v7];
    [v6 addAttribute:@"NSAttachment" value:a3 range:{0, 1}];
  }

  return v6;
}

+ (id)attributedStringWithAttachment:()NSAttributedStringAttachmentConveniences attributes:
{
  v4 = [[a1 alloc] initWithAttachment:a3 attributes:a4];

  return v4;
}

@end