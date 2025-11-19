@interface TISCTextRunRequest
+ (id)textRunRequestWithStrings:(id)a3 color:(CGColor *)a4 maxFontSize:(double)a5 minFontSize:(double)a6 allowTruncation:(BOOL)a7 truncationSentinel:(id)a8 widthGroup:(unint64_t)a9;
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

+ (id)textRunRequestWithStrings:(id)a3 color:(CGColor *)a4 maxFontSize:(double)a5 minFontSize:(double)a6 allowTruncation:(BOOL)a7 truncationSentinel:(id)a8 widthGroup:(unint64_t)a9
{
  v15 = a3;
  v16 = a8;
  v17 = objc_opt_new();
  v18 = *(v17 + 8);
  *(v17 + 8) = v15;
  v19 = v15;

  *(v17 + 16) = CGColorRetain(a4);
  *(v17 + 24) = a5;
  *(v17 + 32) = a6;
  *(v17 + 40) = a7;
  v20 = [v16 copy];

  v21 = *(v17 + 48);
  *(v17 + 48) = v20;

  *(v17 + 56) = a9;

  return v17;
}

@end