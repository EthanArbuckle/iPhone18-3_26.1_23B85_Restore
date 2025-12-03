@interface TISCTextRunRequest
+ (id)textRunRequestWithStrings:(id)strings color:(CGColor *)color maxFontSize:(double)size minFontSize:(double)fontSize allowTruncation:(BOOL)truncation truncationSentinel:(id)sentinel widthGroup:(unint64_t)group;
- (void)dealloc;
@end

@implementation TISCTextRunRequest

- (void)dealloc
{
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = TISCTextRunRequest;
  [(TISCTextRunRequest *)&v3 dealloc];
}

+ (id)textRunRequestWithStrings:(id)strings color:(CGColor *)color maxFontSize:(double)size minFontSize:(double)fontSize allowTruncation:(BOOL)truncation truncationSentinel:(id)sentinel widthGroup:(unint64_t)group
{
  stringsCopy = strings;
  sentinelCopy = sentinel;
  v17 = objc_opt_new();
  v18 = *(v17 + 8);
  *(v17 + 8) = stringsCopy;
  v19 = stringsCopy;

  *(v17 + 16) = CGColorRetain(color);
  *(v17 + 24) = size;
  *(v17 + 32) = fontSize;
  *(v17 + 40) = truncation;
  v20 = [sentinelCopy copy];

  v21 = *(v17 + 48);
  *(v17 + 48) = v20;

  *(v17 + 56) = group;

  return v17;
}

@end